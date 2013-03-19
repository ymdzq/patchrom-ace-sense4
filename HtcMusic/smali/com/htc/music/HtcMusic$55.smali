.class Lcom/htc/music/HtcMusic$55;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->timeoutAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 9259
    iput-object p1, p0, Lcom/htc/music/HtcMusic$55;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v1, 0xf

    .line 9262
    if-eqz p1, :cond_0

    .line 9263
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 9265
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$55;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9266
    iget-object v0, p0, Lcom/htc/music/HtcMusic$55;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 9267
    iget-object v0, p0, Lcom/htc/music/HtcMusic$55;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 9269
    :cond_1
    return-void
.end method
