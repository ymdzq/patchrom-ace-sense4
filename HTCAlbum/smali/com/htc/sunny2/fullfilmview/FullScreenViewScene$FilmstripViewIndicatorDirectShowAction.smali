.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripViewIndicatorDirectShowAction"
.end annotation


# instance fields
.field DELAYED_TIME:J

.field meX:F

.field meY:F

.field pushedTime:J

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;FF)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->DELAYED_TIME:J

    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->meX:F

    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->meY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->pushedTime:J

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 5

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->pushedTime:J

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->DELAYED_TIME:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->meX:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->meY:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateFilmstripEnterIndicatorLeft(ZFF)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->meX:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->meY:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateFilmstripEnterIndicatorRight(ZFF)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShown:Z
    invoke-static {v1, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2202(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mFilmstripViewIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mFilmstripViewIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;->onFilmstripViewEntryIndicatorShown()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
