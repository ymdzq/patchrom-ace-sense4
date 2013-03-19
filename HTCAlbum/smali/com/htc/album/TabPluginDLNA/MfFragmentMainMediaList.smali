.class public Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;
.super Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.source "MfFragmentMainMediaList.java"


# instance fields
.field private final DLNA_FULLSCREENVIEW:I

.field private final DLNA_GRIDVIEW:I

.field private final LOG_TAG:Ljava/lang/String;

.field private mGotoScene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;-><init>()V

    const-string v0, "MfFragmentMainMediaList"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->DLNA_GRIDVIEW:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->DLNA_FULLSCREENVIEW:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enable2Pane()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getContentView()I
    .locals 1

    const v0, 0x7f030031

    return v0
.end method

.method protected getIntentBundle()Landroid/os/Bundle;
    .locals 7

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "dlna_intent"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    if-eqz v4, :cond_3

    const-string v5, "dlna_bundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v3, v2

    const-string v5, "browse_info"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_2
    const-string v5, "browse_info"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_3
    const-string v5, "browse_info"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v5, "DLNA_CONTENT"

    const-string v6, "DLNA_CONTENT"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getSceneIdentity()I
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    move v4, v3

    :goto_0
    return v4

    :cond_0
    const/4 v2, 0x0

    const-string v5, "dlna_intent"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_5

    const-string v5, "goto_scene"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    const-string v6, "SceneDlnaGridview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    const-string v6, "SceneDlnaFullscreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const-string v5, "com.htc.album.action.DLNA_VIEW_SERVER_PHOTO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onBackPressedOverride()Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isFromDMC(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v2

    :goto_0
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getSceneCount()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_1
    return v2

    :cond_1
    const-string v4, "MfFragmentMainMediaList"

    const-string v5, "getForegroundScene null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onBackPressedOverride()Z

    move-result v2

    goto :goto_1
.end method

.method public onCreateScene()Z
    .locals 6

    const/4 v2, 0x1

    const-string v3, "MfFragmentMainMediaList"

    const-string v4, "[HTCAlbum][MfFragmentMainMediaList][onCreateScene]..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getSceneIdentity()I

    move-result v1

    const-string v3, "MfFragmentMainMediaList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MfFragmentMainMediaList][onCreateScene]sceneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getIntentBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-ne v1, v2, :cond_1

    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneDlnaFullscreen"

    invoke-virtual {v3, v0, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v4, "SceneDlnaGridview"

    invoke-virtual {v3, v0, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MfFragmentMainMediaList"

    const-string v1, "[HTCAlbum][MfFragmentMainMediaList][onNewIntent]: re-CreateScene"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->onCreateScene()Z

    return-void
.end method

.method public paneRight()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4

    const-string v1, "MfFragmentMainMediaList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainMediaList][sceneFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "SceneDlnaGridview"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "SceneDlnaFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;-><init>()V

    goto :goto_0

    :cond_1
    const-string v1, "MfFragmentMainMediaList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainMediaList][sceneFactory]: Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
