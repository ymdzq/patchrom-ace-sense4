.class Lcom/htc/music/online/TrackListActivity$2;
.super Ljava/lang/Object;
.source "TrackListActivity.java"

# interfaces
.implements Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/TrackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/TrackListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/TrackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$2;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/content/Context;ILcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 2
    .parameter "context"
    .parameter "songId"
    .parameter "songDetail"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$2;->this$0:Lcom/htc/music/online/TrackListActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/online/TrackListActivity;->showProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/online/TrackListActivity;->access$300(Lcom/htc/music/online/TrackListActivity;Z)V

    .line 460
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$2;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-static {v0, p3}, Lcom/htc/music/online/Util;->showSongDetail(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V

    .line 461
    return-void
.end method

.method public onReturnError(Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 2
    .parameter "err"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$2;->this$0:Lcom/htc/music/online/TrackListActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/online/TrackListActivity;->showProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/online/TrackListActivity;->access$300(Lcom/htc/music/online/TrackListActivity;Z)V

    .line 467
    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/SnsException;->printStackTrace()V

    .line 470
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$2;->this$0:Lcom/htc/music/online/TrackListActivity;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/online/TrackListActivity;->showProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/online/TrackListActivity;->access$300(Lcom/htc/music/online/TrackListActivity;Z)V

    .line 477
    return-void
.end method
