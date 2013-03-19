.class public Lcom/htc/album/PaintManager/HtcPaintManager;
.super Ljava/lang/Object;
.source "HtcPaintManager.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/PaintManager/HtcPaintManager$1;,
        Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;,
        Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;
    }
.end annotation


# static fields
.field public static final EXTENSION_PAINTCACHE:Ljava/lang/String; = ".png"

.field public static final EXTENSION_PAINTDATA:Ljava/lang/String; = ".data"

.field public static final FOLDER_PATH_PAINTCACHE:Ljava/lang/String; = "/mnt/sdcard/.gallery_paint/paint/"

.field public static final FOLDER_PATH_PAINTDATACACHE:Ljava/lang/String; = "/mnt/sdcard/.gallery_paint/data/"

.field public static final FOLDER_PATH_STROKE:Ljava/lang/String; = "/mnt/sdcard/.gallery_paint/stroke/"

.field private static final INVALID_STROKEID:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final PAINTING_VIEW_TRANSLUCENT_ALPHA:I = 0x33

.field public static final PAINTING_VIEW_VISIBLE:I = 0xff


# instance fields
.field private mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

.field private mContext:Landroid/content/Context;

.field private mCurrentPaintGroup:I

.field private mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

.field private mIsEnablePenMenu:Z

.field private mIsPenEnable:Z

.field private mListenerPenAction:Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

.field private mListenerStroke:Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

.field private mMainViewLayout:Landroid/widget/RelativeLayout;

.field private mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

.field private mPaintAlpha:F

.field private mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

.field private mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

.field private mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

.field private mStrokeProps:Lcom/htc/painting/engine/StrokeProperties;

.field private mUIState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerPenAction:Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mStrokeProps:Lcom/htc/painting/engine/StrokeProperties;

    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerStroke:Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    new-instance v0, Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/FileSerializeDAO;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    const/high16 v0, 0x437f

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mIsEnablePenMenu:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mIsPenEnable:Z

    iput-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x4ee8

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mUIState:I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][HtcPaintManager]:... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPaintings;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/painting/engine/HtcPaintingView;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    return-object v0
.end method

.method public static disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    move-object v2, p1

    :cond_2
    if-eqz v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v3, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "[HTCAlbum][HtcPaintManager][disableSketcher]: "

    aput-object v6, v4, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v7, p2, :cond_3

    invoke-static {v1}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->getExtraFlags(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->setExtraFlags(Landroid/view/WindowManager$LayoutParams;I)V

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->getExtraFlags(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    invoke-static {v1, v0}, Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;->setExtraFlags(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_1
.end method


# virtual methods
.method public bindList(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v4}, Lcom/htc/album/PaintManager/Interface/IPaintings;->unInitPaintings()V

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v4}, Lcom/htc/album/PaintManager/Interface/IPaintings;->initPaintings()V

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v4, v0}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/PaintManager/PaintViewItem;

    new-array v1, v6, [I

    new-array v2, v6, [Lcom/htc/album/PaintManager/PaintViewPort3D;

    aput v0, v1, v5

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v4

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v5, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v4, v5}, Lcom/htc/painting/engine/HtcPaintingView;->init(Lcom/htc/painting/engine/AbsSerializeDAO;)V

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v1, v2}, Lcom/htc/painting/engine/HtcPaintingView;->requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/htc/painting/engine/HtcPaintingView;->setViewPortForStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Z

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v5, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerStroke:Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

    invoke-virtual {v4, v5}, Lcom/htc/painting/engine/HtcPaintingView;->setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    iget-object v5, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v5}, Lcom/htc/painting/penmenu15/PenMenu;->setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu15/PenMenu;->restoreSetting()V

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    iget-object v5, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v5}, Lcom/htc/album/PaintManager/PenEventDispatcher;->onCreate(Lcom/htc/painting/engine/HtcPaintingView;)V

    :cond_0
    return-void
.end method

.method public doPrepareNextViewPort(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 7

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-interface {v2, v3}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/PaintManager/PaintViewItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][doPrepareNextViewPort]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3D;->reset()V

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3D;->matrixbegin()V

    iget v2, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v3, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    iget v4, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v5, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    add-int/2addr v4, v5

    iget v5, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    iget v6, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/album/PaintManager/PaintViewPort3D;->initRectangle(IIII)V

    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewPort3D;->initRotation(F)V

    iget v2, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setScale(F)V

    iget v2, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v3, p2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setTranslation(II)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewPort3D;->matrixEnd(Z)V

    goto :goto_0
.end method

.method public doRequestForceSave(Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    if-eq v2, v3, :cond_1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-interface {v2, v3}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/PaintManager/PaintViewItem;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->isDirtyPaint()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroup(I)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][doRequestForceSave]: save: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroup(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doRotate(ILcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0

    return-void
.end method

.method public enablePaintView(Landroid/app/Activity;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne v2, p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/wrap/android/view/HtcWrapWindow;->enablePenLinstener(Landroid/view/Window;Z)Z

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, v2}, Lcom/htc/painting/engine/HtcPaintingView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/HtcPaintingView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/htc/wrap/android/view/HtcWrapWindow;->enablePenLinstener(Landroid/view/Window;Z)Z

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/HtcPaintingView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/HtcPaintingView;->setVisibility(I)V

    goto :goto_0
.end method

.method public enablePenMenu(Landroid/app/Activity;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mIsEnablePenMenu:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mIsEnablePenMenu:Z

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[HtcPaintManager][enablePenMenu]: "

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v4, p2, :cond_2

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/PenMenu;->setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerPenAction:Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/PenMenu;->setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v5}, Lcom/htc/painting/penmenu15/PenMenu;->setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v5}, Lcom/htc/painting/penmenu15/PenMenu;->setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintAlpha:F

    return v0
.end method

.method public getCurrentPaint()I
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    return v0
.end method

.method public getPaintLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPaintView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    return-object v0
.end method

.method public handlePenEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    invoke-virtual {v2, p1}, Lcom/htc/album/PaintManager/PenEventDispatcher;->dispatchPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public handlePenKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mIsEnablePenMenu:Z

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/painting/penmenu15/PenMenu;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public markPaintDirty()V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    iget v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-interface {v1, v2}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/PaintManager/Interface/IPaintable;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/album/PaintManager/Interface/IPaintable;->setDirtyPaint(Z)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onCreate]: begin "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/HtcPaintingView;

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    :cond_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/PenMenu;

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    :cond_2
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v0, :cond_3

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onCreate]: no paint view..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/htc/album/Customizable/CustFeatureItem;->enablePaintView(Z)V

    :cond_3
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v0, p0}, Lcom/htc/album/PaintManager/FileSerializeDAO;->setReroute(Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/FileSerializeDAO;->initialize()Z

    :cond_4
    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;-><init>(Lcom/htc/album/PaintManager/HtcPaintManager;Lcom/htc/album/PaintManager/HtcPaintManager$1;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerStroke:Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;-><init>(Lcom/htc/album/PaintManager/HtcPaintManager;Lcom/htc/album/PaintManager/HtcPaintManager$1;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerPenAction:Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

    new-instance v0, Lcom/htc/album/PaintManager/PenEventDispatcher;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/PenEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/painting/penmenu15/PenMenu;->hide(ZZ)V

    const/16 v0, 0x4ee9

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mUIState:I

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onCreate]: end "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onDestroy]: Begin "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mUIState:I

    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerStroke:Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;

    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mListenerPenAction:Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onDestroy]: destroy pen menu "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu15/PenMenu;->setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/PenMenu;->hide(ZZ)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu15/PenMenu;->setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/PenMenu;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPaintingView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPaintingView;->destroy()V

    :cond_1
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PenEventDispatcher;->onDestroy()V

    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenEventDispatcher:Lcom/htc/album/PaintManager/PenEventDispatcher;

    :cond_2
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IPaintings;->unInitPaintings()V

    :cond_3
    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onDestroy]: End "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMenuClosed()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/PenMenu;->onMenuClosed()V

    :cond_0
    return-void
.end method

.method public onMenuOpened()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/PenMenu;->onMenuOpened()V

    :cond_0
    return-void
.end method

.method public onPaintPartialStroke(II)V
    .locals 7

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v4, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/PaintManager/PaintViewItem;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewPort3D;->getIdentity()Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v5}, Lcom/htc/album/PaintManager/PaintViewItem;->setDirtyPaint(Z)V

    const/4 v0, 0x0

    if-nez p2, :cond_3

    invoke-virtual {p0, v1, v3, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->supplyPaintCacheBitmap(Lcom/htc/album/PaintManager/PaintViewItem;Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0, v1, v3, v5}, Lcom/htc/album/PaintManager/HtcPaintManager;->supplyPaintCacheBitmap(Lcom/htc/album/PaintManager/PaintViewItem;Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-nez p2, :cond_4

    sget-object v4, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][HtcPaintManager][onPaintPartialStroke]: redraw: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\tstrokeId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v0, p1, v3}, Lcom/htc/painting/engine/HtcPaintingView;->drawOnBitmap(Landroid/graphics/Bitmap;ILcom/htc/painting/engine/ViewPort;)V

    :goto_2
    invoke-virtual {v1, v0}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][HtcPaintManager][onPaintPartialStroke]: patial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\tstrokeId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v0, p1, p2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->drawOnBitmap(Landroid/graphics/Bitmap;IILcom/htc/painting/engine/ViewPort;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onPause]:... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/PenMenu;->saveSetting()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintManager][onResume]:... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected paintViewLoad(I)V
    .locals 0

    return-void
.end method

.method protected paintViewSave(I)V
    .locals 0

    return-void
.end method

.method public reRoutePaintSave(IZ)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v6, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v6, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v6, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/PaintManager/PaintViewItem;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->isDirtyPaint()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][HtcPaintManager][reRoutePaintSave]: skip1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v6, :cond_4

    :cond_3
    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][HtcPaintManager][reRoutePaintSave]: skip2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/htc/album/PaintManager/PaintViewPort3D;->getIdentity()Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    move-result-object v5

    if-nez v5, :cond_5

    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][HtcPaintManager][reRoutePaintSave]: skip3: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_5
    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][HtcPaintManager][reRoutePaintSave]: Begin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-ne v9, p2, :cond_8

    invoke-virtual {p0, v3, v5, v9}, Lcom/htc/album/PaintManager/HtcPaintManager;->supplyPaintCacheBitmap(Lcom/htc/album/PaintManager/PaintViewItem;Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-ne v9, v6, :cond_7

    :cond_6
    invoke-virtual {p0, v3, v5, v9}, Lcom/htc/album/PaintManager/HtcPaintManager;->supplyPaintCacheBitmap(Lcom/htc/album/PaintManager/PaintViewItem;Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_7
    iget-object v6, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v6, v2, p1, v5}, Lcom/htc/painting/engine/HtcPaintingView;->drawOnBitmap(Landroid/graphics/Bitmap;ILcom/htc/painting/engine/ViewPort;)V

    iget-object v6, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v6, p1, v2}, Lcom/htc/album/PaintManager/Interface/IPaintings;->paintCacheSave(ILandroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][HtcPaintManager][reRoutePaintSave]: End "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method public reRouteStrokeDelete(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v0, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->strokeCacheDelete(I)V

    goto :goto_0
.end method

.method public reRouteStrokeLoad(I)[B
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v0, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->strokeCacheLoad(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public reRouteStrokeSave(I[B)V
    .locals 5

    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][reRouteStrokeSave]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v2, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/PaintManager/Interface/IPaintable;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/album/PaintManager/Interface/IPaintable;->setDirtyPaint(Z)V

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v2, p1, p2}, Lcom/htc/album/PaintManager/Interface/IPaintings;->strokeCacheSave(I[B)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->reRoutePaintSave(IZ)Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/album/PaintManager/Interface/IPaintable;->setDirtyPaint(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][reRouteStrokeSave]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestViewStrokeGroup(I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v4, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][HtcPaintManager][requestViewStrokeGroup]: Begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    invoke-interface {v4, p1}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/PaintManager/PaintViewItem;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    new-array v1, v8, [I

    new-array v2, v8, [Lcom/htc/album/PaintManager/PaintViewPort3D;

    iget v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    aput v4, v1, v7

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v4

    aput-object v4, v2, v7

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v4, v1, v2}, Lcom/htc/painting/engine/HtcPaintingView;->requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z

    sget-object v4, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "[HTCAlbum][HtcPaintManager][requestViewStrokeGroup]: "

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, " : "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "\n[HTCAlbum][HtcPaintManager][requestViewStrokeGroup]: End"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPaintDrawListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    goto :goto_0
.end method

.method public setPaintUpdateListener(Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->setListenerPaintUpdate(Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;)V

    goto :goto_0
.end method

.method public setPenAlpha(ILcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayAlpha()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPaintLayerTransparencyIHT(II)V

    goto :goto_0
.end method

.method public setPenMenuActionNotify(Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    goto :goto_0
.end method

.method public show(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mMainViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showPaintingView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->enablePainting(Z)V

    :cond_0
    return-void
.end method

.method public showPenMenu(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne v1, p1, :cond_1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/PenMenu;->show(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPenMenu:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/PenMenu;->hide(ZZ)V

    goto :goto_0
.end method

.method public supplyPaintCacheBitmap(Lcom/htc/album/PaintManager/PaintViewItem;Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;Z)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p3, :cond_1

    :cond_0
    sget-object v1, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][HtcPaintManager][supplyPaintCacheBitmap]: new..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getHeight()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/htc/opensense2/album/util/BitmapUtil2;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    return-object v0
.end method

.method public updatePenableViewPortChange()V
    .locals 4

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;

    iget v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-interface {v1, v2}, Lcom/htc/album/PaintManager/Interface/IPaintings;->getPaintItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/PaintManager/PaintViewItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;->setPrepared(Z)V

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    iget v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->setViewPortForStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Z

    sget-object v1, Lcom/htc/album/PaintManager/HtcPaintManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][HtcPaintManager][updatePenableViewPortChange]: set change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
