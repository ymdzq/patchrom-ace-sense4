.class Lcom/htc/music/OnlineNowPlayingView$1;
.super Ljava/lang/Object;
.source "OnlineNowPlayingView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/OnlineNowPlayingView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/OnlineNowPlayingView;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/htc/music/OnlineNowPlayingView;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/music/OnlineNowPlayingView$1;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iput-object p2, p0, Lcom/htc/music/OnlineNowPlayingView$1;->val$context:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$1;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    #getter for: Lcom/htc/music/OnlineNowPlayingView;->mIsOnlineInnerType:Z
    invoke-static {v0}, Lcom/htc/music/OnlineNowPlayingView;->access$000(Lcom/htc/music/OnlineNowPlayingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$1;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/OnlineNowPlayingView;->mIsOnlineInnerType:Z
    invoke-static {v0, v1}, Lcom/htc/music/OnlineNowPlayingView;->access$002(Lcom/htc/music/OnlineNowPlayingView;Z)Z

    .line 54
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$1;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/OnlineNowPlayingView;->mIsInnerTypeChanged:Z
    invoke-static {v0, v1}, Lcom/htc/music/OnlineNowPlayingView;->access$102(Lcom/htc/music/OnlineNowPlayingView;Z)Z

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$1;->val$context:Landroid/app/Activity;

    const/16 v1, 0xc9

    invoke-static {v0, v1, v2, v2}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 57
    return-void
.end method
