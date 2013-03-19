.class Lcom/htc/music/LandingPageActivity$7;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dialog:Lcom/htc/app/HtcProgressDialog;

.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2576
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$7;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$7;->dialog:Lcom/htc/app/HtcProgressDialog;

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/content/Context;ILcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 1
    .parameter "context"
    .parameter "songId"
    .parameter "songDetail"

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$7;->dialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 2583
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$7;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 2585
    :cond_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$7;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-static {v0, p3}, Lcom/htc/music/online/Util;->showSongDetail(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V

    .line 2586
    return-void
.end method

.method public onReturnError(Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 1
    .parameter "err"

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$7;->dialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 2592
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$7;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 2594
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$7;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$7;->this$0:Lcom/htc/music/LandingPageActivity;

    const v2, 0x204026b

    invoke-virtual {v1, v2}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$7;->dialog:Lcom/htc/app/HtcProgressDialog;

    .line 2599
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$7;->dialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 2600
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$7;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 2603
    :cond_0
    return-void
.end method
