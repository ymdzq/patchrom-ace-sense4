.class Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCMusicPlaybackService;


# direct methods
.method private constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 2339
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/music/DMCMusicPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2339
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    return-void
.end method


# virtual methods
.method public onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 2427
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$700(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2428
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2429
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "adn_server"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const-string v2, "adn_content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    const-string v2, "adn_filepath"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2433
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$700(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2434
    return-void
.end method

.method public onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 5
    .parameter "ctlInfo"

    .prologue
    .line 2376
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    invoke-static {v2, p1}, Lcom/htc/music/DMCMusicPlaybackService;->access$3002(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 2377
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v3, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRName:Ljava/lang/String;

    .line 2379
    iget-wide v2, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    long-to-int v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 2380
    .local v1, tempPos:I
    if-ltz v1, :cond_2

    .line 2381
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I
    invoke-static {v2, v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$3102(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2388
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getContentID()Ljava/lang/String;

    move-result-object v0

    .line 2390
    .local v0, contentID:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2391
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$3202(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 2397
    :goto_0
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onControllerInfoupdated] mCurrentDMRName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v4, v4, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onControllerInfoupdated] mPlayPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/htc/music/DMCMusicPlaybackService;->access$3100(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v3

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-static {v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$3302(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 2400
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v3, "com.htc.music.plugin.metachanged"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    .line 2402
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$3400(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/DMCMusicPlaybackService;->getRepeatMode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2403
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/DMCMusicPlaybackService;->getRepeatMode()I

    move-result v3

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I
    invoke-static {v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$3402(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2404
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/DMCMusicPlaybackService;->notifyRepeatChanged()V

    .line 2408
    :cond_0
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$3500(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/DMCMusicPlaybackService;->getShuffleMode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 2409
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/DMCMusicPlaybackService;->getShuffleMode()I

    move-result v3

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I
    invoke-static {v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$3502(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2410
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/DMCMusicPlaybackService;->notifyShuffleChanged()V

    .line 2413
    .end local v0           #contentID:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 2384
    :cond_2
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onControllerInfoupdated] tempPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2394
    .restart local v0       #contentID:Ljava/lang/String;
    :cond_3
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "mDLNAManager.getContentID() is null or empty string!!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 2418
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNAController onError. ErrorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ErrorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->handleError(I)V
    invoke-static {v0, p2}, Lcom/htc/music/DMCMusicPlaybackService;->access$3600(Lcom/htc/music/DMCMusicPlaybackService;I)V

    .line 2420
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 5
    .parameter "playState"

    .prologue
    const/4 v4, 0x1

    .line 2346
    move v0, p1

    .line 2347
    .local v0, nState:I
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAController onStateChanged, nState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 2349
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2600(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 2350
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.statechanged.buffering"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    .line 2356
    :cond_0
    :goto_0
    if-ne v0, v4, :cond_4

    .line 2369
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1, p1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2370
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.statechanged"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    .line 2371
    return-void

    .line 2351
    :cond_2
    const/16 v1, 0x6a

    if-ne v0, v1, :cond_3

    .line 2352
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.statechanged.waiting"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 2353
    :cond_3
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2354
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1600(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2355
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1600(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2358
    :cond_4
    if-nez p1, :cond_5

    .line 2359
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "STATE_PLAYING notify PLUGIN_PLAYSTATE_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1900(Lcom/htc/music/DMCMusicPlaybackService;)V

    goto :goto_1

    .line 2361
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 2362
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "STATE_PAUSED notify PLUGIN_PLAYSTATE_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1900(Lcom/htc/music/DMCMusicPlaybackService;)V

    goto :goto_1

    .line 2364
    :cond_6
    const/16 v1, 0x68

    if-ne p1, v1, :cond_1

    .line 2365
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const/16 v2, -0x2717

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2800(Lcom/htc/music/DMCMusicPlaybackService;I)V

    .line 2366
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2900(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2367
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2900(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method
