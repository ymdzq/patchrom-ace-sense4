.class final Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;
.super Landroid/os/Handler;
.source "FriendsCollectionDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/FriendsCollectionDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# static fields
.field private static final ADD_TO_FAVORITE:I = 0xa

.field private static final GET_SONG_DETAIL:I = 0xd

.field private static final MERGE_DL_ALBUM_ART:I = 0x8

.field private static final PLAY_ALL:I = 0x4

.field private static final QUERY_ALBUM_INFO:I = 0x0

.field private static final QUERY_TRACK_CURSOR:I = 0x1

.field private static final SHUFFLE_ALL:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "looper"

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    .line 1029
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1031
    const-string v0, "[FriendsCollectionDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NonUIHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    return-void
.end method


# virtual methods
.method public addToFavorite(Lcom/htc/music/online/sinamusic/WrapperSong;)V
    .locals 1
    .parameter "song"

    .prologue
    .line 1079
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1080
    return-void
.end method

.method public getCollectionDetail(Ljava/lang/String;)V
    .locals 1
    .parameter "albumId"

    .prologue
    .line 1035
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1036
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 1084
    const-string v7, "[FriendsCollectionDetailActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<<< NonUIHandler >>>>> + msg.what = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1163
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1088
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 1090
    .local v4, favorite:Lcom/htc/music/online/sinamusic/WrapperSong;
    invoke-virtual {v4}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v5

    .line 1091
    .local v5, songId:I
    invoke-virtual {v4}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v6

    .line 1092
    .local v6, songName:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1093
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "requestActionType"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1094
    const-string v7, "songId"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1095
    const-string v7, "songName"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOnlineRequestHandler:Lcom/htc/music/online/OnlineRequestHandler;
    invoke-static {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1900(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/OnlineRequestHandler;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/music/online/OnlineRequestHandler;->request(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1099
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v4           #favorite:Lcom/htc/music/online/sinamusic/WrapperSong;
    .end local v5           #songId:I
    .end local v6           #songName:Ljava/lang/String;
    :pswitch_2
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->increaseQueryingCount()V
    invoke-static {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    .line 1100
    const-string v7, "[FriendsCollectionDetailActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NonUIHandler.handleMessage][QUERY_ALBUM_INFO] msg.obj="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v8, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2100(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryCollectionDetailByUrl(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2200(Lcom/htc/music/online/FriendsCollectionDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    :pswitch_3
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->increaseQueryingCount()V
    invoke-static {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    .line 1106
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v8, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2100(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryCollectionDetailByUrl(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2200(Lcom/htc/music/online/FriendsCollectionDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    :pswitch_4
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 1123
    :pswitch_5
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_0

    .line 1142
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    .line 1143
    .local v2, detail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    if-eqz v2, :cond_0

    .line 1146
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistName()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2402(Lcom/htc/music/online/FriendsCollectionDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1148
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2400(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2400(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "<unknown>"

    iget-object v8, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2400(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1149
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistOwnerName()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2502(Lcom/htc/music/online/FriendsCollectionDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1151
    :cond_1
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistIntro()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionDescript:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2602(Lcom/htc/music/online/FriendsCollectionDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1152
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;
    invoke-static {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->hideEmptyErrorViewUI()V

    goto/16 :goto_0

    .line 1157
    .end local v2           #detail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    :pswitch_7
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1158
    .local v3, detailsongId:I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1159
    .local v1, data:Landroid/os/Bundle;
    const-string v7, "song_detail"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1160
    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v7, v7, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mContext:Landroid/content/Context;

    const/16 v8, 0xcf

    iget-object v9, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2700(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-static {v7, v8, v9, v1}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1086
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public mergeDlAlbumArt(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    .locals 1
    .parameter "detail"

    .prologue
    .line 1075
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1076
    return-void
.end method

.method public queryTrackList()V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->sendEmptyMessage(I)Z

    .line 1040
    return-void
.end method
