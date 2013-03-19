.class public Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "PickerGeoFolderActivity.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoFolderActivity"


# instance fields
.field private mCarDockListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    new-instance v0, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity$1;-><init>(Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;)V

    iput-object v0, p0, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 3

    iget-object v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;->onNewActionBar(Landroid/app/ActionBar;)Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->getActionBarContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNewActionBar(Landroid/app/ActionBar;)Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;
    .locals 2

    new-instance v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;)V

    return-object v0
.end method

.method public onResumeFragment()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStartFragment()V
    .locals 3

    const-class v0, Lcom/htc/album/addons/carmode/PickerGeoFolderMfFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/carmode/PickerGeoFolderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onStop()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "PickerGeoFolderActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onStop] Exception while unregister car dock listener, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
