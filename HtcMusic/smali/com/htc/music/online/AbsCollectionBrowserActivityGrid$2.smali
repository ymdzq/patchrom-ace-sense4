.class Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;
.super Landroid/os/Handler;
.source "AbsCollectionBrowserActivityGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x2717

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 220
    :pswitch_1
    const-string v4, "[FriendsCollectionBrowserActivityGrid]"

    const-string v5, "Collection list returned, update the ui"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 222
    .local v3, songlist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;
    invoke-static {v4, v3}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$402(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Ljava/util/List;)Ljava/util/List;

    .line 223
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasData:Z
    invoke-static {v4, v8}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$502(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    .line 225
    const-string v4, "[FriendsCollectionBrowserActivityGrid]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "songlist size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_1
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->updateUIByResult(Ljava/util/List;)V
    invoke-static {v4, v3}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$600(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Ljava/util/List;)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasData:Z
    invoke-static {v4, v7}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$502(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    goto :goto_1

    .line 232
    .end local v3           #songlist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    :pswitch_2
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mInitializer:Lcom/htc/music/online/LoginHelper;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$700(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/LoginHelper;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/music/online/LoginHelper;->onUserLoginStatusChange(Z)V

    .line 233
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 234
    :cond_2
    const-string v4, "[FriendsCollectionBrowserActivityGrid]"

    const-string v5, "Start getting Collection"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    sget-object v5, Lcom/htc/music/online/SinaActions;->GET_FIRST_COLLECTION:Lcom/htc/music/online/SinaActions;

    invoke-virtual {v4, v5}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->doAction(Lcom/htc/music/online/SinaActions;)V

    goto :goto_0

    .line 238
    :cond_3
    const-string v4, "[FriendsCollectionBrowserActivityGrid]"

    const-string v5, "List is not empty"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasRequestRelogin:Z
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$800(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 243
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mInitializer:Lcom/htc/music/online/LoginHelper;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$700(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/LoginHelper;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/music/online/LoginHelper;->onUserLoginStatusChange(Z)V

    .line 247
    :goto_2
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->clearSonglist()V
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$000(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    .line 248
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->updateGridView()V
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$900(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    goto/16 :goto_0

    .line 245
    :cond_4
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasRequestRelogin:Z
    invoke-static {v4, v7}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$802(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    goto :goto_2

    .line 251
    :pswitch_4
    const-string v4, "[FriendsCollectionBrowserActivityGrid]"

    const-string v5, "Next collection list returned, update the ui"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 253
    .local v2, nextSonglist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    if-eqz v2, :cond_5

    .line 254
    const-string v4, "[FriendsCollectionBrowserActivityGrid]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "songlist size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_5
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 257
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasData:Z
    invoke-static {v4, v8}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$502(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    .line 259
    const-string v4, "[FriendsCollectionBrowserActivityGrid]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RET_NEXT_COLLECTION_LIST, mSonglist size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;
    invoke-static {v6}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getGridViewUtilForCollection()Lcom/htc/music/online/MusicGridViewUtilForCollection;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1000(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/MusicGridViewUtilForCollection;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSonglist:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->updateParentMediaList(Ljava/util/List;)V

    .line 262
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v4, v4, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 268
    :goto_3
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1200(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 264
    :cond_6
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasData:Z
    invoke-static {v4, v7}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$502(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    .line 265
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showNoDataToast()V
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1100(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    .line 266
    const-string v4, "[FriendsCollectionBrowserActivityGrid]"

    const-string v5, "No next collection list returned, no more collections"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 271
    .end local v2           #nextSonglist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    :pswitch_5
    const-string v4, "[FriendsCollectionBrowserActivityGrid]"

    const-string v5, "Collection detail returns, play all!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    .line 273
    .local v0, detail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->doActionAfterGetDetail(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    invoke-static {v4, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1300(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V

    .line 274
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showLoadingProgressDialog(Z)V
    invoke-static {v4, v7}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)V

    goto/16 :goto_0

    .line 277
    .end local v0           #detail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/music/online/sinamusic/SnsException;

    .line 278
    .local v1, e:Lcom/htc/music/online/sinamusic/SnsException;
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->handleSnsException(Lcom/htc/music/online/sinamusic/SnsException;)V
    invoke-static {v4, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1500(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Lcom/htc/music/online/sinamusic/SnsException;)V

    .line 280
    .end local v1           #e:Lcom/htc/music/online/sinamusic/SnsException;
    :pswitch_7
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showLoadingProgressDialog(Z)V
    invoke-static {v4, v7}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)V

    .line 281
    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1200(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
