.class public Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "AdapterDlnaMediumItem.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdapterDlnaMediumItem"

.field private static SCREEN_LONG_SIDE_LENGTH:I

.field private static SCREEN_SHORT_SIDE_LENGTH:I


# instance fields
.field private bRefreshSinglePhoto:Z

.field private mHandlerData:Landroid/os/Handler;

.field protected mHandlerUI:Landroid/os/Handler;

.field protected mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

.field protected mList:Ljava/util/List;

.field protected mSceneType:I

.field protected mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x258

    sput v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_SHORT_SIDE_LENGTH:I

    const/16 v0, 0x400

    sput v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/app/Activity;)V

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    new-instance v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;-><init>(Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    new-instance v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDisplayDimension()V

    return-void
.end method

.method private getDisplayDimension()V
    .locals 6

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v2, v1, :cond_0

    sput v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_SHORT_SIDE_LENGTH:I

    sput v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    :goto_0
    const-string v3, "AdapterDlnaMediumItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AdapterDlnaMediumItem][getDisplayDimension]nWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sput v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_SHORT_SIDE_LENGTH:I

    sput v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    goto :goto_0
.end method

.method private onRequestPhotoDetail(Landroid/os/Message;)V
    .locals 3

    const-string v1, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdapterDlnaMediumItem][onRequestPhotoDetail]... "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestPhotoDetail(Ljava/lang/String;)Z

    return-void
.end method

.method private requestPhotoDownload(IZ)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-nez v5, :cond_0

    const/4 v2, -0x1

    move-object v0, v3

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v5, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v2

    if-ne v2, v6, :cond_2

    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    const-string v5, "AdapterDlnaMediumItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AdapterDlnaMediumItem][requestPhotoDownload]Quality high ready: index :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v5, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getThumbnailState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v7}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v6}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    const-string v5, "AdapterDlnaMediumItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AdapterDlnaMediumItem][requestPhotoDownload]Quality low ready:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v5, v6, p1, v8, v4}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->forwardFullDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v5, v6, p1, v8, v4}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->forwardThumbnailDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v4, :cond_0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v4, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string v4, "AdapterDlnaMediumItem"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "[HTCAlbum][AdapterDlnaMediumItem][setImageSize]:outWidth: "

    aput-object v6, v5, v8

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, ", outHeight: "

    aput-object v6, v5, v9

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    const-class v4, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    if-ne v4, v5, :cond_2

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_1
    const-string v4, "AdapterDlnaMediumItem"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "[HTCAlbum][AdapterDlnaMediumItem][setImageSize]:nWidth:"

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, ", nHeight:"

    aput-object v6, v5, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setDispalyImageWidth(I)V

    invoke-virtual {p1, v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setDisplayImageHeight(I)V

    goto :goto_0

    :cond_2
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v5, :cond_3

    sget v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v2

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v1, v4, v5

    goto :goto_1

    :cond_3
    sget v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->SCREEN_LONG_SIDE_LENGTH:I

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v4, v5

    goto :goto_1

    :cond_4
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2
.end method

.method private syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->isServiceActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->initServerInfo(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindDLNAService()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStart()V

    :cond_0
    return-void
.end method

.method public browseNextPage()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowsePageNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onNotifyUpdating(Z)V

    goto :goto_0
.end method

.method public browsePreviousPage()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowsePagePrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onNotifyUpdating(Z)V

    goto :goto_0
.end method

.method protected cancelThumbnailDownloadRequests()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->cancelThumbnailDownloadRequests()V

    goto :goto_0
.end method

.method public destroyController(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->destroyController(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDirectoryInfo()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "AdapterDlnaMediumItem"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/IMediaData;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, "AdapterDlnaMediumItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getItem]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemIndex(Ljava/lang/String;)I
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    if-nez v6, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_4

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunnyCore/IMediaData;

    if-nez v4, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    instance-of v6, v4, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v6, :cond_2

    move-object v3, v4

    check-cast v3, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    iget-object v6, v3, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v0

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public getServiceDirectory()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServiceDirectory()Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    move-result-object v0

    goto :goto_0
.end method

.method public isServiceActive()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->isServiceActive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadData()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setRegisterID(I)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setRegisterName(Ljava/lang/String;)V

    const-string v2, "AdapterDlnaMediumItem"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[AdapterDlnaMediumItem][onLoadData]"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getRegisterName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getRegisterID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->PanelManager()Lcom/htc/album/AlbumMain/ActivityPanelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/htc/album/AlbumMain/ActivityPanelManager;->setEnterProcessing(IZ)V

    const-string v2, "AdapterDlnaMediumItem"

    const-string v3, "[AdapterDlnaMediumItem][onLoadData][EnterProcessing]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AdapterDlnaMediumItem"

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onLoadData]: begin..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->enableBrowseSyncOnServiceConnected()V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setDataHandler(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setUIHandler(Landroid/os/Handler;)V

    new-instance v2, Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    sget v3, Lcom/htc/opensense2/album/cache/CacheManager;->MAX_LISTVIEW_MEM_BUFFER:I

    invoke-virtual {v2, v0, v6, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setDefaultImageResource(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v1, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setMaxDownloadBuffer(I)V

    :goto_0
    invoke-direct {p0, v7, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    const-string v2, "AdapterDlnaMediumItem"

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onLoadData]: end..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onRequestPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncListComplete(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncList(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncPhotoThumbnailComplete(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onSyncRecentList(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_9
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onUIUpdateNotify(Landroid/os/Message;J)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2767 -> :sswitch_7
        0x4e35 -> :sswitch_0
        0x4e84 -> :sswitch_9
        0x4e88 -> :sswitch_2
        0x4e89 -> :sswitch_4
        0x4e8f -> :sswitch_5
        0x4e94 -> :sswitch_8
        0x4e95 -> :sswitch_1
        0x4e9a -> :sswitch_6
        0x4ea0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected onSyncList(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onSyncListComplete(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    const-string v0, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdaperDlnaMediuamItem][onSyncPhotoComplete]..."

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    instance-of v0, v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_2

    move-object v6, v8

    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v2, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    iget-object v2, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v0

    if-ne v0, v5, :cond_4

    const-string v0, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoComplete]High quality is already notified"

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    iput-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/4 v2, 0x0

    iget-object v3, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_5
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v6, v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoComplete]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoComplete]: Notify Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v9}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->notifyDataChangedAt(I)V

    goto/16 :goto_0
.end method

.method public onSyncPhotoThumbnailComplete(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v0, "AdapterDlnaMediumItem"

    const-string v2, "[HTCAlbum][AdaperDlnaMediuamItem][onSyncPhotoThumbnailComplete]..."

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    instance-of v0, v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_2

    move-object v6, v8

    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v2, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    iput-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const/4 v2, 0x0

    iget-object v3, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v6, v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoThumbnailComplete]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v0

    if-eq v0, v9, :cond_0

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "AdapterDlnaMediumItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterDlnaMediumItem][onSyncPhotoThumbnailComplete]: Notify Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setMediaQuality(I)V

    iget-object v0, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v9}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setImageSize(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->notifyDataChangedAt(I)V

    goto/16 :goto_0
.end method

.method protected onSyncRecentList(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onUIUpdateNotify(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onUIUpdateNotify(Landroid/os/Message;J)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onUnloadData()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AdapterDlnaMediumItem"

    const-string v1, "[HTCAlbum][AdapterDlnaMediumItem][onUnloadData]: begin..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStop()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setDataHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setUIHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDestroy()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->Uninitialize()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    const-string v0, "AdapterDlnaMediumItem"

    const-string v1, "[HTCAlbum][AdapterDlnaMediumItem][onUnloadData]: end..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshFolder()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowseFolderThis(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->resetCacheDownloadRequest()V

    :cond_1
    return-void
.end method

.method public refreshSinglePhoto(I)V
    .locals 7

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-nez v4, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->forwardFullDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bRefreshSinglePhoto:Z

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method

.method public setSceneQuality(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setThumbnailOnly(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSceneType(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    return-void
.end method

.method public setScrollState(III)V
    .locals 11

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "AdapterDlnaMediumItem"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "[HTCAlbum][AdapterDlnaMediumItem][setScrollState]: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, " : "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, " : "

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->cancelThumbnailDownloadRequests()V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const-class v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridview;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    iget v8, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    if-ne v7, v8, :cond_6

    if-gez p2, :cond_4

    const/4 v5, 0x0

    :goto_1
    move v4, v5

    if-nez p3, :cond_5

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getMaxDownloadBuffer()I

    move-result v7

    add-int/2addr v4, v7

    :goto_2
    if-gt v1, v4, :cond_3

    move v4, v1

    :cond_3
    move v0, v5

    :goto_3
    if-ge v0, v4, :cond_0

    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v5, p2

    goto :goto_1

    :cond_5
    add-int/2addr v4, p3

    goto :goto_2

    :cond_6
    const-class v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    iget v8, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mSceneType:I

    if-ne v7, v8, :cond_0

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p2, 0x1

    if-gt v1, v3, :cond_7

    add-int/lit8 v3, v1, -0x1

    :cond_7
    if-gez v2, :cond_8

    const/4 v2, 0x0

    :cond_8
    const/4 v7, 0x1

    invoke-direct {p0, p2, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    if-eq p2, v3, :cond_9

    const/4 v7, 0x1

    invoke-direct {p0, v3, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    :cond_9
    if-eq p2, v2, :cond_0

    const/4 v7, 0x1

    invoke-direct {p0, v2, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->requestPhotoDownload(IZ)V

    goto/16 :goto_0
.end method

.method protected syncListItem(Ljava/lang/Object;Z)V
    .locals 14

    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v11, p1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v11, :cond_0

    const-string v11, "AdapterDlnaMediumItem"

    const-string v12, "[HTCAlbum][AdapterDlnaMediumItem][syncListItem]: begin"

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    check-cast p1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move/from16 v0, p2

    invoke-virtual {v11, p1, v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scan4MediumItems(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;Z)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getBrowseList()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v8, :cond_6

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v11, :cond_5

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_4

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v11, :cond_2

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    iget-object v11, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-nez v11, :cond_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    iget-object v11, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    iget-object v12, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v7, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    iput-object v11, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v6, v11}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    invoke-interface {v5, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    if-eqz v11, :cond_4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    iget-object v11, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0a00d7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setCenterText(Ljava/lang/String;)V

    const v11, 0x7f020003

    invoke-virtual {v10, v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBackground(I)V

    goto :goto_3

    :cond_6
    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v11, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v2, 0x0

    :cond_7
    :goto_4
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    instance-of v11, v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v11, :cond_7

    move-object v0, v2

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    move-object v6, v0

    const-string v11, "0"

    iget-object v12, v6, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    const-string v11, "AdapterDlnaMediumItem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][AdapterDlnaMediumItem][syncListItem]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "AdapterDlnaMediumItem"

    const-string v12, "[HTCAlbum][AdapterDlnaMediumItem][syncListItem]: end "

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public unBindDLNAService()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onStop()V

    :cond_0
    return-void
.end method
