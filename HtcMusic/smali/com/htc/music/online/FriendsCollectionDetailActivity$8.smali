.class Lcom/htc/music/online/FriendsCollectionDetailActivity$8;
.super Ljava/lang/Object;
.source "FriendsCollectionDetailActivity.java"

# interfaces
.implements Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;


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
    .line 790
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$8;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/content/Context;ILcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 2
    .parameter "context"
    .parameter "songId"
    .parameter "songDetail"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$8;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->showLoadingProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$600(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)V

    .line 796
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$8;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-static {v0, p3}, Lcom/htc/music/online/Util;->showSongDetail(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V

    .line 797
    return-void
.end method

.method public onReturnError(Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 2
    .parameter "err"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$8;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->showLoadingProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$600(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)V

    .line 802
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$8;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->showLoadingProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$600(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)V

    .line 808
    return-void
.end method
