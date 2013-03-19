.class public Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;
.super Lcom/htc/album/picker/PickerSingleItemScene;
.source "PickerGeoPhotoScene.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerGeoPhotoScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/picker/PickerSingleItemScene;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/collection/Collection;->setSortOrder(I)V

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerSingleItemScene;->createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v0

    return-object v0
.end method

.method public enableFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLeftPadding()I
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method protected getParamsPreparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 4

    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->setCacheSet(I)V

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->enableFileCache()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "BUNDLE_ENABLE_QUALITY_OPTIONS"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;->setExtra(Landroid/os/Bundle;)V

    return-object v1
.end method

.method protected getTopPadding()I
    .locals 1

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->CARMODE_ACTION_BAR_HEIGHT_DIMEN:I

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onActionBarClicked(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->onActionBarBackPressed()V

    return-void
.end method

.method public onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->isCarModeActionBarFling(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->onActionBarBackPressed()V

    :cond_0
    return v0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 2

    invoke-super {p0}, Lcom/htc/album/picker/PickerSingleItemScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOrientation(I)V

    return-object v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarTouchEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onItemSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->sendResultBack(Landroid/app/Fragment;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    return-void
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 3

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;

    move-result-object v1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;

    invoke-direct {v0, p1, p2, v1}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    new-instance v2, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene$1;-><init>(Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;)V

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V

    return-object v0
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerSingleItemScene;->onSendToForeground(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->detach(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->attach(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "PickerGeoPhotoScene"

    return-object v0
.end method

.method protected sendResultBack(Landroid/app/Fragment;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 10

    const/4 v9, 0x0

    const-wide v7, 0x406fe00000000000L

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p2, :cond_2

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getLatitude()D

    move-result-wide v1

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getLongitude()D

    move-result-wide v3

    cmpl-double v6, v1, v7

    if-eqz v6, :cond_0

    cmpl-double v6, v3, v7

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    const-string v6, "latitude"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v6, "longitude"

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const/4 v6, -0x1

    invoke-virtual {v0, v6, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1
.end method
