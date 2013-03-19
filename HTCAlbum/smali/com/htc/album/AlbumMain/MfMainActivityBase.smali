.class public abstract Lcom/htc/album/AlbumMain/MfMainActivityBase;
.super Lcom/htc/app/mf/MfMainActivity;
.source "MfMainActivityBase.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfMainActivityBase"


# instance fields
.field protected mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsDelayedCreate:Z

.field protected mProgressBarState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;-><init>()V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    new-instance v0, Lcom/htc/album/AlbumMain/MfMainActivityBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase$1;-><init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private onDelayedCreate()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onStartFragment()V

    const/16 v0, 0x1452

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method private onDelayedResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onResumeFragment()V

    return-void
.end method


# virtual methods
.method public bridge synthetic actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->actionBar()Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    move-result-object v0

    return-object v0
.end method

.method public actionBar()Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enable2Pane(ZZ)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MfMainActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MfMainActivityBase][enable2Pane]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->resetFullScreen()V

    if-nez p2, :cond_0

    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    sget v0, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreen(I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreen(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setFullScreenPadding(IIII)V

    goto :goto_0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    iget v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    if-ne v3, v0, :cond_3

    if-nez p1, :cond_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setProgressVisibility(I)V

    :goto_1
    if-eqz p1, :cond_5

    iput v3, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setProgressVisibility(I)V

    goto :goto_1

    :cond_5
    iput v2, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mProgressBarState:I

    goto :goto_0
.end method

.method public enableDropList()V
    .locals 0

    return-void
.end method

.method public enableSourceContentPadding(Z)V
    .locals 0

    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public fullscreenMode(Z)V
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2

    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    :cond_1
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfMainActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/app/mf/MfFragment;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 12

    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: Begin ..+"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v9, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v9}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v4

    sget v9, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {p0, v9}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isFromDMC(Landroid/content/Intent;)Z

    move-result v7

    :cond_1
    instance-of v9, v5, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v9, :cond_3

    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: Right Pane..."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v8, v5

    check-cast v8, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->onBackPressedOverride()Z

    move-result v1

    :cond_3
    instance-of v9, v4, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v9, :cond_6

    if-eqz v1, :cond_4

    if-eqz v7, :cond_6

    :cond_4
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: Left Pane..."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v8, v4

    check-cast v8, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->onBackPressedOverride()Z

    move-result v0

    :cond_6
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "MfMainActivityBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MfMainActivityBase][onBackPressed]: Handle Right: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "MfMainActivityBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MfMainActivityBase][onBackPressed]: Handle Left: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-nez v1, :cond_9

    if-nez v0, :cond_9

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: finish..."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->finish()V

    :cond_9
    :goto_0
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v9

    if-eqz v9, :cond_b

    if-nez v0, :cond_b

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "MfMainActivityBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MfMainActivityBase][onBackPressed]: fragmentCount .."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->finish()V

    :cond_b
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: End ..-"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    const-string v9, "MfMainActivityBase"

    const-string v10, "[HTCAlbum][MfMainActivityBase][onBackPressed]: onBackPressed..."

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6

    const/4 v0, 0x0

    sget v3, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v3}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    instance-of v3, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;

    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    const-string v3, "MfMainActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MfMainActivityBase][onBroadcastReceiveDispatcher]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: Begin"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->requestWindowFeature(I)Z

    const/4 v0, -0x1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-super {p0, p1, v0}, Lcom/htc/app/mf/MfMainActivity;->onCreate(Landroid/os/Bundle;I)V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v3}, Lcom/htc/sunny2/common/HtcPaneManager;->getLandscapePane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;

    move-result-object v1

    invoke-static {p0, v3}, Lcom/htc/sunny2/common/HtcPaneManager;->getPortraitPane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    :cond_0
    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: startUpFragments..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setEntryFragment(I)V

    sget v1, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setLand2PortShowedPane(I)V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-ne v4, v1, :cond_2

    new-array v1, v4, [Ljava/lang/String;

    const-class v2, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-array v2, v4, [Landroid/os/Bundle;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setInitialFragments([Ljava/lang/String;[Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startUpFragments()V

    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: initActionBar..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][onCreate]: End"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/high16 v0, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    aput-object v5, v1, v3

    new-array v2, v4, [Landroid/os/Bundle;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setInitialFragments([Ljava/lang/String;[Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {}, Lcom/htc/album/helper/UserProfilingLog;->dumpUserAccessCount()V

    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onDestroy()V

    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-boolean v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDelayedCreate()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onDelayedResume()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1450
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onPrepareFullscreenMode()V
    .locals 0

    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/htc/app/mf/MfMainActivity;->onResume()V

    iget-boolean v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mIsDelayedCreate:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1452

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1450

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public abstract onResumeFragment()V
.end method

.method public abstract onStartFragment()V
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;-><init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;Lcom/htc/album/AlbumMain/MfMainActivityBase$1;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaConnect(Landroid/content/IntentFilter;)V

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaScan(Landroid/content/IntentFilter;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "MfMainActivityBase"

    const-string v2, "[HTCAlbum][MfMainActivityBase][registerBroadcastReceiver]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "MfMainActivityBase"

    const-string v1, "[HTCAlbum][MfMainActivityBase][unregisterBroadcastReceiver]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
