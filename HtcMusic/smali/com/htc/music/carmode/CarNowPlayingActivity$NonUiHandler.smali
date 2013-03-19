.class final Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
.super Landroid/os/Handler;
.source "CarNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    .line 1669
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1670
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 1674
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 1936
    :cond_0
    :goto_0
    return-void

    .line 1677
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v16, :cond_1

    .line 1680
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    if-ltz v16, :cond_1

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/htc/music/IMediaPlaybackService;->playAlbum(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1688
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1683
    :catch_0
    move-exception v7

    .line 1684
    .local v7, ex:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1688
    .end local v7           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v16

    .line 1694
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUIGetTrackInfo()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1701
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->doPauseResume()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1708
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->toggleShuffle()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1715
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->cycleRepeat()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1722
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->doNext()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5200(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1729
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->doPrev()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1736
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->getTrackTime()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1743
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1746
    :try_start_3
    const-string v16, "[CarNowPlayingActivity]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mService.isPlaying() = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshPlaybackControl(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1752
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1748
    :catch_1
    move-exception v6

    .line 1749
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1757
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshShuffleButton()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1764
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshRepeatButton()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5600(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1772
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1773
    const-string v16, "[CarNowPlayingActivity]"

    const-string v17, "reveice UPDATE_GLIDER + "

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 1775
    const/4 v2, 0x0

    .line 1776
    .local v2, albumQueue:[I
    const/4 v3, 0x0

    .line 1778
    .local v3, albumQueuePos:I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueue()[I

    move-result-object v2

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 1789
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1790
    .local v8, gliderMsg:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "album_queue"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1791
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "album_queue_pos"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1795
    .end local v2           #albumQueue:[I
    .end local v3           #albumQueuePos:I
    .end local v8           #gliderMsg:Landroid/os/Message;
    :cond_4
    const-string v16, "[CarNowPlayingActivity]"

    const-string v17, "reveice UPDATE_GLIDER - "

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1780
    .restart local v2       #albumQueue:[I
    .restart local v3       #albumQueuePos:I
    :catch_2
    move-exception v6

    .line 1781
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v16, "[CarNowPlayingActivity]"

    const-string v17, "remote exception in UPDATE_GLIDER"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1801
    .end local v2           #albumQueue:[I
    .end local v3           #albumQueuePos:I
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1807
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->animationInit()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .line 1812
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 1815
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1821
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1817
    :catch_3
    move-exception v6

    .line 1818
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 1826
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->startNextAnimation()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .line 1831
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->startPrevAnimation()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$5900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .line 1836
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 1839
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1844
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1840
    :catch_4
    move-exception v6

    .line 1841
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 1849
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1850
    const-string v16, "[CarNowPlayingActivity]"

    const-string v17, "NONUI_DO_STATE_CHANGE_UI +"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 1853
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "glider_state"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1854
    .local v9, gliderState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v4

    .line 1855
    .local v4, animationState:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v3

    .line 1856
    .restart local v3       #albumQueuePos:I
    const/16 v16, 0x12

    move/from16 v0, v16

    if-ne v9, v0, :cond_7

    .line 1857
    if-eqz v4, :cond_7

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    .line 1862
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0xb

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 1864
    .local v13, message:Landroid/os/Message;
    invoke-virtual {v13}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 1865
    .local v5, data:Landroid/os/Bundle;
    const-string v16, "animation_state"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1866
    const-string v16, "glider_state"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1867
    const-string v16, "album_queue_pos"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1876
    .end local v3           #albumQueuePos:I
    .end local v4           #animationState:Z
    .end local v5           #data:Landroid/os/Bundle;
    .end local v9           #gliderState:I
    .end local v13           #message:Landroid/os/Message;
    :cond_8
    :goto_5
    const-string v16, "[CarNowPlayingActivity]"

    const-string v17, "NONUI_DO_STATE_CHANGE_UI -"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1871
    :catch_5
    move-exception v6

    .line 1872
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 1882
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 1884
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "seek_pos"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1886
    .local v14, pos:I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    int-to-long v0, v14

    move-wide/from16 v17, v0

    invoke-interface/range {v16 .. v18}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1891
    .end local v14           #pos:I
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1887
    .restart local v14       #pos:I
    :catch_6
    move-exception v6

    .line 1888
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 1896
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v14           #pos:I
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v17, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->isBeatsEffectOn(Landroid/content/Context;)Z
    invoke-static/range {v16 .. v17}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$6000(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/content/Context;)Z

    move-result v10

    .line 1898
    .local v10, isBeatsOn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v11

    .line 1899
    .local v11, isHeadSetPlugged:Z
    const/4 v12, 0x0

    .line 1900
    .local v12, isPlaying:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    .line 1902
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v12

    .line 1907
    :cond_a
    :goto_7
    const-string v16, "[CarNowPlayingActivity]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isBeatsOn = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    if-eqz v16, :cond_b

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0xe

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 1910
    .local v15, refreshBeats:Landroid/os/Message;
    invoke-virtual {v15}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "is_beats_on"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1911
    invoke-virtual {v15}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "is_headset_plugged"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1912
    invoke-virtual {v15}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "is_playing"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1915
    .end local v15           #refreshBeats:Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1903
    :catch_7
    move-exception v6

    .line 1904
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v16, "[CarNowPlayingActivity]"

    const-string v17, "NONUI_GET_BEATS_STATE Remote exception"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1921
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v10           #isBeatsOn:Z
    .end local v11           #isHeadSetPlugged:Z
    .end local v12           #isPlaying:Z
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/htc/music/online/Util;->checkNetworkAvailableWithDialog(Landroid/content/Context;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v17

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static/range {v16 .. v17}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2502(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    if-nez v16, :cond_0

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1925
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v16

    if-nez v16, :cond_c

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->openCurrent()V

    .line 1928
    :cond_c
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2602(Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_0

    .line 1929
    :catch_8
    move-exception v6

    .line 1930
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1674
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
