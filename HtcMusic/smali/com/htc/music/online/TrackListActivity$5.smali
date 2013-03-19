.class Lcom/htc/music/online/TrackListActivity$5;
.super Landroid/os/Handler;
.source "TrackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/TrackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/TrackListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/TrackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1278
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 1280
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/online/TrackListActivity;->mTrackListView:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/htc/music/online/TrackListActivity;->access$600(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1281
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/online/TrackListActivity;->mTrackListView:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/htc/music/online/TrackListActivity;->access$600(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1283
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    iput-boolean v2, v1, Lcom/htc/music/online/TrackListActivity;->isRefreshing:Z

    goto :goto_0

    .line 1286
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v1, v1, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v1, :cond_2

    .line 1287
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v1, v1, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1289
    :cond_2
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    iput-boolean v2, v1, Lcom/htc/music/online/TrackListActivity;->isRefreshing:Z

    .line 1290
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #calls: Lcom/htc/music/online/TrackListActivity;->showProcessDialog(Z)V
    invoke-static {v1, v2}, Lcom/htc/music/online/TrackListActivity;->access$700(Lcom/htc/music/online/TrackListActivity;Z)V

    goto :goto_0

    .line 1293
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #calls: Lcom/htc/music/online/TrackListActivity;->showProgressDialog(Z)V
    invoke-static {v1, v2}, Lcom/htc/music/online/TrackListActivity;->access$300(Lcom/htc/music/online/TrackListActivity;Z)V

    .line 1294
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    iput-boolean v2, v1, Lcom/htc/music/online/TrackListActivity;->isRefreshing:Z

    goto :goto_0

    .line 1297
    :pswitch_3
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #calls: Lcom/htc/music/online/TrackListActivity;->showProgressDialog(Z)V
    invoke-static {v1, v3}, Lcom/htc/music/online/TrackListActivity;->access$300(Lcom/htc/music/online/TrackListActivity;Z)V

    .line 1298
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    iput-boolean v3, v1, Lcom/htc/music/online/TrackListActivity;->isRefreshing:Z

    goto :goto_0

    .line 1301
    :pswitch_4
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-virtual {v1}, Lcom/htc/music/online/TrackListActivity;->showData()V

    goto :goto_0

    .line 1304
    :pswitch_5
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v2, v2, Lcom/htc/music/online/TrackListActivity;->mCachePlayAllData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/music/online/TrackListActivity;->appendSongs(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1307
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/music/online/sinamusic/SnsException;

    .line 1308
    .local v0, snsException:Lcom/htc/music/online/sinamusic/SnsException;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;
    invoke-static {v1}, Lcom/htc/music/online/TrackListActivity;->access$800(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/music/online/util/SnsExceptionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/online/TrackListActivity;->mIsOnStop:Z
    invoke-static {v1}, Lcom/htc/music/online/TrackListActivity;->access$900(Lcom/htc/music/online/TrackListActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;
    invoke-static {v1}, Lcom/htc/music/online/TrackListActivity;->access$800(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/music/online/util/SnsExceptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/online/util/SnsExceptionManager;->hideErorrMsg()V

    .line 1310
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;
    invoke-static {v1}, Lcom/htc/music/online/TrackListActivity;->access$800(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/music/online/util/SnsExceptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-virtual {v1, v2, v0}, Lcom/htc/music/online/util/SnsExceptionManager;->showErrorMsg(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)V

    goto :goto_0

    .line 1314
    .end local v0           #snsException:Lcom/htc/music/online/sinamusic/SnsException;
    :pswitch_7
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #calls: Lcom/htc/music/online/TrackListActivity;->showLoadingItem()V
    invoke-static {v1}, Lcom/htc/music/online/TrackListActivity;->access$1000(Lcom/htc/music/online/TrackListActivity;)V

    goto/16 :goto_0

    .line 1317
    :pswitch_8
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #calls: Lcom/htc/music/online/TrackListActivity;->showProcessDialog(Z)V
    invoke-static {v1, v3}, Lcom/htc/music/online/TrackListActivity;->access$700(Lcom/htc/music/online/TrackListActivity;Z)V

    goto/16 :goto_0

    .line 1320
    :pswitch_9
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$5;->this$0:Lcom/htc/music/online/TrackListActivity;

    #calls: Lcom/htc/music/online/TrackListActivity;->showProcessDialog(Z)V
    invoke-static {v1, v2}, Lcom/htc/music/online/TrackListActivity;->access$700(Lcom/htc/music/online/TrackListActivity;Z)V

    goto/16 :goto_0

    .line 1278
    nop

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
    .end packed-switch
.end method
