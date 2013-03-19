.class public abstract Lcom/htc/sunny2/slideshow/SlideAnimator;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "SlideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Ljava/lang/String; = "KA>>> Animator "

.field private static final LTAG:Ljava/lang/String; = "SlideAnimator"

.field public static final STATUS_END:I = 0x4

.field public static final STATUS_LATEST:I = 0x6

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PAUSE:I = 0x5

.field public static final STATUS_PHASE_IN:I = 0x1

.field public static final STATUS_PHASE_OUT:I = 0x3

.field public static final STATUS_SLIDE:I = 0x2


# instance fields
.field private bIsPause:Z

.field private bKeppScrenn:Z

.field public mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

.field private mFlagLatest:Z

.field private mForecePhaseOut:Z

.field public mIndex:I

.field public mPlayStatus:I

.field public mTempPlayStatus:I

.field private mTimeStartPhaseOut:J

.field private mainDuration:I

.field private phaseInDuration:I

.field private phaseOutDuration:I

.field private scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

.field protected sunnyImageTexture:I

.field protected sunnySprite:I

.field private timePause:J

.field protected viewportHeight:F

.field protected viewportWidth:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnyImageTexture:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportWidth:F

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportHeight:F

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTempPlayStatus:I

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bKeppScrenn:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bIsPause:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    iput-wide v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->timePause:J

    iput-wide v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTimeStartPhaseOut:J

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnyImageTexture:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportWidth:F

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportHeight:F

    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bKeppScrenn:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bIsPause:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->timePause:J

    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTempPlayStatus:I

    return-void
.end method

.method public endAnimator()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    if-ne v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "SlideAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> Animator Animator["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: endAnimator End"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->resumeAnimator()V

    :cond_1
    iput-boolean v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTimeStartPhaseOut:J

    goto :goto_0
.end method

.method public getAnimatorIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    return v0
.end method

.method public getAnimatorStatus()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    return v0
.end method

.method public getSprite()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    return v0
.end method

.method public init(IIFF)Z
    .locals 1

    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnyImageTexture:I

    iput p3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportWidth:F

    iput p4, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportHeight:F

    const/4 v0, 0x1

    return v0
.end method

.method public onAddedToScene(Lcom/htc/sunny2/slideshow/SlideshowScene;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "SlideAnimator"

    const-string v2, "onAddedToScene() NG - null scene"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->deinit()V

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "SlideAnimator"

    const-string v2, "onAddedToScene() NG - null sprite"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onRemovedFromScene()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnyImageTexture:I

    invoke-static {v1, v0, v0, v2}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTexture(IIII)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract onAnimatePhaseInTransition(FF)V
.end method

.method public abstract onAnimatePhaseOutTransition(FF)V
.end method

.method public abstract onAnimateSlide(FF)V
.end method

.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11

    iget-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bIsPause:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    int-to-long v9, v9

    add-long v0, v7, v9

    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    int-to-long v7, v7

    add-long v4, v0, v7

    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    int-to-long v7, v7

    add-long v2, v4, v7

    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    iget v8, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    add-int/2addr v7, v8

    int-to-float v6, v7

    iget-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    :cond_1
    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    sub-long v7, p2, v7

    long-to-float v7, v7

    div-float/2addr v7, v6

    iget-wide v8, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTimeStartPhaseOut:J

    sub-long v8, p2, v8

    long-to-float v8, v8

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onAnimatePhaseOutTransition(FF)V

    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTimeStartPhaseOut:J

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    cmp-long v7, p2, v7

    if-gez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mForecePhaseOut:Z

    const/4 v7, 0x4

    iput v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    const-string v7, "SlideAnimator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KA>>> Animator Animator["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: onDoActionIRT: Force End"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    cmp-long v7, p2, v0

    if-gez v7, :cond_4

    const/4 v7, 0x1

    iput v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    sub-long v7, p2, v7

    long-to-float v7, v7

    div-float/2addr v7, v6

    iget-wide v8, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    sub-long v8, p2, v8

    long-to-float v8, v8

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onAnimatePhaseInTransition(FF)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_4
    cmp-long v7, p2, v4

    if-gez v7, :cond_5

    const/4 v7, 0x2

    iput v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    sub-long v7, p2, v7

    long-to-float v7, v7

    div-float/2addr v7, v6

    sub-long v8, p2, v0

    long-to-float v8, v8

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onAnimateSlide(FF)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_5
    cmp-long v7, p2, v2

    if-gez v7, :cond_8

    iget-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    if-eqz v7, :cond_7

    const-string v7, "SlideAnimator"

    const-string v8, "[SlideAnimator][onDoActionIRT]: Latest 1, DoPause !"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    iget-object v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    const/4 v8, 0x4

    invoke-interface {v7, p0, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;->onAnimatorStatusChange(Lcom/htc/sunny2/slideshow/SlideAnimator;I)V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->pauseAnimator()V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x3

    iput v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    iget-wide v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    sub-long v7, p2, v7

    long-to-float v7, v7

    div-float/2addr v7, v6

    sub-long v8, p2, v4

    long-to-float v8, v8

    iget v9, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onAnimatePhaseOutTransition(FF)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    iget-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    if-eqz v7, :cond_a

    const-string v7, "SlideAnimator"

    const-string v8, "[SlideAnimator][onDoActionIRT]: Latest 2, DoPause !"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    iget-object v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    const/4 v8, 0x4

    invoke-interface {v7, p0, v8}, Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;->onAnimatorStatusChange(Lcom/htc/sunny2/slideshow/SlideAnimator;I)V

    :cond_9
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->pauseAnimator()V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x4

    iput v7, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onRemovedFromScene()V
    .locals 3

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bKeppScrenn:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    invoke-static {v0, v1, v1, v1}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTexture(IIII)Z

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bKeppScrenn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    invoke-static {v0, v2, v2, v2}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    :cond_1
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    return-void
.end method

.method public onRemovedIRT()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iget-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bKeppScrenn:Z

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/slideshow/SlideshowScene;->onSlideFinish(Lcom/htc/sunny2/slideshow/SlideAnimator;Z)V

    return-void
.end method

.method public pauseAnimator()V
    .locals 4

    const/4 v3, 0x5

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    if-ne v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "SlideAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KA>>> Animator Animator["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: pauseAnimator()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bIsPause:Z

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTempPlayStatus:I

    iput v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->timePause:J

    goto :goto_0
.end method

.method public abstract recycle()V
.end method

.method public resumeAnimator()V
    .locals 6

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "SlideAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> Animator Animator["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: resumeAnimator()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->bIsPause:Z

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mTempPlayStatus:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mPlayStatus:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->timePause:J

    sub-long v0, v2, v4

    iget-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->firstFrameTimeMillis:J

    goto :goto_0
.end method

.method public setDurations(III)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseInDuration:I

    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mainDuration:I

    iput p3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->phaseOutDuration:I

    return-void
.end method

.method public setImageAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetGroupAlpha(IF)V

    return-void
.end method

.method public setImageCenterPosition(FF)V
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetPosition(IFFF)V

    return-void
.end method

.method public setImageSize(FF)V
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->sunnySprite:I

    const/high16 v1, 0x3f80

    invoke-static {v0, p1, p2, v1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    return-void
.end method

.method public setLatest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mFlagLatest:Z

    return-void
.end method

.method public setListener(Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->mAnimatorListener:Lcom/htc/sunny2/slideshow/SlideAnimator$AnimatorListener;

    goto :goto_0
.end method
