.class final Lcom/htc/music/widget/SharedAdapter$4;
.super Ljava/lang/Object;
.source "SharedAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Landroid/os/Bundle;Lcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/htc/music/widget/SharedAdapter;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$innerActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/SharedAdapter;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 500
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v3, p2}, Lcom/htc/music/widget/SharedAdapter;->updateRecord(I)V

    .line 501
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v3, p2}, Lcom/htc/music/widget/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 502
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 503
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v2, ""

    .line 506
    .local v2, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 507
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    const-string v5, "music.intent.extra.track"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    const-string v6, "music.intent.extra.album"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    const-string v7, "music.intent.extra.artist"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    if-nez v2, :cond_0

    .line 510
    const-string v2, ""

    .line 513
    :cond_0
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, packageName:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 518
    const-string v3, "[ShareAdapter]"

    const-string v4, "choose_listener: text, Package is null... "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 537
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 538
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 540
    :cond_2
    return-void

    .line 521
    .restart local v1       #packageName:Ljava/lang/String;
    .restart local v2       #text:Ljava/lang/String;
    :cond_3
    const-string v3, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 524
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/htc/music/online/Util;->checkNetworkAvailableWithDialog(Landroid/content/Context;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/widget/SharedAdapter;->access$102(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 525
    invoke-static {}, Lcom/htc/music/widget/SharedAdapter;->access$100()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    if-nez v3, :cond_1

    .line 527
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$bundle:Landroid/os/Bundle;

    invoke-static {v3, v0, v4}, Lcom/htc/music/online/Util;->shareMusicInfoToSinaWeibo(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 531
    :cond_4
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
