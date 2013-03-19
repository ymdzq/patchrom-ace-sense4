.class public Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.source "SmartEventThumbnailScene.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SmartEventThumbnailScene"


# direct methods
.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    return-void
.end method


# virtual methods
.method protected getFolderSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "SmartFolderScene"

    return-object v0
.end method

.method protected getFullscreenSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "SmartEventFullscreenScene"

    return-object v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-nez v0, :cond_2

    const-string v5, "SmartEventThumbnailScene"

    const-string v6, "[HTCAlbum][SmartEventThumbnailScene][getHeaderSubtitle]"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    instance-of v4, v1, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    if-eqz v4, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->getDateName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V

    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->unbindAddressListener(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDestroyScene()V

    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSendToForeground(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->retrieveAddress(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    return-void
.end method

.method public onUpdateAddressBegin()V
    .locals 0

    return-void
.end method

.method public onUpdateAddressEnd()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/htc/album/TabPluginDevice/smart/EventHelper;->handleRetrievedAddress(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateAddressResult([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 0

    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "SmartEventThumbnailScene"

    return-object v0
.end method
