.class Lcom/htc/music/online/OnlineRequestHandler$1;
.super Landroid/os/Handler;
.source "OnlineRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/OnlineRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/OnlineRequestHandler;


# direct methods
.method constructor <init>(Lcom/htc/music/online/OnlineRequestHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/music/online/OnlineRequestHandler$1;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 152
    :sswitch_0
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$1;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    iget-object v0, v0, Lcom/htc/music/online/OnlineRequestHandler;->mLoginHelper:Lcom/htc/music/online/LoginHelper;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$1;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    #getter for: Lcom/htc/music/online/OnlineRequestHandler;->mHasRequestRelogin:Z
    invoke-static {v0}, Lcom/htc/music/online/OnlineRequestHandler;->access$000(Lcom/htc/music/online/OnlineRequestHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$1;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    #calls: Lcom/htc/music/online/OnlineRequestHandler;->actIfNotLogin()V
    invoke-static {v0}, Lcom/htc/music/online/OnlineRequestHandler;->access$100(Lcom/htc/music/online/OnlineRequestHandler;)V

    .line 156
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$1;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    iget-object v0, v0, Lcom/htc/music/online/OnlineRequestHandler;->mLoginHelper:Lcom/htc/music/online/LoginHelper;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/LoginHelper;->onUserLoginStatusChange(Z)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$1;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    #setter for: Lcom/htc/music/online/OnlineRequestHandler;->mHasRequestRelogin:Z
    invoke-static {v0, v1}, Lcom/htc/music/online/OnlineRequestHandler;->access$002(Lcom/htc/music/online/OnlineRequestHandler;Z)Z

    goto :goto_0

    .line 161
    :cond_2
    const-string v0, "[OnlineRequestHandler]"

    const-string v1, "[mMessageHandler.RET_USER_NOT_LOGIN] mLoginHelper is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :sswitch_1
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$1;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    #calls: Lcom/htc/music/online/OnlineRequestHandler;->actAfterLogin()V
    invoke-static {v0}, Lcom/htc/music/online/OnlineRequestHandler;->access$200(Lcom/htc/music/online/OnlineRequestHandler;)V

    goto :goto_0

    .line 168
    :sswitch_2
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$1;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    #calls: Lcom/htc/music/online/OnlineRequestHandler;->actAfterAccountChange()V
    invoke-static {v0}, Lcom/htc/music/online/OnlineRequestHandler;->access$300(Lcom/htc/music/online/OnlineRequestHandler;)V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x186a1 -> :sswitch_2
    .end sparse-switch
.end method
