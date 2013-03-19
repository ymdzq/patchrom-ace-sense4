.class Lcom/htc/music/LandingPageActivity$NonUIHandler;
.super Landroid/os/Handler;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/LandingPageActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2706
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    .line 2707
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2708
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2712
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x2711

    if-ne v3, v4, :cond_0

    .line 2713
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v4, 0x0

    #calls: Lcom/htc/music/LandingPageActivity;->reloadRecentAlbum(Z)V
    invoke-static {v3, v4}, Lcom/htc/music/LandingPageActivity;->access$5000(Lcom/htc/music/LandingPageActivity;Z)V

    .line 2764
    :goto_0
    return-void

    .line 2716
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x2712

    if-ne v3, v4, :cond_2

    .line 2717
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2718
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 2720
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v2

    .line 2723
    .local v2, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v3, "com.htc.music"

    invoke-virtual {v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "play_source"

    invoke-interface {v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "package_name"

    const-string v5, "package_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "label"

    const-string v5, "label"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 2729
    invoke-static {v2}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 2732
    invoke-virtual {v2}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0

    .line 2735
    .end local v2           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_1
    const-string v3, "[LandingPage]"

    const-string v4, "NonUIHandler, MSG_ULOG_USED_APP, data is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2741
    .end local v0           #data:Landroid/os/Bundle;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_5

    .line 2742
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2743
    const-string v3, "[LandingPage]"

    const-string v4, "[onHtcContextItemSelected][ADD_TO_ONLINE_FAVORITES] mAddToFavUtil is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2746
    :cond_3
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$6400(Lcom/htc/music/LandingPageActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/music/LandingPageActivity;->queryMediaInfo(I)I

    move-result v1

    .line 2747
    .local v1, songid:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 2748
    const-string v3, "[LandingPage]"

    const-string v4, "songid is wrong when return from HtcMusic.queryMediaInfo() so cancel ADDTO_ONLINE_FAVORITE"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2751
    :cond_4
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    new-instance v4, Lcom/htc/music/LandingPageActivity$NonUIHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/htc/music/LandingPageActivity$NonUIHandler$1;-><init>(Lcom/htc/music/LandingPageActivity$NonUIHandler;I)V

    invoke-virtual {v3, v4}, Lcom/htc/music/LandingPageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2763
    .end local v1           #songid:I
    :cond_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
