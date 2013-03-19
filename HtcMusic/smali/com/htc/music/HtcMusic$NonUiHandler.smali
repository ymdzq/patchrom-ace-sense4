.class final Lcom/htc/music/HtcMusic$NonUiHandler;
.super Landroid/os/Handler;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method public constructor <init>(Lcom/htc/music/HtcMusic;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 6572
    iput-object p1, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    .line 6573
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6574
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 6579
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 6963
    :cond_0
    :goto_0
    :pswitch_0
    const-string v18, "[HtcMusic]"

    const-string v19, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6965
    :cond_1
    :goto_1
    return-void

    .line 6582
    :pswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 6585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mRetryCount:I
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9800(Lcom/htc/music/HtcMusic;)I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 6586
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 6587
    const/16 v18, 0x1

    const-wide/16 v19, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 6588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9808(Lcom/htc/music/HtcMusic;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6602
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 6592
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mRetryCount:I
    invoke-static/range {v18 .. v19}, Lcom/htc/music/HtcMusic;->access$9802(Lcom/htc/music/HtcMusic;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 6599
    :catch_0
    move-exception v8

    .line 6600
    .local v8, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    .end local v8           #e:Landroid/os/RemoteException;
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v18

    if-nez v18, :cond_3

    .line 6605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    const-string v20, "Music"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    #setter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v19}, Lcom/htc/music/HtcMusic;->access$9902(Lcom/htc/music/HtcMusic;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 6609
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "category"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 6611
    .local v6, category:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-lt v6, v0, :cond_1

    const/16 v18, 0x16

    move/from16 v0, v18

    if-gt v6, v0, :cond_1

    .line 6614
    const/16 v18, 0x15

    move/from16 v0, v18

    if-ne v6, v0, :cond_5

    .line 6615
    const-string v18, "[HtcMusic]"

    const-string v19, "category: NpCategory.CATEGORY_DONT_REFRESH"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6596
    .end local v6           #category:I
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v18

    if-eqz v18, :cond_1a

    .line 6602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    goto/16 :goto_3

    :catchall_0
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v18

    .line 6619
    .restart local v6       #category:I
    :cond_5
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_6

    .line 6620
    const/4 v6, 0x0

    .line 6622
    :cond_6
    const/4 v7, 0x0

    .line 6623
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v12, Lcom/htc/music/NpCategory;

    int-to-short v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 6624
    .local v12, npc:Lcom/htc/music/NpCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "artistid"

    const/16 v20, -0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;

    .line 6625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "albumid"

    const/16 v20, -0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;

    .line 6626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "genreid"

    const/16 v20, -0x2

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;

    .line 6627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "composer"

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 6628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "playlistid"

    const/16 v20, -0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    .line 6630
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/music/NpCategory;->query(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    .line 6631
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-lez v18, :cond_7

    .line 6632
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->setPlaylist(Landroid/database/Cursor;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6637
    :goto_5
    if-eqz v7, :cond_1

    .line 6638
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6639
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 6634
    :cond_7
    :try_start_5
    const-string v18, "[HtcMusic]"

    const-string v19, "NpCategory.query: cursor == null."

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 6637
    :catchall_1
    move-exception v18

    if-eqz v7, :cond_8

    .line 6638
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6639
    const/4 v7, 0x0

    .line 6637
    :cond_8
    throw v18

    .line 6647
    .end local v6           #category:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v12           #npc:Lcom/htc/music/NpCategory;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/HtcMusic;->access$10000(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 6648
    .local v16, style:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "savestatus"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 6653
    .local v13, saveStatus:I
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 6655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v13}, Lcom/htc/music/IMediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V

    .line 6656
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_9

    .line 6662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 6664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/music/util/SoundEffectHelper;->setEqualizerStyle(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 6675
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 6669
    :cond_a
    :try_start_7
    const-string v18, "[HtcMusic]"

    const-string v19, "case SET_SOUND_EFFECT: mService is null."

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    .line 6672
    :catch_1
    move-exception v8

    .line 6673
    .local v8, e:Ljava/lang/Exception;
    :try_start_8
    const-string v18, "[HtcMusic]"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 6675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    goto :goto_7

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v18

    .line 6682
    .end local v13           #saveStatus:I
    .end local v16           #style:Ljava/lang/String;
    :pswitch_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 6685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 6686
    const-string v18, "[HtcMusic]"

    const-string v19, "###### case CHECK_PLUGIN_SERVICE_STATE: Close error state if exists. $$$$$$$"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6688
    new-instance v10, Landroid/content/Intent;

    const-string v18, "com.htc.music.finisherroractivity"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6690
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/htc/music/HtcMusic;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 6713
    .end local v10           #intent:Landroid/content/Intent;
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    :goto_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 6692
    :cond_c
    :try_start_a
    const-string v18, "[HtcMusic]"

    const-string v19, "###### case CHECK_PLUGIN_SERVICE_STATE: Go to plugin error state!!! ######"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->finish()V

    .line 6695
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 6696
    .local v17, targetIntent:Landroid/content/Intent;
    const/high16 v18, 0x1400

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    const-class v19, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6700
    const-string v18, "pluginmode"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6701
    const-string v18, "errorcause"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/music/IMediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 6705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    .line 6710
    .end local v17           #targetIntent:Landroid/content/Intent;
    :catch_2
    move-exception v8

    .line 6711
    .local v8, e:Landroid/os/RemoteException;
    :try_start_b
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 6713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    goto :goto_9

    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_3
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v18

    .line 6781
    :pswitch_4
    const-string v18, "[HtcMusic]"

    const-string v19, "msg.what = CHECK_ERROR_STATE"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6786
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    if-nez v18, :cond_d

    .line 6814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    :goto_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 6791
    :cond_d
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v18

    if-gez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v18

    if-lez v18, :cond_1b

    .line 6795
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    new-instance v19, Lcom/htc/music/HtcMusic$NonUiHandler$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$NonUiHandler$1;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;)V

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    .line 6814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    goto :goto_a

    .line 6811
    :catch_3
    move-exception v9

    .line 6812
    .local v9, ex:Landroid/os/RemoteException;
    :try_start_e
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 6814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    .end local v9           #ex:Landroid/os/RemoteException;
    :goto_b
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    if-nez v18, :cond_1

    .line 6823
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v11

    .line 6824
    .local v11, len:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    .line 6831
    .local v15, status:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$10300(Lcom/htc/music/HtcMusic;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 6834
    if-gtz v11, :cond_f

    const-string v18, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 6837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    new-instance v19, Lcom/htc/music/HtcMusic$NonUiHandler$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$NonUiHandler$2;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;)V

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4

    .line 6879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 6880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    .end local v11           #len:I
    .end local v15           #status:Ljava/lang/String;
    :goto_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 6814
    :catchall_4
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v18

    .line 6848
    .restart local v11       #len:I
    .restart local v15       #status:Ljava/lang/String;
    :cond_f
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    const-string v18, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 6850
    const-string v18, "[HtcMusic]"

    const-string v19, "now playing view is on"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    .line 6879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 6880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    goto :goto_c

    .line 6859
    :cond_10
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    new-instance v19, Lcom/htc/music/HtcMusic$NonUiHandler$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/htc/music/HtcMusic$NonUiHandler$3;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;I)V

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4

    .line 6879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 6880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    goto :goto_c

    .line 6876
    .end local v11           #len:I
    .end local v15           #status:Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 6877
    .restart local v9       #ex:Landroid/os/RemoteException;
    :try_start_12
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 6879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 6880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    goto/16 :goto_c

    .line 6879
    .end local v9           #ex:Landroid/os/RemoteException;
    :catchall_5
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 6880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6879
    :cond_11
    throw v18

    .line 6889
    :pswitch_5
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v18, :cond_12

    .line 6892
    :try_start_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    if-ltz v18, :cond_12

    .line 6893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/htc/music/IMediaPlaybackService;->playAlbum(I)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_5

    .line 6900
    :cond_12
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 6895
    :catch_5
    move-exception v8

    .line 6896
    .restart local v8       #e:Landroid/os/RemoteException;
    :try_start_15
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_d

    .line 6900
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_6
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v18

    .line 6906
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #calls: Lcom/htc/music/HtcMusic;->updateTrackInfoP()V
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$10400(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 6910
    :pswitch_7
    const/4 v4, 0x0

    .line 6911
    .local v4, albumid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 6913
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_6

    move-result v4

    .line 6918
    :cond_13
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/music/HtcMusic;->queryMediaInfo(I)I

    move-result v14

    .line 6919
    .local v14, songid:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_14

    .line 6920
    const-string v18, "[HtcMusic]"

    const-string v19, "songid is wrong when return from HtcMusic.queryMediaInfo() so cancel ADDTO_ONLINE_FAVORITE"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6914
    .end local v14           #songid:I
    :catch_6
    move-exception v8

    .line 6915
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 6923
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v14       #songid:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #calls: Lcom/htc/music/HtcMusic;->getAlbumName()Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$10500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v5

    .line 6924
    .local v5, albumname:Ljava/lang/String;
    if-eqz v5, :cond_15

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 6925
    :cond_15
    const-string v18, "[HtcMusic]"

    const-string v19, "albumname is wrong when return from HtcMusic.getAlbumName() so cancel ADDTO_ONLINE_FAVORITE"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6928
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    move-result-object v18

    if-nez v18, :cond_17

    .line 6929
    const-string v18, "[HtcMusic]"

    const-string v19, "[onHtcContextItemSelected][ADD_TO_ONLINE_FAVORITES] mAddToFavUtil is null!"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6932
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    new-instance v19, Lcom/htc/music/HtcMusic$NonUiHandler$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v5}, Lcom/htc/music/HtcMusic$NonUiHandler$4;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;ILjava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 6943
    .end local v4           #albumid:I
    .end local v5           #albumname:Ljava/lang/String;
    .end local v14           #songid:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #calls: Lcom/htc/music/HtcMusic;->isOnlineMode()Z
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 6944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/htc/music/online/Util;->checkNetworkAvailableWithDialog(Landroid/content/Context;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v19

    #setter for: Lcom/htc/music/HtcMusic;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static/range {v18 .. v19}, Lcom/htc/music/HtcMusic;->access$6902(Lcom/htc/music/HtcMusic;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 6945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$6900(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v18

    if-nez v18, :cond_19

    .line 6946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 6948
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v18

    if-nez v18, :cond_18

    .line 6949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->openCurrent()V

    .line 6951
    :cond_18
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$7002(Z)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_7

    goto/16 :goto_0

    .line 6952
    :catch_7
    move-exception v8

    .line 6953
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 6957
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V
    invoke-static/range {v18 .. v19}, Lcom/htc/music/HtcMusic;->access$6700(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_0

    .line 6602
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    goto/16 :goto_4

    .line 6814
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    goto/16 :goto_b

    .line 6579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
