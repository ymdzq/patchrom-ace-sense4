.class Lcom/htc/music/online/LoginHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "LoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/LoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/LoginHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/online/LoginHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/music/online/LoginHelper$1;->this$0:Lcom/htc/music/online/LoginHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 130
    if-nez p2, :cond_1

    .line 131
    const-string v1, "[LoginHelper]"

    const-string v2, "[mSinaAccountChangeReceiver.onReceive] intent cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/LoginHelper$1;->this$0:Lcom/htc/music/online/LoginHelper;

    #getter for: Lcom/htc/music/online/LoginHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/online/LoginHelper;->access$000(Lcom/htc/music/online/LoginHelper;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 135
    const-string v1, "[LoginHelper]"

    const-string v2, "[mSinaAccountChangeReceiver.onReceive] mHandler cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 140
    const-string v1, "[LoginHelper]"

    const-string v2, "[mSinaAccountChangeReceiver.onReceive] action cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_3
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/htc/music/online/LoginHelper$1;->this$0:Lcom/htc/music/online/LoginHelper;

    #getter for: Lcom/htc/music/online/LoginHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/online/LoginHelper;->access$000(Lcom/htc/music/online/LoginHelper;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x186a1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
