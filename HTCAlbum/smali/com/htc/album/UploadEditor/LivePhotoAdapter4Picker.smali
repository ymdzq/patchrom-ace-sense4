.class public Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;
.super Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;
.source "LivePhotoAdapter4Picker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LivePhotoAdapter4Picker"

.field private static final PHOTO_DETAILS:I = 0x4

.field private static final VIDEO_DETAILS:I = 0x3


# instance fields
.field private mDownloadPerPhoto:I

.field private mNextDownloadIndex:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v0

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "LivePhotoAdapter4Picker"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    return-object v0
.end method

.method public onErrorNoTagList(Landroid/os/Message;)V
    .locals 1

    iget v0, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    return-void
.end method

.method public onErrorPhotoInfo(Landroid/os/Message;)V
    .locals 1

    iget v0, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    return-void
.end method

.method protected onLoadDataBegin()V
    .locals 0

    return-void
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "LivePhotoAdapter4Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapter4Picker][onLoadDataEnd]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onLoadDataEnd(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    const-string v2, "LivePhotoAdapter4Picker"

    const-string v3, "[HTCAlbum][LivePhotoAdapter4Picker][onLoadDataInBackground]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->getItemRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "photo_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->syncListItem(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onMessageHandler(Landroid/os/Message;)V

    :goto_1
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onNotifyDataSetChange()V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onRequestPhotoDetail(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onRequestPhoto(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onRequestPhotoInfo(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onRequestListTag(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onSyncListTag(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onSyncPhotoInfo(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onSyncPhoto(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onSyncPhotoDetail(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onErrorNoTagList(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onErrorPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2766 -> :sswitch_a
        0x2769 -> :sswitch_9
        0x4e31 -> :sswitch_4
        0x4e34 -> :sswitch_3
        0x4e35 -> :sswitch_1
        0x4e40 -> :sswitch_2
        0x4e89 -> :sswitch_7
        0x4e8a -> :sswitch_6
        0x4e8d -> :sswitch_0
        0x4e91 -> :sswitch_5
        0x4e94 -> :sswitch_8
    .end sparse-switch
.end method

.method public onRequestListTag(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTagList(Lcom/htc/opensense/social/data/Medium;)Z

    :cond_0
    return-void
.end method

.method public onRequestPhoto(Landroid/os/Message;)V
    .locals 2

    const-string v0, "LivePhotoAdapter4Picker"

    const-string v1, "[HTCAlbum][LivePhotoAdapter4Picker][onRequestPhoto]:..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onVerifyFullstripItemStatus(I)V

    return-void
.end method

.method public onRequestPhotoDetail(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->getCount()I

    move-result v1

    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    if-ne v2, v3, :cond_0

    iput v5, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    const-string v2, "LivePhotoAdapter4Picker"

    const-string v3, "[HTCAlbum][LivePhotoAdapter4Picker][onRequestPhotoDetail]: begin..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onNotifyUpdating(Z)V

    :goto_0
    iget v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    iget v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    add-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_1

    const-string v2, "LivePhotoAdapter4Picker"

    const-string v3, "[HTCAlbum][LivePhotoAdapter4Picker][onRequestPhotoDetail]: over skip..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    const-string v2, "LivePhotoAdapter4Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapter4Picker][onRequestPhotoDetail]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    :goto_2
    const/16 v2, 0x4e40

    invoke-virtual {p0, v2, v0, v5}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    const/16 v2, 0x4e34

    invoke-virtual {p0, v2, v0, v5}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    const/16 v2, 0x4e31

    invoke-virtual {p0, v2, v0, v5}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    goto :goto_2
.end method

.method public onRequestPhotoInfo(Landroid/os/Message;)V
    .locals 5

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v3, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumInfo(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v3, "album_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumInfo(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onSyncConnection()V
    .locals 2

    const-string v0, "LivePhotoAdapter4Picker"

    const-string v1, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncConnection]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onLoadData()V

    return-void
.end method

.method public onSyncListTag(Landroid/os/Message;)V
    .locals 6

    const-string v3, "LivePhotoAdapter4Picker"

    const-string v4, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncListTag]:... "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v3}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const-string v3, "tag_update"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "LivePhotoAdapter4Picker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncListTag]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTags(Ljava/util/ArrayList;)V

    :cond_0
    iget v3, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onSyncPhotoDetail(Landroid/os/Message;)V

    return-void
.end method

.method public onSyncPhoto(Landroid/os/Message;)V
    .locals 5

    iget v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    iget v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onVerifyFullstripItemStatus(I)V

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget v3, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    const-string v2, "LivePhotoAdapter4Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhoto]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":IMG_INTEGRITY_THUMBNAIL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onSyncPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    iget v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget v3, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    const-string v2, "LivePhotoAdapter4Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhoto]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":IMG_INTEGRITY_FULLSIZE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncPhotoComplete(Landroid/os/Message;)V

    const-string v0, "LivePhotoAdapter4Picker"

    const-string v1, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhotoComplete]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSyncPhotoDetail(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v1, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->getCount()I

    move-result v0

    iget v1, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_1

    const-string v1, "LivePhotoAdapter4Picker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhotoDetail]: finished..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onNotifyUpdating(Z)V

    const/16 v1, 0x4e94

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    const-string v1, "LivePhotoAdapter4Picker"

    const-string v2, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhotoDetail]: go to next..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x4e35

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncPhotoInfo(Landroid/os/Message;)V
    .locals 4

    const-string v2, "LivePhotoAdapter4Picker"

    const-string v3, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhotoInfo]:... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDescription(Ljava/lang/String;)V

    :cond_0
    iget v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/UploadEditor/LivePhotoAdapter4Picker;->onSyncPhotoDetail(Landroid/os/Message;)V

    return-void
.end method

.method public onUnloadData()V
    .locals 2

    const-string v0, "LivePhotoAdapter4Picker"

    const-string v1, "[HTCAlbum][LivePhotoAdapter4Picker][onUnloadData]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onPause()V

    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDestroy()V

    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUnloadData()V

    return-void
.end method
