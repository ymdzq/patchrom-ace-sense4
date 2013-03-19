.class Lcom/htc/music/online/FriendsCollectionDetailActivity$3;
.super Landroid/os/Handler;
.source "FriendsCollectionDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/FriendsCollectionDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 220
    :pswitch_1
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    invoke-static {v3, v5}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$102(Lcom/htc/music/online/FriendsCollectionDetailActivity;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    .line 221
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;
    invoke-static {v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->updateAlbumArt(Landroid/graphics/Bitmap;)V

    .line 222
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    sget-object v4, Lcom/htc/music/online/SinaActions;->GET_COLLECTION_DETAIL:Lcom/htc/music/online/SinaActions;

    invoke-virtual {v3, v4}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->doAction(Lcom/htc/music/online/SinaActions;)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->hideHtcContextMenu()V
    invoke-static {v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$200(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    .line 234
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->onBackPressed()V

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    .line 238
    .local v0, detail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    invoke-static {v3, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$102(Lcom/htc/music/online/FriendsCollectionDetailActivity;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    .line 239
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->setDetailToUI(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    invoke-static {v3, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$300(Lcom/htc/music/online/FriendsCollectionDetailActivity;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V

    goto :goto_0

    .line 242
    .end local v0           #detail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    :pswitch_4
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->decreaseQueryingCount()V
    invoke-static {v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$400(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    .line 243
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/music/online/sinamusic/SnsException;

    .line 244
    .local v1, e:Lcom/htc/music/online/sinamusic/SnsException;
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->handleSnsException(Lcom/htc/music/online/sinamusic/SnsException;)V
    invoke-static {v3, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$500(Lcom/htc/music/online/FriendsCollectionDetailActivity;Lcom/htc/music/online/sinamusic/SnsException;)V

    goto :goto_0

    .line 247
    .end local v1           #e:Lcom/htc/music/online/sinamusic/SnsException;
    :pswitch_5
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->showLoadingProgressDialog(Z)V
    invoke-static {v3, v4}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$600(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)V

    .line 248
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->clearQueryingCount()V
    invoke-static {v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$700(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    goto :goto_0

    .line 251
    :pswitch_6
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->showLoadingProgressDialog(Z)V
    invoke-static {v3, v4}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$600(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)V

    .line 252
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    .line 253
    .local v2, songDetail:Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-static {v3, v2}, Lcom/htc/music/online/Util;->showSongDetail(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
