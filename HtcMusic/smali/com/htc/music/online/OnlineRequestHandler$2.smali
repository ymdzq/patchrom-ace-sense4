.class Lcom/htc/music/online/OnlineRequestHandler$2;
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
    .line 364
    iput-object p1, p0, Lcom/htc/music/online/OnlineRequestHandler$2;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 367
    if-nez p1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$2;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    #calls: Lcom/htc/music/online/OnlineRequestHandler;->showProcessingDialog()V
    invoke-static {v0}, Lcom/htc/music/online/OnlineRequestHandler;->access$500(Lcom/htc/music/online/OnlineRequestHandler;)V

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$2;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    #getter for: Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/music/online/OnlineRequestHandler;->access$600(Lcom/htc/music/online/OnlineRequestHandler;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/htc/music/online/OnlineRequestHandler$2;->this$0:Lcom/htc/music/online/OnlineRequestHandler;

    #getter for: Lcom/htc/music/online/OnlineRequestHandler;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/music/online/OnlineRequestHandler;->access$600(Lcom/htc/music/online/OnlineRequestHandler;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->hide()V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
