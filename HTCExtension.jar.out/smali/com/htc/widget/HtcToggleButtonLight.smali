.class public Lcom/htc/widget/HtcToggleButtonLight;
.super Landroid/view/View;
.source "HtcToggleButtonLight.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;,
        Lcom/htc/widget/HtcToggleButtonLight$SavedState;,
        Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DISABLE_ALPHA:F = 0.4f

.field private static final DOWN_DURATION:I = 0x64

.field private static final DURATION:I = 0x64

.field private static final INDEX_DARK_BACKGROUND:I = 0x0

.field private static final INDEX_LIGHT_BACKGROUND:I = 0x3

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.9f

.field public static final MODE_BRIGHT_BACKGROUND:I = 0x0

.field public static final MODE_DARK_BACKGROUND:I = 0x1

.field private static final NORMAL_ALPHA:F = 1.0f

.field private static final NUMBER_BACKGROUND_DRAWABLE:I = 0x3

.field private static final NUMBER_MODE:I = 0x2

.field private static TOGGLE_OUTER_PADDING:I = 0x0

.field private static final UP_DURATION:I = 0x14


# instance fields
.field private mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

.field private mAllBackgroundResourceIds:[I

.field private mBroadcasting:Z

.field private mCenterX:I

.field private mChecked:Z

.field private mCheckedCenterX:I

.field private mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mDownAnimator:Landroid/animation/ObjectAnimator;

.field private mDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mIsMove:Z

.field private mIsSizeChanged:Z

.field private mMode:I

.field private mMultiplyColor:I

.field private mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mOffAnimator:Landroid/animation/ObjectAnimator;

.field private mOffAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mOnAnimator:Landroid/animation/ObjectAnimator;

.field private mOnAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;

.field private mOuterCenterX:I

.field private mOuterCenterY:I

.field private mOuterHeight:I

.field private mOuterWidth:I

.field private mOuterxOffset:I

.field private mOuteryOffset:I

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mPressHeight:I

.field private mPressWidth:I

.field private mPressxOffset:I

.field private mPressyOffset:I

.field private mRestxOffset:I

.field private mRestyOffset:I

.field private mToggleOuter:Landroid/graphics/drawable/Drawable;

.field private mTogglePress:Landroid/graphics/drawable/Drawable;

.field private mToggleRest:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I

.field private mUnCheckedCenterX:I

.field private mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mUpAnimator:Landroid/animation/ObjectAnimator;

.field private mUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    sput v0, Lcom/htc/widget/HtcToggleButtonLight;->TOGGLE_OUTER_PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x2010041

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMode:I

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mIsMove:Z

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mChecked:Z

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mBroadcasting:Z

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mIsSizeChanged:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcToggleButtonLight;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onOnAnimationStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onOnAnimationEnd()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onUpAnimationEnd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onUpAnimationCancel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcToggleButtonLight;)[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onOnAnimationCancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onOffAnimationStart()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onOffAnimationEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onOffAnimationCancel()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onDownAnimationStart()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onDownAnimationEnd()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onDownAnimationCancel()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcToggleButtonLight;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->onUpAnimationStart()V

    return-void
.end method

.method private checkBackgroundAssets(I)V
    .locals 5

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v1, 0x3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundResourceIds:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v1, 0x6

    const/4 v0, 0x3

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundResourceIds:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getDefaultSize(II)I
    .locals 3

    move v0, p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    move v0, p0

    goto :goto_0

    :sswitch_1
    move v0, p0

    goto :goto_0

    :sswitch_2
    move v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/16 v11, 0x5dd

    const/4 v10, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    new-array v7, v8, [I

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundResourceIds:[I

    new-array v7, v8, [Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v7, Lcom/htc/R$styleable;->HtcToggleButton:[I

    const v8, 0x2030095

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const v7, 0x20e0013

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/htc/widget/HtcToggleButtonLight;->TOGGLE_OUTER_PADDING:I

    const v7, 0x207000f

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->initBackgroundIdList(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMode:I

    const/4 v7, 0x5

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMultiplyColor:I

    iget v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMultiplyColor:I

    if-nez v7, :cond_0

    const v7, 0x2060003

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMultiplyColor:I

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    iget v8, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMultiplyColor:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    new-instance v7, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;-><init>(Lcom/htc/widget/HtcToggleButtonLight;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMode:I

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcToggleButtonLight;->setMode(I)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->setPressVisibility()V

    const-string v7, "TOGGLE_BTN_PRESS"

    invoke-static {v10, p0, v11, v7}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v7, "TOGGLE_BTN_UNPRESS"

    invoke-static {v10, p0, v11, v7}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v7, "TOGGLE_BTN_ON_OFF"

    invoke-static {v10, p0, v11, v7}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const-string v7, "TOGGLE_BTN_ON_OFF"

    invoke-static {v10, p0, v11, v7}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-void
.end method

.method private initAnimation()V
    .locals 8

    const-wide/16 v6, 0x64

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "centerX"

    new-array v1, v5, [I

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUnCheckedCenterX:I

    aput v2, v1, v3

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mCheckedCenterX:I

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v0, "centerX"

    new-array v1, v5, [I

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mCheckedCenterX:I

    aput v2, v1, v3

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUnCheckedCenterX:I

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v0, "scale"

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v0, "scale"

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/widget/HtcToggleButtonLight$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcToggleButtonLight$1;-><init>(Lcom/htc/widget/HtcToggleButtonLight;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/widget/HtcToggleButtonLight$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcToggleButtonLight$2;-><init>(Lcom/htc/widget/HtcToggleButtonLight;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/widget/HtcToggleButtonLight$3;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcToggleButtonLight$3;-><init>(Lcom/htc/widget/HtcToggleButtonLight;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/widget/HtcToggleButtonLight$4;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcToggleButtonLight$4;-><init>(Lcom/htc/widget/HtcToggleButtonLight;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initBackgroundIdList(Landroid/content/res/TypedArray;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundResourceIds:[I

    const v3, 0x2080288

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v4

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundResourceIds:[I

    const v3, 0x2080289

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v5

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundResourceIds:[I

    const v3, 0x208028a

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v6

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundResourceIds:[I

    const v3, 0x208028c

    invoke-virtual {p1, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v7

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundResourceIds:[I

    const v3, 0x208028d

    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v8

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundResourceIds:[I

    const/4 v3, 0x5

    const/4 v4, 0x5

    const v5, 0x208028e

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v3

    const/4 v1, 0x6

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDownAnimationCancel()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_0
    return-void
.end method

.method private onDownAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_0
    return-void
.end method

.method private onDownAnimationStart()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    :cond_0
    return-void
.end method

.method private onOffAnimationCancel()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_0
    return-void
.end method

.method private onOffAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_0
    return-void
.end method

.method private onOffAnimationStart()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    :cond_0
    return-void
.end method

.method private onOnAnimationCancel()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_0
    return-void
.end method

.method private onOnAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_0
    return-void
.end method

.method private onOnAnimationStart()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    :cond_0
    return-void
.end method

.method private onUpAnimationCancel()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_0
    return-void
.end method

.method private onUpAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_0
    return-void
.end method

.method private onUpAnimationStart()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    :cond_0
    return-void
.end method

.method private setDown()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private setPressVisibility()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method private setToggleBounds()V
    .locals 6

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterX:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterxOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterY:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuteryOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterX:I

    iget v4, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterY:I

    iget v5, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuteryOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterX:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressxOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterY:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressyOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterX:I

    iget v4, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterY:I

    iget v5, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressyOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mChecked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mCheckedCenterX:I

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mCenterX:I

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mCenterX:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mRestxOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterY:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mRestyOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mCenterX:I

    iget v4, p0, Lcom/htc/widget/HtcToggleButtonLight;->mRestxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterY:I

    iget v5, p0, Lcom/htc/widget/HtcToggleButtonLight;->mRestyOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUnCheckedCenterX:I

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mCenterX:I

    goto :goto_0
.end method

.method private setUp()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mIsSizeChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mIsSizeChanged:Z

    :cond_0
    return-void
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/htc/widget/HtcToggleButtonLight;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcToggleButtonLight$SavedState;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/htc/widget/HtcToggleButtonLight$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/htc/widget/HtcToggleButtonLight$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/widget/HtcToggleButtonLight$SavedState;->checked:Z

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mIsSizeChanged:Z

    shr-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterX:I

    shr-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterY:I

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mRestxOffset:I

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mRestyOffset:I

    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterX:I

    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterxOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mRestxOffset:I

    sub-int/2addr v0, v1

    sget v1, Lcom/htc/widget/HtcToggleButtonLight;->TOGGLE_OUTER_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mCheckedCenterX:I

    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterX:I

    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterxOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mRestxOffset:I

    add-int/2addr v0, v1

    sget v1, Lcom/htc/widget/HtcToggleButtonLight;->TOGGLE_OUTER_PADDING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mUnCheckedCenterX:I

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->setToggleBounds()V

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->initAnimation()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mIsMove:Z

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->setDown()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mIsMove:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->setUp()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mIsMove:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTouchSlop:I

    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    :cond_4
    iput-boolean v5, p0, Lcom/htc/widget/HtcToggleButtonLight;->mIsMove:Z

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->setUp()V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->toggle()V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method protected setCenterX(I)V
    .locals 1

    iput p1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mCenterX:I

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->setCenterX(I)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mIsSizeChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mChecked:Z

    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mBroadcasting:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mBroadcasting:Z

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;->onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V

    :cond_3
    iput-boolean v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mBroadcasting:Z

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setAlpha(F)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->checkBackgroundAssets(I)V

    iput p1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMode:I

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->setMode(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterWidth:I

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterHeight:I

    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterWidth:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterxOffset:I

    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterHeight:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuteryOffset:I

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressWidth:I

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressHeight:I

    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressWidth:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressxOffset:I

    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressHeight:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressyOffset:I

    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterHeight:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setMinimumHeight(I)V

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->setToggleBounds()V

    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButtonLight;->setPressVisibility()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->setMode(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method protected setScale(F)V
    .locals 7

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->setScaleXY(F)V

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPressHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight;->mTogglePress:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterX:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterY:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterX:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcToggleButtonLight;->mOuterCenterY:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->invalidate()V

    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButtonLight;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSkinResources(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/R$styleable;->HtcToggleButton:[I

    const v5, 0x2030095

    invoke-virtual {p1, v3, v4, v6, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x1

    const v4, 0x207000f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->initBackgroundIdList(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMultiplyColor:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMultiplyColor:I

    if-nez v3, :cond_2

    const v3, 0x2060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMultiplyColor:I

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMultiplyColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mMode:I

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setMode(I)V

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;

    const v4, 0x2040399

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->setTextOn(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/widget/HtcToggleButtonLight;->mToggleRest:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;

    const v4, 0x204039a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->setTextOff(Ljava/lang/String;)V

    goto :goto_0
.end method
