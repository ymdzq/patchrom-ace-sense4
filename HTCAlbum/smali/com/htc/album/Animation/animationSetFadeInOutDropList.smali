.class public Lcom/htc/album/Animation/animationSetFadeInOutDropList;
.super Ljava/lang/Object;
.source "animationSetFadeInOutDropList.java"

# interfaces
.implements Lcom/htc/album/Animation/IAnimationSetControlBars;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "animationSetFadeInOutDropList"


# instance fields
.field private mEnableFooterRight:Z

.field private mIsTranslationAnim:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->mEnableFooterRight:Z

    iput-boolean v0, p0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->mIsTranslationAnim:Z

    iput-boolean p1, p0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->mEnableFooterRight:Z

    return-void
.end method

.method public static final create(Landroid/content/Context;Landroid/view/View;IZ)Landroid/view/animation/Animation;
    .locals 2

    new-instance v0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;

    invoke-direct {v0, p3}, Lcom/htc/album/Animation/animationSetFadeInOutDropList;-><init>(Z)V

    invoke-interface {v0, p0, p1, p2}, Lcom/htc/album/Animation/IAnimationSetControlBars;->createAnimation(Landroid/content/Context;Landroid/view/View;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createAnimation(Landroid/content/Context;Landroid/view/View;I)Landroid/view/animation/Animation;
    .locals 10

    const/4 v9, 0x2

    const/16 v8, 0x100

    const/high16 v7, 0x437f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x4c

    :cond_0
    const/16 v3, 0x10

    and-int/lit8 v4, p3, 0x10

    if-ne v3, v4, :cond_5

    and-int/lit8 v3, p3, 0x1

    if-ne v5, v3, :cond_3

    and-int/lit16 v3, p3, 0x100

    if-ne v8, v3, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->getDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0

    :cond_2
    iput-boolean v5, p0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->mIsTranslationAnim:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :cond_3
    and-int/lit8 v3, p3, 0x2

    if-ne v9, v3, :cond_1

    and-int/lit16 v3, p3, 0x100

    if-ne v8, v3, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_4
    iput-boolean v5, p0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->mIsTranslationAnim:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v2

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :cond_5
    const/16 v3, 0x20

    and-int/lit8 v4, p3, 0x20

    if-ne v3, v4, :cond_1

    and-int/lit8 v3, p3, 0x1

    if-ne v5, v3, :cond_9

    and-int/lit16 v3, p3, 0x100

    if-ne v8, v3, :cond_6

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_6
    iput-boolean v5, p0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->mIsTranslationAnim:Z

    iget-boolean v3, p0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->mEnableFooterRight:Z

    if-eqz v3, :cond_8

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_7

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v3, p3, 0x2

    if-ne v9, v3, :cond_1

    and-int/lit16 v3, p3, 0x100

    if-ne v8, v3, :cond_a

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_0

    :cond_a
    iput-boolean v5, p0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->mIsTranslationAnim:Z

    iget-boolean v3, p0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->mEnableFooterRight:Z

    if-eqz v3, :cond_c

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_b

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0
.end method

.method public getDuration()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->mIsTranslationAnim:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x12c

    :cond_0
    return v0
.end method
