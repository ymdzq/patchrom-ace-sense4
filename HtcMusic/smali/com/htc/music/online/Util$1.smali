.class final Lcom/htc/music/online/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/htc/music/online/sinamusic/AsyncQueryOnlineSong$OnQuerySongOnlinelistener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "songDetail"

    .prologue
    .line 525
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    const-string v0, "[Util]"

    const-string v1, "[onFinish] Go to Online share!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {p3, p1}, Lcom/htc/music/online/Util;->getBundleFromSongDetail(Lcom/htc/music/online/sinamusic/WrapperSongDetail;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    #calls: Lcom/htc/music/online/Util;->gotoShareToSinaWeibo(Landroid/content/Context;Landroid/os/Bundle;)V
    invoke-static {p1, v0}, Lcom/htc/music/online/Util;->access$100(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 536
    :goto_0
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 539
    :cond_0
    return-void

    .line 532
    :cond_1
    const-string v0, "[Util]"

    const-string v1, "[onFinish] Go to Local share!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onFinish(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "songlistDetail"

    .prologue
    .line 547
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    const-string v0, "[Util]"

    const-string v1, "[onFinish] Go to Online share!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-static {p3}, Lcom/htc/music/online/Util;->getBundleFromSongListDetail(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)Landroid/os/Bundle;

    move-result-object v0

    #calls: Lcom/htc/music/online/Util;->gotoShareToSinaWeibo(Landroid/content/Context;Landroid/os/Bundle;)V
    invoke-static {p1, v0}, Lcom/htc/music/online/Util;->access$100(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 558
    :goto_0
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 561
    :cond_0
    return-void

    .line 554
    :cond_1
    const-string v0, "[Util]"

    const-string v1, "[onFinish] Go to Local share!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onReturnError(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "err"

    .prologue
    .line 512
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 515
    :cond_0
    invoke-static {p1, p3}, Lcom/htc/music/online/Util;->handleSnsException(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)V

    .line 518
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 520
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 505
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    invoke-static {}, Lcom/htc/music/online/Util;->access$000()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 508
    :cond_0
    return-void
.end method
