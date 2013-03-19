.class Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripAlignAction"
.end annotation


# instance fields
.field count:I

.field delayCount:I

.field needGoFullscreen:Z

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/Animator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->needGoFullscreen:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->needGoFullscreen:Z

    iput-boolean p4, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->needGoFullscreen:Z

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->update()V

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRelativeMovement()I

    move-result v1

    if-eqz v1, :cond_5

    move v0, v3

    :goto_1
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->needGoFullscreen:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_6

    move v2, v3

    :goto_2
    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZ)V

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v6}, Lcom/htc/sunny2/fullfilmview/Animator;->access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    :cond_2
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->count:I

    :cond_3
    :goto_3
    if-nez v0, :cond_4

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v5

    if-eqz v5, :cond_0

    :cond_4
    move v4, v3

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    #getter for: Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/Animator;->access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_9

    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->needGoFullscreen:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->this$0:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    :cond_9
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;->delayCount:I

    goto :goto_3
.end method
