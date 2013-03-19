.class public Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
.super Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.source "AdapterLocalPhoto.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/album/PaintManager/Interface/IPaintings;
.implements Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterLocalPhoto"


# instance fields
.field protected mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mIndexPlaceHolder:I

.field private mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

.field private mListPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/album/PaintManager/PaintViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyPartialLoadBuilt:Z

.field private mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

.field private mPartialLoad:Z

.field private mScrollState:I

.field private mSectionNum:I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getSupportedMediaTypes()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mNotifyPartialLoadBuilt:Z

    iput v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mScrollState:I

    iput v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iput-boolean p4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/collection/Collection;->enableDataCache(Z)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0, p4}, Lcom/htc/album/modules/collection/Collection;->setEnablePartialLoadImageList(Z)V

    const-string v0, "com.htc.HTCAlbum.ALL_PHOTOS"

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0, v3}, Lcom/htc/album/modules/collection/Collection;->enableFilter4FolderBucketIds(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mNotifyPartialLoadBuilt:Z

    return p1
.end method


# virtual methods
.method public enableBroadcastNotify()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCollectionInfo()Lcom/htc/album/modules/collection/Collection;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method public getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .locals 2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInkCacheManager()Lcom/htc/opensense2/album/cache/InkCacheManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/IMediaData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;
    .locals 9

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/PaintManager/PaintViewItem;

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v0, Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-direct {v0, p1}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v1

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v3

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/PaintManager/PaintViewItem;->setFileCacheInfo(ILjava/lang/String;JJ)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic getPaintItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    div-int v0, p1, v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 10

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    div-int v4, v0, v5

    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    rem-int v5, v0, v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    :cond_1
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPositionForSection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/htc/opensense2/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "AdapterLocalPhoto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSections]Unexpected Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    check-cast v5, [Ljava/lang/Object;

    return-object v5
.end method

.method public initPaintings()V
    .locals 8

    new-instance v2, Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const/16 v5, 0x1f

    new-instance v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$CacheListener;-><init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/opensense2/album/cache/InkCacheManager;-><init>(Landroid/content/Context;IILcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    new-instance v1, Lcom/htc/album/PaintManager/PaintViewItem;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    invoke-direct {v1, v2}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isNotifyDataChangedFromPartialListBuilt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mNotifyPartialLoadBuilt:Z

    return v0
.end method

.method public isPaintable(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    if-nez v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eq v5, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eq v5, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v4

    if-eq v5, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v4

    if-eq v5, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-ne v5, v4, :cond_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public isPartialListBuilding()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->isPartialLoading()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5

    const/4 v4, 0x1

    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: begin..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/collection/Collection;->prepareFilter4FolderBucketIds(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    if-ne v2, v4, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPartialLoad:Z

    if-ne v4, v2, :cond_1

    instance-of v2, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v1, p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V

    :cond_1
    const-string v2, "AdapterLocalPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: end..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto$1;-><init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    return-void
.end method

.method public onUnloadData()V
    .locals 3

    const-string v1, "AdapterLocalPhoto"

    const-string v2, "[HTCAlbum][AdapterLocalPhoto][onUnloadData]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onUnloadData()V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->setPartialLoadListener(Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->release()V

    :cond_1
    return-void
.end method

.method public onUpdateInkData(I[B)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-virtual {v1, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkData([B)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkData(I)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    if-eqz v2, :cond_0

    const-string v2, "AdapterLocalPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][onUpdateInkData]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    invoke-interface {v2, p1}, Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;->onUpdateStroke(I)V

    goto :goto_0
.end method

.method public onUpdateInkPaint(ILandroid/graphics/Bitmap;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getPaintView()Lcom/htc/album/PaintManager/PaintViewPort3D;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setIdentity(FFF)V

    invoke-virtual {v0, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkPaint(I)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    if-eqz v1, :cond_0

    const-string v1, "AdapterLocalPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][onUpdateInkPaint]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;->onUpdatePaint(I)V

    goto :goto_0
.end method

.method public paintCacheDelete(I)V
    .locals 0

    return-void
.end method

.method public paintCacheSave(ILandroid/graphics/Bitmap;)V
    .locals 5

    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v2, p1, :cond_0

    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][paintCacheSave]: 1"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v2, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const-string v2, "AdapterLocalPhoto"

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][paintCacheSave]: 2"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    const-string v2, "AdapterLocalPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][paintCacheSave]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/cache/InkCacheManager;->push(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/PaintManager/PaintViewItem;->setDirtyPaint(Z)V

    goto :goto_0

    :cond_3
    const-string v2, "AdapterLocalPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][paintCacheSave]: no data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public queryPosByUri(Landroid/net/Uri;)I
    .locals 11

    const/4 v7, -0x1

    const-string v8, "AdapterLocalPhoto"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    move v6, v7

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    if-nez v4, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_0

    invoke-interface {v4, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public releaseInkCacheManager()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    :cond_0
    return-void
.end method

.method public final releaseListDataCache()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->releaseListDataCache()V

    return-void
.end method

.method public reloadData()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    :cond_0
    return-void
.end method

.method public removePaint(I)V
    .locals 4

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v1, "AdapterLocalPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][FullscreenZoomListener][removePaint]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdapterLocalPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][removePaint]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestInkCacheData(I)V
    .locals 6

    const/4 v5, 0x0

    iget v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v1, :cond_0

    const-string v1, "AdapterLocalPhoto"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][requestInkCacheData]: request: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    invoke-virtual {v0, v5}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkData(I)V

    goto :goto_0
.end method

.method public requestInkCachePaint(I)V
    .locals 6

    const/4 v5, 0x0

    iget v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v1, :cond_0

    const-string v1, "AdapterLocalPhoto"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[HTCAlbum][LocalPhotoAdapter][requestInkCachePaint]: request: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    invoke-virtual {v0, v5}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkPaint(I)V

    goto :goto_0
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setIntermediateDataBundle(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/Collection;->setEnablePartialLoadImageList(Z)V

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListenerPaintUpdate(Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mPaintUpdateListener:Lcom/htc/album/PaintManager/Interface/IPaintUpdateListener;

    return-void
.end method

.method public setPaintScrollState(II)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    iget v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mScrollState:I

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mScrollState:I

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    add-int/lit8 v0, p2, -0x1

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, p2, 0x1

    if-gt v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v2, v0, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->setVisibleRange(II)V

    sub-int v2, v1, v0

    if-ne v5, v2, :cond_4

    const-string v2, "AdapterLocalPhoto"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][setPaintScrollState]: focus: "

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, " \tleft: "

    aput-object v4, v3, v5

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "\tright: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCachePaint(I)V

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCachePaint(I)V

    goto :goto_0

    :cond_4
    const-string v2, "AdapterLocalPhoto"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][setPaintScrollState]: focus: "

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCachePaint(I)V

    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->requestInkCacheData(I)V

    goto :goto_0
.end method

.method public setSectionCollumnNumber(I)V
    .locals 1

    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    :cond_0
    iput p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    return-void
.end method

.method public strokeCacheDelete(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "AdapterLocalPhoto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LocalPhotoAdapter][strokeCacheDelete]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/cache/InkCacheManager;->removeCache(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/cache/InkCacheManager;->removeCache(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    const-string v3, "AdapterLocalPhoto"

    const-string v4, "[HTCAlbum][LocalPhotoAdapter][strokeCacheDelete]: remove ink..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public strokeCacheLoad(I)[B
    .locals 6

    const/4 v0, 0x0

    iget v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v3, p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v1, v0

    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/album/PaintManager/PaintViewItem;->setStateInkData(I)V

    const-string v3, "AdapterLocalPhoto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LocalPhotoAdapter][strokeCacheLoad]: exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public strokeCacheSave(I[B)V
    .locals 8

    const/4 v7, 0x0

    iget v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mIndexPlaceHolder:I

    if-ne v4, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPaintItem(I)Lcom/htc/album/PaintManager/PaintViewItem;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    array-length v2, p2

    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "AdapterLocalPhoto"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][LocalPhotoAdapter][strokeCacheSave]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->tagPhotoInk(Landroid/content/Context;Landroid/net/Uri;Z)Z

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/opensense2/album/cache/InkCacheManager;->push(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    :goto_1
    invoke-virtual {v3, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkData([B)V

    goto :goto_0

    :cond_3
    invoke-interface {v0, v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->setInked(I)V

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->tagPhotoInk(Landroid/content/Context;Landroid/net/Uri;Z)Z

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->strokeCacheDelete(I)V

    goto :goto_1
.end method

.method public unInitPaintings()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mListPaints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
