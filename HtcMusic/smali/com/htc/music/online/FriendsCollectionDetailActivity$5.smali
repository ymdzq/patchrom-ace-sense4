.class Lcom/htc/music/online/FriendsCollectionDetailActivity$5;
.super Ljava/lang/Object;
.source "FriendsCollectionDetailActivity.java"

# interfaces
.implements Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;


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
    .line 296
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private goLogin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;
    invoke-static {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$800(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/util/SnsExceptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->hideErorrMsg()V

    .line 311
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mIsStartMutiProcessActivity:Z
    invoke-static {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$902(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)Z

    .line 312
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v0, v0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mContext:Landroid/content/Context;

    const/16 v1, 0xd0

    invoke-static {v0, v1, v2, v2}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 313
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->onBackPressed()V

    .line 314
    return-void
.end method

.method private retry()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;
    invoke-static {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$800(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/util/SnsExceptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->hideErorrMsg()V

    .line 318
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v1, v1, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCurrentAction:Lcom/htc/music/online/SinaActions;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->doAction(Lcom/htc/music/online/SinaActions;)V

    .line 319
    return-void
.end method


# virtual methods
.method public onNextAction(I)V
    .locals 0
    .parameter "errorType"

    .prologue
    .line 299
    packed-switch p1, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;->goLogin()V

    goto :goto_0

    .line 304
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;->retry()V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
