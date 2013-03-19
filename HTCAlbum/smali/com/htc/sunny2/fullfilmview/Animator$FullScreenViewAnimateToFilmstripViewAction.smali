.class Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenViewAnimateToFilmstripViewAction"
.end annotation


# instance fields
.field private mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field private mPastFrames:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x41f0

    const/high16 v5, 0x3f80

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    const/4 v1, 0x0

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    if-lez v2, :cond_2

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$402(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    :goto_0
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$400(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v2

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_3

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$400(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v2

    div-float/2addr v2, v6

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F
    invoke-static {p1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$502(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    :goto_1
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F
    invoke-static {p1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$602(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v2

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$400(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v3

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$400(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v4

    invoke-static {v2, v3, v4, v5}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    :cond_1
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v3

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$400(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->initSpecialSpacingLayout()V

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v2

    div-float/2addr v2, v6

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacingDifference:F
    invoke-static {p1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$702(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    return-void

    :cond_2
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$402(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    goto/16 :goto_0

    :cond_3
    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$400(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v2

    sub-float v2, v5, v2

    neg-float v2, v2

    div-float/2addr v2, v6

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F
    invoke-static {p1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$502(Lcom/htc/sunny2/fullfilmview/Animator;F)F

    goto :goto_1
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setStartAnimationChildIndex(I)V

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 10

    const/16 v9, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/high16 v7, 0x3f80

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$400(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$500(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float v0, v4, v5

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$500(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_2

    cmpl-float v4, v0, v7

    if-lez v4, :cond_2

    const/high16 v0, 0x3f80

    :cond_0
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    if-lt v4, v9, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v4

    int-to-float v1, v4

    :goto_1
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSceneNode()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v4

    invoke-static {v4, v0, v0, v7}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    :cond_1
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    if-lt v4, v9, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->cacheSpecialSpecialSpacing()V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->deCacheSpecialSpacing()V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setStartAnimationChildIndex(I)V

    :goto_2
    return v2

    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$500(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_0

    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    const/high16 v0, 0x3f80

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mSpacingDifference:F
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$700(Lcom/htc/sunny2/fullfilmview/Animator;)F

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->cacheSpecialSpecialSpacing()V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    div-float v5, v1, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSpecialSpacing(I)V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->mPastFrames:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    :cond_5
    move v2, v3

    goto :goto_2
.end method
