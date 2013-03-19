.class public Lcom/htc/fragment/widget/CarouselViewSwitcher;
.super Landroid/widget/FrameLayout;
.source "CarouselViewSwitcher.java"


# instance fields
.field private final animDuration:I

.field private animListener:Landroid/view/animation/Animation$AnimationListener;

.field private animationIn:Landroid/view/animation/TranslateAnimation;

.field private animationOut:Landroid/view/animation/TranslateAnimation;

.field private display:Landroid/view/Display;

.field private isPortrait:Z

.field private isPositive:Z

.field private negativeView:Landroid/view/View;

.field private positiveView:Landroid/view/View;

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->widgetSpace:I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animDuration:I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    new-instance v0, Lcom/htc/fragment/widget/CarouselViewSwitcher$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher$1;-><init>(Lcom/htc/fragment/widget/CarouselViewSwitcher;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->setOrientation()V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->setupLayoutParams()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/fragment/widget/CarouselViewSwitcher;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    return-object v0
.end method

.method private setOrientation()V
    .locals 3

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    sget-boolean v1, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupLayoutParams()V
    .locals 4

    const/4 v2, -0x1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->widgetSpace:I

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x205006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->widgetSpace:I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_1
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->widgetSpace:I

    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->widgetSpace:I

    goto :goto_1
.end method


# virtual methods
.method public addNegativeView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addPositiveView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->setOrientation()V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->setupLayoutParams()V

    return-void
.end method

.method switchPanelToNegative(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->switchPanelView(Z)V

    :cond_0
    return-void
.end method

.method switchPanelToPositive(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->switchPanelView(Z)V

    :cond_0
    return-void
.end method

.method public switchPanelView(Z)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/high16 v9, 0x3f80

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPositive:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V

    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v3, :cond_7

    move v6, v9

    :goto_3
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v0, :cond_8

    move v6, v4

    :goto_4
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPortrait:Z

    if-eqz v0, :cond_9

    move v10, v9

    :goto_5
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_7
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->negativeView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v0, :cond_c

    move v0, v12

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v1, :cond_d

    :goto_9
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v11

    goto/16 :goto_1

    :cond_6
    move v2, v9

    goto :goto_2

    :cond_7
    move v6, v4

    goto :goto_3

    :cond_8
    move v6, v9

    goto :goto_4

    :cond_9
    move v10, v4

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationIn:Landroid/view/animation/TranslateAnimation;

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->animationOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :cond_c
    move v0, v11

    goto :goto_8

    :cond_d
    move v11, v12

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->positiveView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselViewSwitcher;->isPositive:Z

    if-eqz v1, :cond_f

    const/16 v12, 0x8

    :cond_f
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
