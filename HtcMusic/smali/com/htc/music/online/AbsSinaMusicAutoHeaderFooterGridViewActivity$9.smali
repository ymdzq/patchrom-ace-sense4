.class Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "AbsSinaMusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 484
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    sget-object v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v4, "ACTION_MEDIA_SCANNER_STARTED"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->showSpinner(Z)V

    .line 511
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 512
    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 513
    :cond_1
    :goto_1
    return-void

    .line 488
    :cond_2
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 489
    sget-object v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v4, "ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    #getter for: Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z
    invoke-static {v3}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->access$000(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 491
    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v3, v5}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->showSpinner(Z)V

    goto :goto_0

    .line 493
    :cond_3
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    sget-object v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v4, "ACTION_MEDIA_UNMOUNTED"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 498
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 501
    .local v1, data:Landroid/net/Uri;
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 504
    sget-object v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive another storage unmount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 507
    :cond_4
    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    #calls: Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->hideHtcContextMenu()V
    invoke-static {v3}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->access$100(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    .line 508
    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_0

    .line 509
    iget-object v3, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$9;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto/16 :goto_0
.end method
