.class Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;
.super Lcom/htc/music/MediaPlaybackService$LocalPlayer;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalImplPlayer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method private constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 1
    .parameter

    .prologue
    .line 6936
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6936
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    return-void
.end method


# virtual methods
.method duration()J
    .locals 2

    .prologue
    .line 7074
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7075
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 7077
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method notifyNextMETA_CHANGED(Z)V
    .locals 4
    .parameter "playAnim"

    .prologue
    .line 7043
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)V

    .line 7044
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next mPlayOnNextPrev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7045
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7046
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->play()V

    .line 7048
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7049
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animationtype"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7050
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7052
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 7053
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 7055
    :cond_1
    return-void
.end method

.method notifyPrevMETA_CHANGED(Z)V
    .locals 3
    .parameter "playAnim"

    .prologue
    .line 7060
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2300(Lcom/htc/music/MediaPlaybackService;)V

    .line 7061
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7062
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->play()V

    .line 7064
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7065
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animationtype"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7066
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7068
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 7069
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 7071
    :cond_1
    return-void
.end method

.method pause()V
    .locals 4

    .prologue
    .line 7087
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9400(Lcom/htc/music/MediaPlaybackService;)V

    .line 7088
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v1

    .line 7089
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7090
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 7091
    const-string v0, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause() mPlayOnNextPrev= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7092
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 7094
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7095
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9600(Lcom/htc/music/MediaPlaybackService;)V

    .line 7096
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$2202(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 7097
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 7100
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9700(Lcom/htc/music/MediaPlaybackService;)V

    .line 7102
    :cond_1
    monitor-exit v1

    .line 7103
    return-void

    .line 7102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method play()V
    .locals 8

    .prologue
    const/16 v7, 0x12

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 6944
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "!!!!! @@@@@ play() - 1"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6946
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$10100(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$10000(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 6948
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$4602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6950
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$9400(Lcom/htc/music/MediaPlaybackService;)V

    .line 6951
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6952
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "call play() and mediaplayer is initialized"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6956
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$5800(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 6957
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$5802(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6958
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 6961
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$10200(Lcom/htc/music/MediaPlaybackService;)V

    .line 6978
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$5300(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6979
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Check if the DRM File to play is legal"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6980
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$5300(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    #calls: Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    invoke-static {v4, v5}, Lcom/htc/music/MediaPlaybackService;->access$10300(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z

    move-result v0

    .line 6981
    .local v0, isLegal:Z
    if-nez v0, :cond_3

    .line 6982
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Cannot play drm file because the rights has been expired."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6983
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v5, 0x7f070096

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v4, v5, v1}, Lcom/htc/music/MediaPlaybackService;->access$9300(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6984
    const/16 v2, 0xa

    .line 6985
    .local v2, min:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-le v4, v3, :cond_1

    .line 6986
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    .line 6987
    :cond_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$10408(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-ge v4, v2, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 6988
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v4, v1, v3}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    .line 7038
    .end local v0           #isLegal:Z
    .end local v2           #min:I
    :cond_2
    :goto_0
    return-void

    .line 6991
    .restart local v0       #isLegal:Z
    :cond_3
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Legal rights to play drm file"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6992
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$2602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6993
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$10402(Lcom/htc/music/MediaPlaybackService;I)I

    .line 6996
    .end local v0           #isLegal:Z
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6997
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2200(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v3

    .line 6998
    .local v1, isStateChange:Z
    :cond_5
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$2202(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6999
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play() mPlayOnNextPrev= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7001
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 7005
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->updateNotification()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$6200(Lcom/htc/music/MediaPlaybackService;)V

    .line 7007
    if-eqz v1, :cond_2

    .line 7010
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChangeDelay(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$8200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 7013
    .end local v1           #isStateChange:Z
    :cond_6
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-gtz v4, :cond_7

    .line 7019
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play, mPlayListLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7024
    :cond_7
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$800(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 7025
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 7027
    :cond_8
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v4, 0x7f070068

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v3, v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$9300(Lcom/htc/music/MediaPlaybackService;II)V

    .line 7029
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$10500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7030
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "File uneixsted. refresh playlist again"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7031
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7032
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 7033
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method seekMore(J)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 7083
    return-void
.end method

.method shouldRewind()Z
    .locals 4

    .prologue
    .line 6939
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$5300(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->canRewind(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
