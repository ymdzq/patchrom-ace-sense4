.class public Lcom/htc/album/TabPluginDevice/LockScreen;
.super Landroid/app/Activity;
.source "LockScreen.java"


# static fields
.field private static final REQ_CODE:I = 0x1e240

.field private static final TAG:Ljava/lang/String; = "LockScreen"


# instance fields
.field private exception:Z

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LockScreen;->exception:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v2, 0x7f05

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const v2, 0x7f0a0080

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    const-string v0, "com.htc.launcher.lockscreen.WallpaperChanged"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.launcher.lockscreen.WallpaperChanged"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/LockScreen;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "LockScreen"

    const-string v3, "Send WallpaperChanged broadcast!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LockScreen;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "LockScreen::onPause"

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 7

    const/16 v6, 0x7f05

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v3, "LockScreen::onResume"

    invoke-static {v3}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LockScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.CropImage"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "cropType"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LockScreen;->exception:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v2, v6}, Lcom/htc/album/TabPluginDevice/LockScreen;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LockScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CAN_RESET_DEFAULT"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "cropType"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/LockScreen;->exception:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v2, v6}, Lcom/htc/album/TabPluginDevice/LockScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
