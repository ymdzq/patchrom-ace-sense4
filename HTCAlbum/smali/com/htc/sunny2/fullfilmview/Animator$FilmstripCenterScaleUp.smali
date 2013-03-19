.class Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripCenterScaleUp"
.end annotation


# instance fields
.field private mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field private mPastFrames:I

.field private mScaleUpRatio:F

.field stopAnimation:Z

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x3fa66666

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mScaleUpRatio:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->stopAnimation:Z

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->stopAnimation:Z

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->stopAnimation:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->access$900(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 8

    const/16 v7, 0xf

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->stopAnimation:Z

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemScale()F

    move-result v1

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mScaleUpRatio:F

    sub-float/2addr v5, v6

    invoke-static {v4, v6, v5, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->AcEaseOut(IFFI)F

    move-result v0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v4, v0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->mPastFrames:I

    if-lt v4, v7, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #setter for: Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z
    invoke-static {v3, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->access$802(Lcom/htc/sunny2/fullfilmview/Animator;Z)Z

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method
