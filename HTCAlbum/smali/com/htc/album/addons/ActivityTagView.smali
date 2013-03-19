.class public Lcom/htc/album/addons/ActivityTagView;
.super Lcom/htc/album/AlbumMain/MainActivityBase;
.source "ActivityTagView.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/ActivityTagView$1;,
        Lcom/htc/album/addons/ActivityTagView$Ball;,
        Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

.field private mBall:Landroid/view/View;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurMode:I

.field private mIntent:Landroid/content/Intent;

.field private mMainView:Lcom/htc/album/addons/LocalTagView;

.field private mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;-><init>()V

    const-string v0, "ActivityTagView"

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBall:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/ActivityTagView;->mCurMode:I

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/ActivityTagView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 0

    return-void
.end method

.method protected createAdapter()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->isCustomerSmartFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/htc/album/addons/AdapterTagPhotos;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/AdapterTagPhotos;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

    iget-object v2, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/AdapterTagPhotos;->setForwardIntent(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/AdapterTagPhotos;->setUIHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected createMainView()V
    .locals 3

    new-instance v0, Lcom/htc/album/addons/LocalTagView;

    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mAdapter:Lcom/htc/album/addons/AdapterTagPhotos;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/addons/LocalTagView;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/LocalTagView;->setActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0}, Lcom/htc/album/addons/LocalTagView;->onCreate()V

    return-void
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableBroadcastReceiver()V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/ActivityTagView;Lcom/htc/album/addons/ActivityTagView$1;)V

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaConnect(Landroid/content/IntentFilter;)V

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaScan(Landroid/content/IntentFilter;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/ActivityTagView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "skyer"

    const-string v2, "skyer register broadcast"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initPageComponents()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->createAdapter()V

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->createMainView()V

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->enableBroadcastReceiver()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/AlbumMain/MainActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/album/addons/LocalTagView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/LocalTagView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->onHandleActionBarBarLayoutChange()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/ActivityTagView;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/ActivityTagView;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->syncExternalRequest()V

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->initPageComponents()V

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->onHandleActionBarBarLayoutChange()V

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0}, Lcom/htc/album/addons/LocalTagView;->onDestroy()V

    :cond_0
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0}, Lcom/htc/album/addons/LocalTagView;->onConfirm()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mMainView:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0}, Lcom/htc/album/addons/LocalTagView;->onCancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x5

    const v4, 0x20401ee

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x4

    const v4, 0x7f0a0001

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->enableBroadcastReceiver()V

    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/ActivityTagView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onStop()V

    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public syncExternalRequest()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    const-string v2, "upload_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/addons/ActivityTagView;->mCurMode:I

    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "service"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/ActivityTagView;->mServiceName:Ljava/lang/String;

    return-void
.end method
