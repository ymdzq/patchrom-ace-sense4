.class final Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
.super Landroid/os/Handler;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCMusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    .line 239
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 240
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 244
    const-string v20, "[DMCMusicPlaybackService]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "<<<<<<<<<<< NonUIHandler >>>>>>>>>>>>>>>> + msg.what = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 249
    .local v12, data:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 521
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 252
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->initErrorRetryHandle()V
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$100(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->prev()V

    goto :goto_0

    .line 258
    :pswitch_2
    const-string v20, "[DMCMusicPlaybackService]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "#### case MSG_REQUEST_ALBUMART: mIsAlbumArtGetting = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMCMusicPlaybackService;->access$200(Lcom/htc/music/DMCMusicPlaybackService;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    .line 264
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v7, cv:Landroid/content/ContentValues;
    const-string v20, "shuffle"

    const-string v21, "shuffle"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v20, "position"

    const-string v21, "position"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    const-string v20, "server"

    const-string v21, "server"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v20, "content"

    const-string v21, "content"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$200(Lcom/htc/music/DMCMusicPlaybackService;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_a

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 279
    .restart local v7       #cv:Landroid/content/ContentValues;
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 280
    .local v11, cvShufflemode:Ljava/lang/Integer;
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 281
    .local v9, cvPosition:Ljava/lang/Integer;
    const/16 v19, 0x0

    .line 282
    .local v19, serverID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 284
    .local v6, contentID:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 285
    const-string v20, "shuffle"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 286
    const-string v20, "position"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 287
    const-string v20, "server"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 288
    const-string v20, "content"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 292
    :cond_2
    if-eqz v11, :cond_9

    if-eqz v9, :cond_9

    if-eqz v19, :cond_9

    if-eqz v6, :cond_9

    .line 295
    const/16 v18, 0x1

    .line 297
    .local v18, isNeedToQuery:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$400(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 298
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "<<<<<<<<<<<<<< There is this content in hashtable...Check the file exists or not...>>>>>>>>>>>>>>>>"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/DMCMusicPlaybackService;->access$500(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$400(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, albumArtFilePath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v4, albumArtFile:Ljava/io/File;
    const-string v20, "[DMCMusicPlaybackService]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "<> path => "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 306
    const/16 v18, 0x0

    .line 307
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "<<< Don\'t query again...>>>"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .end local v4           #albumArtFile:Ljava/io/File;
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez v18, :cond_8

    .line 320
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v21, v0

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/DMCMusicPlaybackService;->access$500(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$400(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    .restart local v5       #albumArtFilePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$600(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$600(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const-string v22, "com.htc.music.DMCMusicPlaybackService"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$700(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 309
    .restart local v4       #albumArtFile:Ljava/io/File;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$400(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const/16 v18, 0x1

    .line 311
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "<<< There is no File...Need to query...>>>"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 330
    .end local v4           #albumArtFile:Ljava/io/File;
    :cond_5
    :try_start_1
    const-string v20, "[DMCMusicPlaybackService]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "case MSG_REQUEST_ALBUMART: shuffle on, mNotify is null...contentID: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", albumArtFilePath: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 350
    :catch_0
    move-exception v14

    .line 352
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 337
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$600(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$600(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const-string v22, "com.htc.music.DMCMusicPlaybackService"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 343
    :cond_7
    const-string v20, "[DMCMusicPlaybackService]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "case MSG_REQUEST_ALBUMART: shuffle off, mNotify is null...contentID: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", albumArtFilePath: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 362
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v20 .. v21}, Lcom/htc/music/DMCMusicPlaybackService;->access$202(Lcom/htc/music/DMCMusicPlaybackService;Z)Z

    goto/16 :goto_0

    .line 367
    .end local v18           #isNeedToQuery:Z
    :cond_9
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "case MSG_REQUEST_ALBUMART: current cv is incorrect. remove it and try next one."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$700(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 378
    .end local v6           #contentID:Ljava/lang/String;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v9           #cvPosition:Ljava/lang/Integer;
    .end local v11           #cvShufflemode:Ljava/lang/Integer;
    .end local v19           #serverID:Ljava/lang/String;
    :cond_a
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "case MSG_REQUEST_ALBUMART: No album art request..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    :cond_b
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "#### case MSG_REQUEST_ALBUMART: Getting some album art now....ignore this time request..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :pswitch_3
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "#### case MSG_HANDLE_ALBUMART:..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v20, "adn_server"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 392
    .restart local v19       #serverID:Ljava/lang/String;
    const-string v20, "adn_content"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 393
    .restart local v6       #contentID:Ljava/lang/String;
    const-string v20, "adn_filepath"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 395
    .local v15, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 396
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "something wrong, this arraylist should not be empty at this moment."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 402
    .restart local v7       #cv:Landroid/content/ContentValues;
    if-nez v7, :cond_d

    .line 403
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "something wrong, this content value should not be null at this moment."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :cond_d
    const-string v20, "shuffle"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 409
    .local v11, cvShufflemode:I
    const-string v20, "position"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 410
    .local v9, cvPosition:I
    const-string v20, "content"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 411
    .local v8, cvContentID:Ljava/lang/String;
    const-string v20, "server"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, cvServerID:Ljava/lang/String;
    if-eqz v10, :cond_e

    if-eqz v8, :cond_e

    if-eqz v11, :cond_f

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_f

    .line 417
    :cond_e
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "something wrong, CV is incorrect."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    :cond_f
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v20 .. v21}, Lcom/htc/music/DMCMusicPlaybackService;->access$202(Lcom/htc/music/DMCMusicPlaybackService;Z)Z

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_10

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$700(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    .line 431
    :cond_10
    if-nez v15, :cond_11

    .line 432
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "## case MSG_HANDLE_ALBUMART: filePath from middlelayer is null!!!!!!!!!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    :cond_11
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 440
    .local v16, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    invoke-static {v0, v15}, Lcom/htc/music/DMCMusicPlaybackService;->access$900(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 442
    .local v3, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_14

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$500(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/lang/String;

    move-result-object v13

    .line 445
    .local v13, dlnapath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->ensurePathExists(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lcom/htc/music/DMCMusicPlaybackService;->access$1000(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->eraseAllFilesIfNeeded(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lcom/htc/music/DMCMusicPlaybackService;->access$1100(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    .line 448
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 450
    .restart local v5       #albumArtFilePath:Ljava/lang/String;
    const-string v20, "[WeiaTest]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAlbumArt item position:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v20, "[WeiaTest]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAlbumArt item path:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Lcom/htc/music/DMCMusicPlaybackService;->access$1200(Lcom/htc/music/DMCMusicPlaybackService;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$400(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_12

    .line 459
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$600(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    const-string v21, "com.htc.music.DMCMusicPlaybackService"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v9, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 484
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 485
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 463
    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$600(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v20

    const-string v21, "com.htc.music.DMCMusicPlaybackService"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v9, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 467
    :catch_1
    move-exception v14

    .line 469
    .restart local v14       #e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 470
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v14

    .line 472
    .local v14, e:Ljava/lang/NullPointerException;
    const-string v20, "[DMCMusicPlaybackService]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "case MSG_HANDLE_ALBUMART: NullPointerException... mNotify => "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/DMCMusicPlaybackService;->access$600(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v14}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 478
    .end local v14           #e:Ljava/lang/NullPointerException;
    :cond_13
    const-string v20, "[DMCMusicPlaybackService]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Handle Album Art...fail to save file to SD card...filePath = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 486
    :catch_3
    move-exception v14

    .line 488
    .local v14, e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 491
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    .end local v13           #dlnapath:Ljava/lang/String;
    .end local v14           #e:Ljava/io/IOException;
    :cond_14
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "Handle Album Art...afDescriptor is null or length is 0..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    .end local v3           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .end local v16           #filename:Ljava/lang/String;
    :cond_15
    const-string v20, "[DMCMusicPlaybackService]"

    const-string v21, "Handle Album Art...Incorrect Server/content..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 502
    .end local v6           #contentID:Ljava/lang/String;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v8           #cvContentID:Ljava/lang/String;
    .end local v9           #cvPosition:I
    .end local v10           #cvServerID:Ljava/lang/String;
    .end local v11           #cvShufflemode:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v19           #serverID:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/DMCMusicPlaybackService;->access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v20 .. v21}, Lcom/htc/music/DMCMusicPlaybackService;->access$202(Lcom/htc/music/DMCMusicPlaybackService;Z)Z

    goto/16 :goto_0

    .line 507
    :pswitch_5
    const-string v20, "interval"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 509
    .local v17, interval:I
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->getNowplayingQueue(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 510
    :catch_4
    move-exception v14

    .line 512
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 518
    .end local v14           #e:Landroid/os/RemoteException;
    .end local v17           #interval:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/DMCMusicPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
