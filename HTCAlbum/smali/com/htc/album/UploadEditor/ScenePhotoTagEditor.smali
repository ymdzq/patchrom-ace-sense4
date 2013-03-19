.class public Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "ScenePhotoTagEditor.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$1;,
        Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;,
        Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$ViewScrollStateChangedListener;,
        Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$onTagButtonClickListener;,
        Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$UploadEditorConstants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">;",
        "Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;"
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_UPLOADEDITOR:I = 0x2

.field private static final HEADER_BAR_UPLOADEDITOR:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "ScenePhotoTagEditor"


# instance fields
.field protected mCurrentIndex:I

.field protected mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mIsUploading:Z

.field protected mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

.field private mService:Ljava/lang/String;

.field protected mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    iput v1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    iput-boolean v1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mIsUploading:Z

    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mService:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private adjustMainViewOffset(Landroid/content/res/Configuration;)V
    .locals 8

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_TOP_PORT_DIMEN:I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_LEFT_PORT_DIMEN:I

    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    goto :goto_0

    :cond_2
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_TOP_LAND_DIMEN:I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_LEFT_LAND_DIMEN:I

    goto :goto_1
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->adapterIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAnimationDuration()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getFocusIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    return v0
.end method

.method public getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    iget-boolean v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mIsUploading:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSceneBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mService:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    return-object v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onCancel()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onAnimationEnd(I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    const/4 v0, 0x1

    return v0
.end method

.method public onBindAdapter()V
    .locals 3

    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onBindAdapter]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)V

    const/16 v0, 0x4f4f

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    return-void
.end method

.method public onClickTagButton()V
    .locals 2

    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onClickTagButton]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onClickTagButton()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->adjustMainViewOffset(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/UploadEditorViewManager;->relayout(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConfirm()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->isDataReady()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget v4, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Lcom/htc/album/addons/UploadEditorViewManager;->savePreviousEditorView(I)V

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v3

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mIsUploading:Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onConfirm()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mIsUploading:Z

    if-ne v5, v3, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    goto :goto_0
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onConfirm()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onCancel()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    :cond_0
    return-object v0
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

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x2040256

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x204025b

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 9

    const/4 v8, 0x1

    const-string v6, "ScenePhotoTagEditor"

    const-string v7, "[HTCAlbum][ScenePhotoTagEditor][onCreateScene]: "

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v6, "ScenePhotoTagEditor"

    const-string v7, "[HTCAlbum][ScenePhotoTagEditor][onCreateScene]: skip..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    new-instance v6, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v6, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v6, "TEXTURE_MAX_COUNT"

    const/16 v7, 0x14

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "FULL_FILM_FLAG"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v1, v3}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    iget-object v6, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    new-instance v6, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$ViewScrollStateChangedListener;

    invoke-direct {v6, p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)V

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    new-instance v6, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;

    invoke-direct {v6, p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)V

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsOnlineTagEditor(Z)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v8, :cond_1

    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_TOP_PORT_DIMEN:I

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_LEFT_PORT_DIMEN:I

    :goto_1
    int-to-float v6, v4

    int-to-float v7, v5

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    goto :goto_0

    :cond_1
    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_TOP_LAND_DIMEN:I

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_MAINVIEW_LEFT_LAND_DIMEN:I

    goto :goto_1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "ScenePhotoTagEditor"

    const-string v3, "[HTCAlbum][ScenePhotoTagEditor][onEnterScene]:  "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;

    invoke-interface {v1, v4}, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;->sceneSourceFactory(Ljava/lang/String;)Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    :cond_0
    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;

    invoke-interface {v0, v4}, Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;->sceneSourceFactory(Ljava/lang/String;)Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    :cond_1
    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2, p0, v3}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onCreate(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->isDefaultDisplayScreenControl()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->createFooterBar(IZ)V

    goto :goto_0
.end method

.method public onFilmstripItemSelected(I)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x10

    iget v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onRemoveMessage(I)V

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    const/16 v0, 0x1f4

    invoke-virtual {p0, v2, v3, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->invalidateControlBars()V

    goto :goto_0
.end method

.method public onHideUploadEditorViewManager()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onDisplayEditorViewer(Z)V

    return-void
.end method

.method public onLeaveScene()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLeaveScene()V

    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v2, p1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onMessage(Landroid/os/Message;)Z

    move-result v1

    :cond_1
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v2, v1

    goto :goto_0

    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onScrollStateChange(I)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onHideUploadEditorViewManager()V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onShowUploadEditorViewManager()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x4f4f -> :sswitch_0
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onNewAdapter]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0, p1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onNewAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onNotifyUpdateComplete]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 3

    const-string v0, "ScenePhotoTagEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ScenePhotoTagEditor][onNotifyUpdating]:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    goto :goto_0
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
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onConfirm()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onCancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPause()V

    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onPause]:"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onPause]: gotoPreviousScene."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    goto :goto_0
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseInScreenControl(I)V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->setEnableControlBarAnimation(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->setEnableControlBarAnimation(Z)V

    :goto_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPhaseOutScreenControl(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method public onPrepareAnimation(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x5

    const v5, 0x20401ee

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v4, 0x4

    const v5, 0x204025b

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onScrollStateChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onSendToBackground]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->detach()V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->onDestroy()V

    iput-boolean v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mIsUploading:Z

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->onEnableProgressLoading(Z)V

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onSendToForeground]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onSendToForeground(Landroid/os/Bundle;)V

    new-instance v0, Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->getServiceSource()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->initialize(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->attachTo(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    new-instance v1, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$onTagButtonClickListener;

    invoke-direct {v1, p0, v3}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$onTagButtonClickListener;-><init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v3}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->adjustMainViewOffset(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->invalidateControlBars()V

    return-void
.end method

.method public onShowUploadEditorViewManager()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->onDisplayEditorViewer(Z)V

    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    const-string v0, "ScenePhotoTagEditor"

    const-string v1, "[HTCAlbum][ScenePhotoTagEditor][onUnbindAdapter]:  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onUnbindAdapter()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)V

    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0a006d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "ScenePhotoTagEditor"

    return-object v0
.end method
