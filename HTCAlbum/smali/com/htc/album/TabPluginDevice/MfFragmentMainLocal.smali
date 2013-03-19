.class public Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.super Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.source "MfFragmentMainLocal.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;
    }
.end annotation


# static fields
.field private static final JUMP_ID_CONTINUOUSSHOTVIEW:I = 0x4

.field private static final JUMP_ID_FOLDERVIEW:I = 0x1

.field private static final JUMP_ID_FULLSCREENVIEW:I = 0x3

.field private static final JUMP_ID_SMART_EVENT_FULLSCREEN_VIEW:I = 0x5

.field private static final JUMP_ID_SMART_EVENT_THUMNBNAILS_VIEW:I = 0x6

.field private static final JUMP_ID_THUMBNAILVIEW:I = 0x2


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

.field private mAddressRetrieveErrorToast:Landroid/widget/Toast;

.field private mAddressRetrievetoast:Landroid/widget/Toast;

.field private mGotoPause:Z

.field private mJumpToScene:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;-><init>()V

    const-string v0, "MfFragmentMainLocal"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->saveTipsDialogStatus(Z)V

    return-void
.end method

.method private onPrepareActionBar(Ljava/lang/String;Z)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-nez v3, :cond_2

    invoke-interface {v0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_3

    invoke-interface {v0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterFullscreenMode()V

    goto :goto_1

    :cond_4
    invoke-interface {v0, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    goto :goto_0
.end method

.method private saveTipsDialogStatus(Z)V
    .locals 6

    const-string v3, "MfFragmentMainLocal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MfFragmentMainLocal][saveTipsDialogStatus]: auto retrieve: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->setAutoRetrievePref(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    const-string v4, "SmartFolderScene"

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_0

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->finishDialogFirstTimer(Z)V

    :cond_0
    return-void
.end method

.method private showAddressRetrieveErrorToast()V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a005d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showAddressRetrieveToast()V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a005c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public addressLookup(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->addressLookup(Z)V

    return-void
.end method

.method public bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V

    return-void
.end method

.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v4

    :cond_0
    iput v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isFromDMC(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v6, "dmc_launched"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    :cond_1
    :goto_1
    const-string v6, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    :cond_2
    const-string v6, "folder_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v6, "com.htc.HTCAlbum.SMART"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    :cond_3
    :goto_2
    iget v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    if-eq v6, v5, :cond_4

    invoke-virtual {p0, v4, v4}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    const-string v6, "dmc_launched"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2

    :cond_7
    const-string v6, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x4

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2

    :cond_8
    const-string v6, "com.htc.album.action.ALL_VIDEOS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    :cond_9
    const-string v6, "folder_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v6, "com.htc.HTCAlbum.SMART"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x6

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2

    :cond_a
    const/4 v6, 0x2

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableErrorScene()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAddressResultMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getAddressResultMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected getContentView()I
    .locals 1

    const v0, 0x7f030031

    return v0
.end method

.method protected getFragmentReference()Lcom/htc/app/mf/MfFragment;
    .locals 0

    return-object p0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method

.method public gotoErrorScene(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v1, 0x0

    const-string v2, "SceneLocalError"

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public isFinderSearchInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->isFinderSearchInProgress()Z

    move-result v0

    return v0
.end method

.method public isInErrorScene()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneLocalError"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v6, "MfFragmentMainLocal"

    const-string v7, "[HTCAlbum][MfFragmentMainLocal][onActivityResult] + "

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v11, :cond_0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPrepareActionBar(Ljava/lang/String;Z)V

    const-string v6, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "MfFragmentMainLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MfFragmentMainLocal][onActivityResult] action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "MfFragmentMainLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MfFragmentMainLocal][onActivityResult] bucketid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "key_bucket_id"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    new-instance v5, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x1002

    invoke-direct {v5, p0, v6, p3, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalPhotoBurstShot"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v6, "goFinish"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    new-instance v5, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x1001

    invoke-direct {v5, p0, v6, p3, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalPhotoFullscreen"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v6, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v6, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :sswitch_1
    if-ne p2, v11, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "goFinish"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalPhotoFullscreen"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v6, "SceneLocalError"

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v7, "SceneLocalFolder"

    invoke-virtual {v6, v10, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1390 -> :sswitch_0
        0x139b -> :sswitch_1
        0x13a1 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressedOverride()Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    const-string v7, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v2, v6

    :goto_0
    if-ne v6, v2, :cond_3

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v1

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getSceneCount()I

    move-result v6

    if-nez v6, :cond_1

    move v1, v5

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onBackPressedOverride()Z

    move-result v1

    goto :goto_1
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onBroadcastMediaConnected]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return v2

    :cond_0
    const-string v0, "media_connected"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onBroadcastMediaDisconnected]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "media_connected"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v2, "MfFragmentMainLocal"

    const-string v3, "[HTCAlbum][MfFragmentSunnyMainBase][onConfigurationChanged]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->paneRight()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enable2Pane(ZZ)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onCreate(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v1, p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->setMessageHost(Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateScene()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v1

    const-string v5, "MfFragmentMainLocal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MfFragmentMainLocal][onCreateScene]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalError"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07002b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v3, v5, v6

    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5, v9, v3, v9, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setPadding(IIII)V

    :cond_0
    return v10

    :cond_1
    iget v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    packed-switch v5, :pswitch_data_0

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->startOpeningScene(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SmartEventFullscreenScene"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SmartEventThumbnailScene"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    const/16 v5, 0x1003

    invoke-direct {v4, p0, v0, v2, v5}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoFullscreen"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoThumbnail"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;

    const/16 v5, 0x1002

    invoke-direct {v4, p0, v0, v2, v5}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$DecodeImageThread;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Landroid/app/Activity;Landroid/content/Intent;I)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoBurstShot"

    invoke-virtual {v5, v8, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestory()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onDestroy()V

    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onDestroy()V

    return-void
.end method

.method protected onHandleSceneErrorReport(Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v4, "MfFragmentMainLocal"

    const-string v5, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: exit 1"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    const-string v4, "scene_identifier"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scene_error_report"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "MfFragmentMainLocal"

    const-string v5, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: exit 2"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "MfFragmentMainLocal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SceneLocalFolder"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SmartFolderScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalError"

    invoke-virtual {v4, v7, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v4, "SceneLocalPhotoThumbnail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SmartEventThumbnailScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SmartEventFullscreenScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    if-nez v1, :cond_0

    const-string v4, "SceneLocalPhotoThumbnail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "SmartEventThumbnailScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_7
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalFolder"

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SmartFolderScene"

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->gotoPreviousScene()V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->startOpeningScene(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->startOpeningScene(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onMessage(Landroid/os/Message;)Z

    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onHandleSceneErrorReport(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->showAddressRetrieveToast()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->showAddressRetrieveErrorToast()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13a5 -> :sswitch_1
        0x13a6 -> :sswitch_2
        0x4ea3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onNewIntent]: Begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onNotifyServiceFirstTimer()V
    .locals 11

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030016

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    const v8, 0x7f09003c

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f0a00ad

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    const v8, 0x7f09003d

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    sget-boolean v8, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->DEFAULT_FIRST_LAUNCH_EVENTS:Z

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    const v8, 0x7f09003e

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v8, 0x7f0a00ae

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->instance()Landroid/app/DialogFragment;

    move-result-object v2

    check-cast v2, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    if-eqz v2, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->isShown()Z

    move-result v9

    if-ne v8, v9, :cond_2

    const-string v8, "MfFragmentMainLocal"

    const-string v9, "[HTCAlbum][MfFragmentMainLocal][onNotifyServiceFirstTimer]: tips sdialog was shown..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;

    invoke-direct {v8, p0, v3}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v2, v8}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->setCallback(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00ac

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->setCustomView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const-string v8, "MfFragmentMainLocal"

    const-string v9, "[HTCAlbum][MfFragmentMainLocal][onNotifyServiceFirstTimer]: show Tips dialog"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onPause()V

    return-void
.end method

.method public onPrepareFullscreenMode()V
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPrepareActionBar(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onReportSceneErrorCheck(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "scene_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, "scene_error_report"

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/16 v1, 0x4ea3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPostMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v1, v2}, Lcom/htc/app/mf/MfMainActivity;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v1, v2}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v1, v2}, Lcom/htc/app/mf/MfMainActivity;->finishFragment(I)V

    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onStart()V

    return-void
.end method

.method public onUpdateErrorScene()V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onUpdateErrorView()V

    :cond_0
    return-void
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4

    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MfFragmentMainLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainLocal][sceneFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const-string v1, "SceneLocalFolder"

    if-eq v1, p1, :cond_1

    const-string v1, "SceneLocalFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    :goto_0
    return-object v0

    :cond_2
    const-string v1, "SceneLocalPhotoThumbnail"

    if-eq v1, p1, :cond_3

    const-string v1, "SceneLocalPhotoThumbnail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    goto :goto_0

    :cond_4
    const-string v1, "SceneLocalPhotoFullscreen"

    if-eq v1, p1, :cond_5

    const-string v1, "SceneLocalPhotoFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;-><init>()V

    goto :goto_0

    :cond_6
    const-string v1, "SceneLocalPhotoBurstShot"

    if-eq v1, p1, :cond_7

    const-string v1, "SceneLocalPhotoBurstShot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;-><init>()V

    goto :goto_0

    :cond_8
    const-string v1, "SmartFolderScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;-><init>()V

    goto :goto_0

    :cond_9
    const-string v1, "SmartEventThumbnailScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    goto :goto_0

    :cond_a
    const-string v1, "SmartEventFullscreenScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventFullscreenScene;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventFullscreenScene;-><init>()V

    goto :goto_0

    :cond_b
    const-string v1, "SceneLocalError"

    if-eq v1, p1, :cond_c

    const-string v1, "SceneLocalError"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;-><init>()V

    goto :goto_0

    :cond_d
    const-string v1, "MfFragmentMainLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainLocal][sceneFactory]: Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setAddressLookUpSource(Ljava/util/HashMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->setAddressLookUpSource(Ljava/util/HashMap;I)V

    return-void
.end method

.method public setEnableNetworkAccessWarning(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->setEnableNetworkAccessWarning(Z)V

    return-void
.end method

.method protected startOpeningScene(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->getDefaultAlbumCollection(Landroid/content/Context;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    move-result-object v0

    sget-object v1, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneLocalFolder"

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SmartFolderScene"

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public unbindAddressListener(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->unbindAddressListener(Ljava/lang/String;)V

    return-void
.end method

.method public unlockNetworkAccessWarning()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->unlockNetworkAccessWarning()V

    return-void
.end method
