.class Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;
.super Lcom/htc/music/MediaPlaybackService$LocalPlayer;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineImplPlayer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method private constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 1
    .parameter

    .prologue
    .line 7107
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7107
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    return-void
.end method


# virtual methods
.method duration()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 7213
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7219
    :cond_0
    :goto_0
    return-wide v0

    .line 7216
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$8400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7217
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    goto :goto_0
.end method

.method notifyNextMETA_CHANGED(Z)V
    .locals 4
    .parameter "playAnim"

    .prologue
    .line 7182
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)V

    .line 7183
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next mPlayOnNextPrev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7184
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7185
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->play()V

    .line 7187
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7188
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animationtype"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7189
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7190
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 7191
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 7193
    :cond_1
    return-void
.end method

.method notifyPrevMETA_CHANGED(Z)V
    .locals 3
    .parameter "playAnim"

    .prologue
    .line 7198
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7199
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)V

    .line 7200
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7201
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->play()V

    .line 7203
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7204
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animationtype"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7205
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7206
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 7207
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 7210
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method pause()V
    .locals 4

    .prologue
    .line 7235
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$9400(Lcom/htc/music/MediaPlaybackService;)V

    .line 7237
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v2

    .line 7238
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 7239
    .local v0, isPlaying:Z
    if-eqz v0, :cond_0

    .line 7240
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1, v3}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 7242
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7243
    if-eqz v0, :cond_1

    .line 7244
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause() mPlayOnNextPrev= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7245
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 7247
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$10600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7248
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$9600(Lcom/htc/music/MediaPlaybackService;)V

    .line 7249
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v2

    .line 7250
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1, v3}, Lcom/htc/music/MediaPlaybackService;->access$2202(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 7251
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7252
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 7255
    :cond_1
    return-void

    .line 7242
    .end local v0           #isPlaying:Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 7251
    .restart local v0       #isPlaying:Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public play()V
    .locals 7

    .prologue
    const/16 v6, 0x12

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 7115
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$8400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7176
    :cond_0
    :goto_0
    return-void

    .line 7118
    :cond_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "!!!!! @@@@@ onlineplay() - 1"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7120
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$10100(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$10000(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 7122
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v1}, Lcom/htc/music/MediaPlaybackService;->access$4602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 7124
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$9400(Lcom/htc/music/MediaPlaybackService;)V

    .line 7125
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 7126
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "call play() and mediaplayer is initialized"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7130
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$5800(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 7131
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v3, v1}, Lcom/htc/music/MediaPlaybackService;->access$5802(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 7132
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 7135
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$10200(Lcom/htc/music/MediaPlaybackService;)V

    .line 7136
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 7137
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2200(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 7138
    .local v1, isStateChange:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService;->access$2202(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 7139
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play() mPlayOnNextPrev= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7141
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->startOnline()V

    .line 7144
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->updateNotification()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$6200(Lcom/htc/music/MediaPlaybackService;)V

    .line 7146
    if-eqz v1, :cond_0

    .line 7148
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7150
    .end local v1           #isStateChange:Z
    :cond_4
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    if-gtz v3, :cond_5

    .line 7156
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService;->setShuffleMode(I)V

    goto/16 :goto_0

    .line 7160
    :cond_5
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 7161
    .local v0, currFilePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$800(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7162
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 7167
    :cond_6
    :goto_1
    if-nez v0, :cond_0

    .line 7168
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Location is null file uneixsted. refresh playlist again"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7170
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7171
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 7172
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 7163
    :cond_7
    if-eqz v0, :cond_6

    .line 7164
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v3, 0x7f070068

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v2, v3, v1}, Lcom/htc/music/MediaPlaybackService;->access$9300(Lcom/htc/music/MediaPlaybackService;II)V

    goto :goto_1
.end method

.method seekMore(J)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 7225
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 7226
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "pos < 0 error in seekMore"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7231
    :goto_0
    return-void

    .line 7229
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.asyncopen"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 7230
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mSeekingForBuffer:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$9002(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto :goto_0
.end method

.method shouldRewind()Z
    .locals 4

    .prologue
    .line 7110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
