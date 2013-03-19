.class public Lcom/htc/album/picker/PickerDeleteScene;
.super Lcom/htc/album/picker/PickerMultiItemBaseScene;
.source "PickerDeleteScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;,
        Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mMaxPickCount:I


# instance fields
.field private mDefaultDelete:I

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mIsShowBestIndicator:Z

.field private mStartDeleting:Z

.field private mTextConfirm:Ljava/lang/String;

.field private mTextTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/picker/PickerDeleteScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;-><init>()V

    iput-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iput-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextConfirm:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mIsShowBestIndicator:Z

    return-void
.end method

.method private ToggleSelectAll(Z)Z
    .locals 8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    iget-object v6, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    monitor-enter v6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    const/4 v4, -0x1

    :try_start_0
    sget v7, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    if-eq v4, v7, :cond_3

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v7, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    if-lt v4, v7, :cond_3

    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->invalidateControlBars()V

    move v4, v5

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_4

    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static synthetic access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/album/picker/PickerDeleteScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/picker/PickerDeleteScene;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mIsShowBestIndicator:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/album/picker/PickerDeleteScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/picker/PickerDeleteScene;)Lcom/htc/album/helper/DeleteManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    return-object v0
.end method


# virtual methods
.method protected getConfirmText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextConfirm:Ljava/lang/String;

    return-object v0
.end method

.method protected getGridViewItemStyle()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextTitle:Ljava/lang/String;

    return-object v0
.end method

.method public onBindAdapter()V
    .locals 5

    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onBindAdapter()V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    new-instance v2, Lcom/htc/album/helper/DeleteManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    new-instance v3, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/picker/PickerDeleteScene$DeleteListener;-><init>(Lcom/htc/album/picker/PickerDeleteScene;Lcom/htc/album/picker/PickerDeleteScene$1;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v2, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    if-ltz v1, :cond_0

    iget v2, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(I)V

    sget-boolean v1, Lcom/htc/album/picker/PickerDeleteScene;->mIsTablet:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->invalidateControlBars()V

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->onCancel()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onCancel()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v1}, Lcom/htc/album/helper/DeleteManager;->isDeleting()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onCancel()V

    goto :goto_0
.end method

.method protected onConfirm()V
    .locals 5

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[PickerDeleteScene][onConfirm]mSceneControl or mAdapter or mDeleteMgr is null!"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    :cond_2
    sget-object v3, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[PickerDeleteScene][onConfirm]activity is null or finishing!"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[PickerDeleteScene][onConfirm]mAdapter.getCollectionInfo() is null!"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v1, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;

    iget-object v3, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, p0}, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;-><init>(Lcom/htc/album/helper/DeleteManager;Ljava/util/ArrayList;Lcom/htc/album/picker/PickerDeleteScene;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    const/4 v3, 0x4

    const v4, 0x20800a6

    const v5, 0x2040265

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    return-object v0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v1, p1}, Lcom/htc/album/helper/DeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "selected_item_for_delete"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDefaultDelete:I

    const-string v1, "is_show_best_indicator"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mIsShowBestIndicator:Z

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextTitle:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2040214

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene;->mTextConfirm:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onItemSelected(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onItemSelected(I)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v7, -0x1

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v4, :cond_0

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v4

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v4

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v4

    goto :goto_0

    :sswitch_0
    const-string v4, "return_can_not_delete"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "return_delete_result"

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "return_can_not_delete"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v7, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v4, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13a0 -> :sswitch_0
        0x13a9 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    move-result-object v0

    new-instance v1, Lcom/htc/album/picker/PickerDeleteScene$1;

    invoke-direct {v1, p0}, Lcom/htc/album/picker/PickerDeleteScene$1;-><init>(Lcom/htc/album/picker/PickerDeleteScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v6, v7

    goto :goto_0

    :sswitch_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChildrenCount()I

    move-result v6

    add-int/lit8 v4, v6, 0x4

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v5

    sget-object v6, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "firstViewPos="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", totalChildren="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", totalItems="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_2
    add-int v6, v1, v4

    if-ge v2, v6, :cond_1

    if-lt v2, v5, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v6}, Lcom/htc/album/helper/DeleteManager;->deleteAllMedias()V

    iput-boolean v7, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->invalidateControlBars()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/album/picker/PickerDeleteScene;->isItemPicked(I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v2}, Lcom/htc/album/picker/PickerDeleteScene;->pickItem(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :sswitch_1
    invoke-direct {p0, v7}, Lcom/htc/album/picker/PickerDeleteScene;->ToggleSelectAll(Z)Z

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, v6}, Lcom/htc/album/picker/PickerDeleteScene;->ToggleSelectAll(Z)Z

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x204014f -> :sswitch_1
        0x20401ec -> :sswitch_0
        0x20401f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteScene;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/htc/album/picker/PickerDeleteScene;->showSelectAllInOptionsMenu(Landroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onStop()V
    .locals 3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcIfKeyguardManager;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/app/HtcIfKeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onStop()V

    return-void
.end method

.method public onUnbindAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->cancelDeleteMedias()V

    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    :cond_0
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onUnbindAdapter()V

    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/picker/PickerDeleteScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method showSelectAllInOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    const/4 v3, -0x1

    sget v4, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    if-eq v3, v4, :cond_0

    sget v3, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    if-le v3, v0, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/htc/album/picker/PickerItemBaseScene;->prepareSelectMenuItem(Landroid/view/Menu;II)Z

    return-void

    :cond_1
    sget v0, Lcom/htc/album/picker/PickerDeleteScene;->mMaxPickCount:I

    goto :goto_0
.end method
