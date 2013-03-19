.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcSong;
.super Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
.source "HtcSong.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;,
        Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;,
        Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;
    }
.end annotation


# instance fields
.field protected albumArt:Ljava/lang/String;

.field protected albumName:Ljava/lang/String;

.field protected artistName:Ljava/lang/String;

.field protected mimeType:Ljava/lang/String;

.field protected sourceType:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

.field public status:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field protected trackFileName:Ljava/lang/String;

.field protected trackName:Ljava/lang/String;

.field protected urlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;-><init>()V

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->trackName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->trackFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->albumName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->artistName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->urlPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->albumArt:Ljava/lang/String;

    sget-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->UNDEF:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->sourceType:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    sget-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->UNDEF:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    iput-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->status:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    return-void
.end method


# virtual methods
.method public account()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumArt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->albumArt:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->cloudPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudRev()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->id:I

    return v0
.end method

.method public getLocalLastModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalRev()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalRev(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    iget v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->parentId:I

    return v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSongId()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sdk/service/cloudstorage/HtcSong;->getId()I

    move-result v0

    return v0
.end method

.method public getSongTaskId()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sdk/service/cloudstorage/HtcSong;->getParentId()I

    move-result v0

    return v0
.end method

.method public getSourceType()Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->sourceType:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    return-object v0
.end method

.method public getSyncState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTrackFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->trackFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->trackName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->urlPath:Ljava/lang/String;

    return-object v0
.end method

.method public isDir()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract setAlbumArt(Ljava/lang/String;)V
.end method

.method public abstract setAlbumName(Ljava/lang/String;)V
.end method

.method public abstract setArtistName(Ljava/lang/String;)V
.end method

.method public abstract setCloudPath(Ljava/lang/String;)V
.end method

.method public setCloudRev(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->id:I

    return-void
.end method

.method public setLocalLastModified(Ljava/util/Date;)V
    .locals 0

    return-void
.end method

.method public abstract setLocalPath(Ljava/lang/String;)V
.end method

.method public abstract setMimeType(Ljava/lang/String;)V
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setParentId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->parentId:I

    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSongId(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/sdk/service/cloudstorage/HtcSong;->setId(I)V

    return-void
.end method

.method public setSongTaskId(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/sdk/service/cloudstorage/HtcSong;->setParentId(I)V

    return-void
.end method

.method public setSourceType(Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sdk/service/cloudstorage/HtcSong;->sourceType:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    return-void
.end method

.method public setSyncState(Z)V
    .locals 0

    return-void
.end method

.method public abstract setTrackFileName(Ljava/lang/String;)V
.end method

.method public abstract setTrackName(Ljava/lang/String;)V
.end method

.method public abstract setUrlPath(Ljava/lang/String;)V
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
