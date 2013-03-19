.class public Lcom/htc/opensense2/album/cache/InkScreenCachePool;
.super Lcom/htc/opensense2/album/cache/InkCachePoolBase;
.source "InkScreenCachePool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/cache/InkCachePoolBase",
        "<",
        "Lcom/htc/opensense2/album/cache/InkCacheTask;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/InkCachePoolBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    iget-object v4, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/cache/InkScreenCachePool;->remove(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public remove(I)V
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/cache/InkCacheTask;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
