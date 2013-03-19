.class Lcom/htc/music/online/FriendsCollectionDetailActivity$10;
.super Landroid/content/BroadcastReceiver;
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
    .line 1666
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$10;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1670
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1673
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$10;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;
    invoke-static {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    move-result-object v1

    const v2, 0x186a1

    invoke-virtual {v1, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 1675
    :cond_0
    return-void
.end method
