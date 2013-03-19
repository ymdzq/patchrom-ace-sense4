.class Lcom/htc/music/HtcMusic$5;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->onCreate(Landroid/os/Bundle;)V
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
    .line 704
    iput-object p1, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

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

    .line 706
    iget-object v0, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/HtcMusic;->mIsOnlineInnerType:Z

    .line 708
    iget-object v0, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/HtcMusic;->mIsInnerTypeChanged:Z

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->setIsGotoLogin()V

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    const/16 v1, 0xc9

    invoke-static {v0, v1, v2, v2}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 714
    return-void
.end method
