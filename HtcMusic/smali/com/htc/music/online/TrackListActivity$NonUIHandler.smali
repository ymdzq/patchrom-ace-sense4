.class final Lcom/htc/music/online/TrackListActivity$NonUIHandler;
.super Landroid/os/Handler;
.source "TrackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/TrackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/TrackListActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/TrackListActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    .line 1334
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1335
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1340
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1342
    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget v3, v3, Lcom/htc/music/online/TrackListActivity;->mCurrentSongId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1344
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 1345
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1347
    :cond_1
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget v4, v4, Lcom/htc/music/online/TrackListActivity;->mCurrentSongId:I

    invoke-interface {v3, v4}, Lcom/htc/music/online/sinamusic/ISinaEngine;->removeFromFavourite(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1348
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget v4, v4, Lcom/htc/music/online/TrackListActivity;->mSelectedPosition:I

    if-le v3, v4, :cond_0

    .line 1349
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget v4, v4, Lcom/htc/music/online/TrackListActivity;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1350
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v2

    .line 1351
    .local v2, ret:Z
    if-nez v2, :cond_0

    .line 1352
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1356
    .end local v2           #ret:Z
    :catch_0
    move-exception v1

    .line 1357
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1363
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    if-eqz v3, :cond_0

    .line 1366
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1367
    :cond_2
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1368
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/music/online/TrackListActivity;->mIsEmptyList:Z

    .line 1370
    :cond_3
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-virtual {v3}, Lcom/htc/music/online/TrackListActivity;->haveMore()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1371
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-boolean v3, v3, Lcom/htc/music/online/TrackListActivity;->mIsEmptyList:Z

    if-eqz v3, :cond_0

    .line 1372
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1373
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/music/online/TrackListActivity;->mIsEmptyList:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1379
    :catch_1
    move-exception v1

    .line 1380
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1377
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-virtual {v4}, Lcom/htc/music/online/TrackListActivity;->getTrackList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/music/online/TrackListActivity;->mSongList:Ljava/util/ArrayList;

    .line 1378
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1384
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1385
    .local v0, cacheStartPos:I
    if-ltz v0, :cond_5

    .line 1386
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-virtual {v4, v0}, Lcom/htc/music/online/TrackListActivity;->cachePlayAllData(I)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/music/online/TrackListActivity;->mCachePlayAllData:Ljava/util/ArrayList;

    .line 1388
    :cond_5
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 1389
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v3, v3, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
