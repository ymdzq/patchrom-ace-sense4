.class Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemRefresh"
.end annotation


# instance fields
.field flags:I

.field index:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v0, "onMediaItemRefresh"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onProcessEventIRT()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->onMediaItemRefreshIRT(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V

    return-void
.end method

.method public onRemovedIRT()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    invoke-static {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V

    return-void
.end method

.method public reset(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v1, "onMediaItemRefresh"

    invoke-super {p0, v0, v1}, Lcom/htc/sunnyCore/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    return-void
.end method
