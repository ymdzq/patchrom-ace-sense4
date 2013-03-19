.class final Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;
.super Landroid/os/Handler;
.source "OnlineRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/OnlineRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/OnlineRequestHandler;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/OnlineRequestHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    .line 177
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 178
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 185
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$NonUiHandler;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    #calls: Lcom/htc/music/online/OnlineRequestHandler;->handleAddToFavorite()V
    invoke-static {v0}, Lcom/htc/music/online/OnlineRequestHandler;->access$400(Lcom/htc/music/online/OnlineRequestHandler;)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
