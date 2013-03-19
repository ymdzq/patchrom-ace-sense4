.class public Lcom/htc/album/helper/RemoveFileCacheTask;
.super Lcom/htc/sunny2/common/SimpleThreadTask;
.source "RemoveFileCacheTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/common/SimpleThreadTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field protected static final CACHE_ROOT:Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String; = "RemoveFileCacheTask"


# instance fields
.field protected mCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/RemoveFileCacheTask;->CACHE_ROOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleThreadTask;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    iput-object v0, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mCacheList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mCacheList:Ljava/util/ArrayList;

    return-void
.end method

.method private static isBurstImage(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v2}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v2}, Lcom/htc/album/helper/FileOperationHelper;->isOldBurstImage(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/RemoveFileCacheTask;->doInBackground(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const-string v7, "RemoveFileCacheTask"

    const-string v8, "[HTCAlbum][RemoveFileCacheTask][doInBackground] +++"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mCacheList:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/htc/album/helper/RemoveFileCacheTask;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;

    iget-object v3, v6, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->filePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/album/helper/RemoveFileCacheTask;->isBurstImage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/album/helper/RemoveFileCacheTask;->removeFileCache(Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->Delete_All_Thumbnails([Ljava/lang/String;)V

    :cond_3
    const-string v7, "RemoveFileCacheTask"

    const-string v8, "[HTCAlbum][RemoveFileCacheTask][doInBackground] ---"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    return-object v7
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/RemoveFileCacheTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/RemoveFileCacheTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    const-string v0, "RemoveFileCacheTask"

    const-string v1, "[HTCAlbum][RemoveFileCacheTask][onPostExecute]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/RemoveFileCacheTask;->onPreExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Ljava/lang/Void;)V
    .locals 2

    const-string v0, "RemoveFileCacheTask"

    const-string v1, "[HTCAlbum][RemoveFileCacheTask][onPreExecute]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected removeFileCache(Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->filePath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->dateModified:J

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->dateTaken:J

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->imageSize:J

    const/16 v14, 0x500

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->getFactor()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/RemoveFileCacheTask;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->removeAll(Ljava/lang/String;JJJ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/helper/RemoveFileCacheTask;->CACHE_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v9, v2

    move-wide v10, v3

    invoke-static/range {v9 .. v14}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RemoveFileCacheTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[removeFileCache] Cache path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "RemoveFileCacheTask"

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "RemoveFileCacheTask"

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/htc/sunny2/common/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v15

    const-string v1, "RemoveFileCacheTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][RemoveFileCacheTask][removeFileCache] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
