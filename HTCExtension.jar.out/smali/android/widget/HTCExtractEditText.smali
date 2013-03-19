.class public Landroid/widget/HTCExtractEditText;
.super Landroid/inputmethodservice/ExtractEditText;
.source "HtcEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HTCExtractEditText$ScaleDimDrawable;
    }
.end annotation


# static fields
.field private static final DISABLE_ALPHA:F = 0.4f

.field private static final DONW_DURATION:I = 0x12c

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field public static final MODE_BRIGHT_BACKGROUND:I = 0x0

.field public static final MODE_BRIGHT_FULL_BACKGROUND:I = 0x2

.field public static final MODE_DARK_BACKGROUND:I = 0x1

.field private static final NORMAL_ALPHA:F = 1.0f


# instance fields
.field private BRIGHT_PADDING_BOTTOM:I

.field private BRIGHT_PADDING_TOP:I

.field private DARK_PADDING_BOTTOM:I

.field private DARK_PADDING_TOP:I

.field private mBackground:Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingLeft:I

.field private mDefaultPaddingRight:I

.field private mDefaultPaddingTop:I

.field private mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDownInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mDrawableAlpha:I

.field private mDrawableDisableAlpha:I

.field private mInit:Z

.field private mIsDown:Z

.field private mIsDownAnimating:Z

.field private mIsMove:Z

.field private mIsUserSetAlpha:Z

.field private mMode:I

.field private mTouchSlop:I

.field private mUserPadding:I

.field private mUserPaddingBottom:I

.field private mUserPaddingLeft:I

.field private mUserPaddingRight:I

.field private mUserPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;)V

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z

    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I

    const/16 v0, 0x66

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    const/16 v0, 0xa

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    const/16 v0, 0xc

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HTCExtractEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z

    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I

    const/16 v0, 0x66

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    const/16 v0, 0xa

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    const/16 v0, 0xc

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    invoke-direct {p0, p1, p2}, Landroid/widget/HTCExtractEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z

    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I

    const/16 v0, 0x66

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    const/16 v0, 0xa

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    const/16 v0, 0xc

    iput v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    invoke-direct {p0, p1, p2}, Landroid/widget/HTCExtractEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/HTCExtractEditText;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/HTCExtractEditText;->onDownAnimationStart()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/HTCExtractEditText;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/HTCExtractEditText;->onDownAnimationEnd()V

    return-void
.end method

.method static synthetic access$1002(Landroid/widget/HTCExtractEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/HTCExtractEditText;I)I
    .locals 0

    iput p1, p0, Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/HTCExtractEditText;I)I
    .locals 0

    iput p1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    return p1
.end method

.method static synthetic access$400(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    return v0
.end method

.method static synthetic access$502(Landroid/widget/HTCExtractEditText;I)I
    .locals 0

    iput p1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/HTCExtractEditText;)I
    .locals 1

    iget v0, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/HTCExtractEditText;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_1

    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v4, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/htc/R$styleable;->HtcAnimationButtonMode:[I

    invoke-virtual {p1, p2, v4, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/HTCExtractEditText;->setUpDefaultPadding(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->setTextCursorDrawableToNull()V

    iget v4, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    invoke-virtual {p0, v4}, Landroid/widget/HTCExtractEditText;->setMode(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Landroid/widget/HTCExtractEditText;->mTouchSlop:I

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownInterpolator:Landroid/view/animation/LinearInterpolator;

    const-string v4, "drawableAlpha"

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Landroid/widget/HTCExtractEditText;->mDownInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    iget-object v6, p0, Landroid/widget/HTCExtractEditText;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/widget/HTCExtractEditText$1;

    invoke-direct {v5, p0}, Landroid/widget/HTCExtractEditText$1;-><init>(Landroid/widget/HTCExtractEditText;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/16 v4, 0x5dd

    const-string v5, "AC_TEXT_VIEW_PAD_IN"

    invoke-static {v8, p0, v4, v5}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onDownAnimationEnd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_0
    return-void
.end method

.method private onDownAnimationStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    :cond_0
    return-void
.end method

.method private setUpDefaultPadding(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x140

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x5

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    iget v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v1, v2, :cond_0

    iput v4, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    const/16 v1, 0x8

    iput v1, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    const/16 v1, 0xa

    iput v1, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    const/16 v1, 0xc

    iput v1, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    :goto_0
    iget v1, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    iget v1, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    return-void

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v6, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v1, v6, :cond_2

    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    iput v3, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    iput v4, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    iput v5, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    goto :goto_0

    :cond_2
    iput v3, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I

    iput v5, p0, Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I

    const/16 v1, 0x9

    iput v1, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I

    const/16 v1, 0xb

    iput v1, p0, Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I

    goto :goto_0
.end method

.method private startDownAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startMoveAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->invalidate()V

    return-void
.end method

.method private startUpAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDown:Z

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->invalidate()V

    return-void
.end method


# virtual methods
.method onDownAnimationCancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsDownAnimating:Z

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    invoke-direct {p0}, Landroid/widget/HTCExtractEditText;->startDownAnimation()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

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
    iget-boolean v3, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Landroid/widget/HTCExtractEditText;->startUpAnimation()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mTouchSlop:I

    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    :cond_4
    iput-boolean v5, p0, Landroid/widget/HTCExtractEditText;->mIsMove:Z

    invoke-direct {p0}, Landroid/widget/HTCExtractEditText;->startMoveAnimation()V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You should not setBackground to HtcEditText"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setDrawableAlpha(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mBackground:Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    invoke-virtual {v0}, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->getMutiplyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    check-cast v0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    invoke-virtual {v0}, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->setDisableAlpha()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    return-void

    :cond_1
    check-cast v0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    invoke-virtual {v0}, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->setEnableAlpha()V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    iput p1, p0, Landroid/widget/HTCExtractEditText;->mMode:I

    new-instance v0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;-><init>(Landroid/widget/HTCExtractEditText;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HTCExtractEditText;->mBackground:Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mBackground:Landroid/widget/HTCExtractEditText$ScaleDimDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/HTCExtractEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/HTCExtractEditText;->setEnabled(Z)V

    :cond_0
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    iget v1, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    iget v2, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    iget v3, p0, Landroid/widget/HTCExtractEditText;->mUserPadding:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/inputmethodservice/ExtractEditText;->setPadding(IIII)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    return-void

    :cond_2
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    if-gez v0, :cond_3

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    if-gez v0, :cond_3

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    if-gez v0, :cond_3

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    if-ltz v0, :cond_1

    :cond_3
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    :goto_1
    iget v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    if-ltz v1, :cond_5

    iget v1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    :goto_2
    iget v2, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    if-ltz v2, :cond_6

    iget v2, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    :goto_3
    iget v3, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    if-ltz v3, :cond_7

    iget v3, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    :goto_4
    invoke-super {p0, v0, v1, v2, v3}, Landroid/inputmethodservice/ExtractEditText;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I

    goto :goto_1

    :cond_5
    iget v1, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I

    goto :goto_2

    :cond_6
    iget v2, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I

    goto :goto_3

    :cond_7
    iget v3, p0, Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I

    goto :goto_4
.end method

.method public setPadding(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setPadding(IIII)V

    iget-boolean v0, p0, Landroid/widget/HTCExtractEditText;->mInit:Z

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingLeft:I

    iput p2, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingTop:I

    iput p3, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingRight:I

    iput p4, p0, Landroid/widget/HTCExtractEditText;->mUserPaddingBottom:I

    :cond_0
    return-void
.end method
