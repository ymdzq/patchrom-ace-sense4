.class Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 6446
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "mp"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 6453
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "acquire wake lock"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6454
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 6455
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z
    invoke-static {v2, v5}, Lcom/htc/music/MediaPlaybackService;->access$2902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6456
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$8600(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6462
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->isOnlineMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6463
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "transfer url in onCompletionListener"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6464
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->getNextMusicPos()I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$8700(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)I

    move-result v1

    .line 6465
    .local v1, pos:I
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6468
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6469
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mHasUrlTransferFromCompletion:Z
    invoke-static {v2, v5}, Lcom/htc/music/MediaPlaybackService;->access$8802(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6470
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 6471
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 6472
    const/16 v2, 0x18

    iput v2, v0, Landroid/os/Message;->what:I

    .line 6473
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6482
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #pos:I
    :goto_0
    return-void

    .line 6475
    .restart local v1       #pos:I
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mHasUrlTransferFromCompletion:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$8802(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6476
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "pos = -1 when transfer url in onCompletionListener"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6477
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$8600(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6480
    .end local v1           #pos:I
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$8600(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
