.class Lcom/htc/music/online/TrackListActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "TrackListActivity.java"


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
    .line 599
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$4;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x2

    .line 602
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$4;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$4;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$4;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 606
    :cond_0
    return-void
.end method
