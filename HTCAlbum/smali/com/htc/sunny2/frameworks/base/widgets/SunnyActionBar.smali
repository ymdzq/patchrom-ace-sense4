.class public Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;
.super Ljava/lang/Object;
.source "SunnyActionBar.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;


# static fields
.field private static final EFFECTIVE_GESTURE_RATIO:D = 0.2

.field private static final LOG_TAG:Ljava/lang/String; = "SunnyActionBar"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

.field private mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

.field private mActionBarText:Lcom/htc/widget/ActionBarText;

.field private mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHeight:D

.field private mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

.field private mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

.field private mProgressLoadingState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/ActionBar;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    iput-object p3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    invoke-virtual {p2}, Landroid/app/ActionBar;->hide()V

    new-instance v0, Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, p3, :cond_1

    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v4}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, p3, :cond_0

    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p1, v3}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v4}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v0, p1, p2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p1}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/widget/ActionBarDropDown;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarClicked(Landroid/view/View;)V

    return-void
.end method

.method public static actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private initGestureDetector(Landroid/app/Activity;)V
    .locals 6

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$2;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$2;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v3, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$3;

    invoke-direct {v3, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$3;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v3, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$4;

    invoke-direct {v3, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$4;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public static isCarModeActionBarFling(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const-string v6, "SunnyActionBar"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "[isCarModeActionBarFling] actionBar = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    const/4 v8, 0x2

    const-string v9, ", startEvent = "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p1, v7, v8

    const/4 v8, 0x4

    const-string v9, ", endEvent = "

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v2, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->gestureRegion()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    const/4 v6, 0x0

    cmpl-float v6, p4, v6

    if-lez v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private onActionBarClicked(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method private onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public dismissDropList()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    :cond_0
    return-void
.end method

.method public enableHTCLandscape(Z)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    const-string v0, "SunnyActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyActionBar][enableHTCLandscape]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enableSearchMode(Landroid/content/Context;Z)V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/widget/ActionBarSearch;

    invoke-direct {v1, p1}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->switchContainer()V

    :cond_1
    return-void
.end method

.method public gestureRegion()D
    .locals 2

    iget-wide v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    return-wide v0
.end method

.method public getActionBarContainer()Lcom/htc/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    return-object v0
.end method

.method public getActionBarText()Lcom/htc/widget/ActionBarText;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getVisibility()I
    .locals 4

    const/16 v0, 0x8

    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v2, v3, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v2, :cond_1

    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v2, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onActionBarTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public searchPane()Lcom/htc/widget/ActionBarSearch;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    return-object v0
.end method

.method public setBackUpEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    goto :goto_0
.end method

.method public setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setDropdownListContent(Landroid/widget/BaseAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public setGestureMonitorEnabled(ZLandroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_1

    :cond_0
    iput-object p3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    invoke-direct {p0, p2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->initGestureDetector(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->setTransparentEnabled(Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setTransparentEnabled(Z)V

    goto :goto_0
.end method

.method public setPrimaryText(I)V
    .locals 2

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    goto :goto_0
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProgressVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryText(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    goto :goto_0
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTopMargin(Landroid/app/Activity;I)V
    .locals 8

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-le v1, v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v5, v4, Lcom/htc/widget/ActionBarContainer;

    if-eqz v5, :cond_0

    const-string v5, "SunnyActionBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SunnyActionBar][setTopMargin]: found ActionBarContainer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v4, :cond_3

    const-string v5, "SunnyActionBar"

    const-string v6, "[HTCAlbum][SunnyActionBar][setTopMargin]: can not find ActionBarContainer..."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, p2, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setShowHideAnimationEnabled(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setShowHideAnimationEnabled(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method
