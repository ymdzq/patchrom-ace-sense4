.class public Lcom/htc/album/TabPluginDevice/LocalDMCActivity;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "LocalDMCActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResumeFragment()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onStart()V

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendPauseCacheIntent(Landroid/content/Context;)V

    return-void
.end method

.method public onStartFragment()V
    .locals 3

    const-class v0, Lcom/htc/album/TabPluginDevice/LocalDMCFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/LocalDMCActivity;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendResumeCacheIntent(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onStop()V

    return-void
.end method
