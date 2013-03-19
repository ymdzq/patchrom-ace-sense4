.class Lcom/htc/music/MediaPlaybackService$8;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 1743
    const-string v2, "album_id"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1746
    .local v1, albumId:I
    if-gez v1, :cond_1

    .line 1747
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal Arguments - albumId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1751
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v3

    .line 1752
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$5900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1753
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, -0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService;->access$5902(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1754
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService;->access$6002(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 1756
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1759
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1760
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$6100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1763
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1764
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->updateNotification()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$6200(Lcom/htc/music/MediaPlaybackService;)V

    goto :goto_0

    .line 1756
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
