.class Lcom/htc/music/LandingPageActivity$1;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/LandingPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

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

    .line 602
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/LandingPageActivity;->mIsStartMutiProcessActivity:Z

    .line 603
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$1300(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->setIsGotoLogin()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    const/16 v1, 0xc9

    invoke-static {v0, v1, v2, v2}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 607
    return-void
.end method
