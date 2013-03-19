.class public Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;
.super Lcom/htc/album/TabPluginDevice/LocalDMCScene;
.source "LocalPhotoDMCScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/LocalDMCScene",
        "<",
        "Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_INDEX:Ljava/lang/String; = "image_index"

.field private static final IS_BURST_IMAGE:Ljava/lang/String; = "is_burst_image"

.field public static final LOG_TAG:Ljava/lang/String; = "LocalPhotoDMCScene"


# instance fields
.field private mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

.field private mForcePlay:Z

.field private mLastPlayIndex:I

.field private mSendToBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mSendToBackground:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mForcePlay:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mLastPlayIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->switchToBurstShot()V

    return-void
.end method

.method private onRemoveBurstShotButton()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->detach()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    return-void
.end method

.method private onRequestItemBurstState()V
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$1;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onSetupBurstShotButton()V
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/album/modules/ui/widget/BurstShotButton;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/album/modules/ui/widget/BurstShotButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->attach(Landroid/view/ViewGroup;I)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    new-instance v3, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$2;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene$2;-><init>(Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;)V

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private onShowContinuousShotIndicator(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mBurstShotButton:Lcom/htc/album/modules/ui/widget/BurstShotButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BurstShotButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private onSyncItemBurstState(Landroid/os/Bundle;)V
    .locals 9

    :try_start_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "image_index"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v6, "is_burst_image"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onSetupBurstShotButton()V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onShowContinuousShotIndicator(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "LocalPhotoDMCScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][LocalPhotoDMCScene][onSyncItemBurstState]: Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private switchToBurstShot()V
    .locals 8

    const/4 v7, 0x1

    iget-wide v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    long-to-int v5, v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mLastPlayIndex:I

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v5, v6}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->saveToPerference()V

    const-string v5, "collection_info"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "from_gallery"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "photoId"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "Render"

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v6, "LocalBurstShotDMCScene"

    const/4 v7, 0x0

    invoke-interface {v5, v1, v6, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->disconnectDLNAService()V

    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalPhotoDMCAdapter"

    return-object v0
.end method

.method protected createAdapter(Lcom/htc/album/modules/collection/Collection;Landroid/os/Bundle;)Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    return-object v1
.end method

.method protected getBackIntent()Landroid/content/Intent;
    .locals 6

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.htc.HTCAlbum.MY_MAPVIEWS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.album.action.LAUNCH_LOCATION_PHOTO_FROM_DMC"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Render"

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "key_bucket_id"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "key_folder_name"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "folder_type"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "browse_mode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "collection_info"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getLaunchAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.htc.album.action.LAUNCH_LOCAL_PHOTO_DMC"

    return-object v0
.end method

.method public onLeaveScene()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onRemoveBurstShotButton()V

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onLeaveScene()V

    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onSyncItemBurstState(Landroid/os/Bundle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x220180
        :pswitch_0
    .end packed-switch
.end method

.method public onRendererConnected(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onRendererConnected(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mForcePlay:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mLastPlayIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->setDataSource(I)V

    iget v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mLastPlayIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->playItemAt(I)V

    const-string v0, "LocalPhotoDMCScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GalleryDLNA][onRendererConnected] Force Play, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mLastPlayIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mForcePlay:Z

    return-void
.end method

.method protected onRequestDetails()V
    .locals 6

    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    return-void
.end method

.method protected onScrollStateScroll()V
    .locals 1

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onScrollStateScroll()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onShowContinuousShotIndicator(Z)V

    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->disconnectDLNAService()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mSendToBackground:Z

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onSendToBackground(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideFullFilmView()V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onRemoveBurstShotButton()V

    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->onSendToForeground(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mSendToBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mForcePlay:Z

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->connectDLNAService()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->mSendToBackground:Z

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onRequestItemBurstState()V

    return-void
.end method

.method protected requestPlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->isSecureSendToForeground()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoDMCScene;->onRequestItemBurstState()V

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalDMCScene;->requestPlay()V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalPhotoDMCScene"

    return-object v0
.end method
