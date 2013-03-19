.class public Lcom/htc/album/TabPluginDevice/FolderImage;
.super Lcom/htc/album/modules/collection/SimpleImage;
.source "FolderImage.java"

# interfaces
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGallery;


# static fields
.field public static final DRM_VIDEO_PROJECTION:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content_offset"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content_boundary_offset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/TabPluginDevice/FolderImage;->DRM_VIDEO_PROJECTION:[Ljava/lang/String;

    const-class v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/collection/SimpleImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mSelected:Z

    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    iget v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v6, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[getDisplayImageInputStream] Null context when get input stream"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-boolean v6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    if-ne v7, v6, :cond_2

    sget-object v6, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[getDisplayImageInputStream] Drm video should use getDisplayImageUri to decode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    if-ne v7, v6, :cond_0

    :try_start_0
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v6, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[getDisplayImageInputStream] error when decoed drm file"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 15

    iget-object v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getContext()Landroid/content/Context;

    move-result-object v10

    if-nez v10, :cond_1

    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[getDisplayImageUri] Null context when get input stream"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[getDisplayImageUri] Drm image should use getDisplayImageInputStream to decode"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    if-ne v2, v3, :cond_6

    :try_start_0
    sget-object v6, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->DRM_VIDEO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-nez v11, :cond_3

    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[getDisplayImageUri] Null Cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[getDisplayImageUri] The input Uri can\'t query anything"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v12

    if-nez v12, :cond_5

    iget-object v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-static {v2, v9, v8, v7}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v14

    :cond_5
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :catch_0
    move-exception v13

    :try_start_3
    sget-object v2, Lcom/htc/album/TabPluginDevice/FolderImage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[getDisplayImageUri] error when decoed drm file"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    return-wide v0
.end method

.method public hasSubList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mSelected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    return v0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p4}, Lcom/htc/album/TabPluginDevice/FolderImage;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, v3}, Lcom/htc/album/modules/collection/SimpleImage;->readFrom(ZIILjava/lang/String;)V

    move v1, v2

    :cond_0
    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mSelected:Z

    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lcom/htc/album/modules/collection/SimpleImage;->toFormatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/FolderImage;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
