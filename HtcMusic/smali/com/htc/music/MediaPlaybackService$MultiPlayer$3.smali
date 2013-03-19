.class Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 6526
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 13
    .parameter "mediaplayer"
    .parameter "i"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v12, 0x64

    .line 6530
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mCurrentBuff:I
    invoke-static {v9, p2}, Lcom/htc/music/MediaPlaybackService;->access$7902(Lcom/htc/music/MediaPlaybackService;I)I

    .line 6531
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v9

    if-nez v9, :cond_2

    if-ge p2, v12, :cond_2

    move v0, v7

    .line 6532
    .local v0, displayProgress:Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.htc.music.bufferring"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6533
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "displayProgress"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6534
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mSeekingForBuffer:Z
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$9000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$8400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6536
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v9, v3}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 6537
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9100(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v9

    int-to-double v4, v9

    .line 6538
    .local v4, pos:D
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$9100(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v9

    int-to-double v1, v9

    .line 6539
    .local v1, duration:D
    const-wide/high16 v9, 0x4059

    mul-double/2addr v9, v4

    div-double/2addr v9, v1

    double-to-int v6, v9

    .line 6540
    .local v6, rate:I
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6541
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mAutoControl="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v11, v11, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAutoControl:Z
    invoke-static {v11}, Lcom/htc/music/MediaPlaybackService;->access$8900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6542
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$8400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v9, v6, 0x1

    if-gt p2, v9, :cond_0

    if-ge p2, v12, :cond_0

    .line 6543
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 6544
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v9, v9, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAutoControl:Z
    invoke-static {v9, v7}, Lcom/htc/music/MediaPlaybackService;->access$8902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6546
    :cond_0
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAutoControl:Z
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$8900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6547
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$8400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_3

    add-int/lit8 v7, v6, 0xa

    if-le p2, v7, :cond_3

    .line 6548
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 6549
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAutoControl:Z
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$8902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6557
    .end local v1           #duration:D
    .end local v4           #pos:D
    .end local v6           #rate:I
    :cond_1
    :goto_1
    return-void

    .end local v0           #displayProgress:Z
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    move v0, v8

    .line 6531
    goto/16 :goto_0

    .line 6550
    .restart local v0       #displayProgress:Z
    .restart local v1       #duration:D
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #pos:D
    .restart local v6       #rate:I
    :cond_3
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$8400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v6, 0x3

    if-ge p2, v7, :cond_1

    if-ge p2, v12, :cond_1

    .line 6551
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto :goto_1

    .line 6554
    .end local v1           #duration:D
    .end local v4           #pos:D
    .end local v6           #rate:I
    :cond_4
    if-eqz v0, :cond_1

    .line 6555
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7, v3}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
