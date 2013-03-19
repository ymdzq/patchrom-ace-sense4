.class public Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;
.super Ljava/lang/Object;
.source "OpenSenseUIHandler.java"

# interfaces
.implements Lcom/htc/opensense/album/plugin/IUIHandler;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public notifyUICommand(II)I
    .locals 2

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyUICommand(ILjava/lang/Object;)I
    .locals 2

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    goto :goto_0
.end method
