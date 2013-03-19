.class public Lcom/htc/opensense2/album/cache/InkCachePoolBase;
.super Ljava/lang/Object;
.source "InkCachePoolBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mCacheSize:I

.field protected mLocker:Ljava/lang/Object;

.field protected mPool:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mRangeBegin:I

.field protected mRangeEnd:I

.field protected mTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    iput p1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mCacheSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gez v0, :cond_1

    iget v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mCacheSize:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->removeOldestItem()Z

    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public remove(I)V
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    :cond_0
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

.method protected removeOldestItem()Z
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v6, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mPool:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_0

    :goto_0
    return v13

    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mRangeBegin:I

    iget v1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mRangeEnd:I

    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_3

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ge v2, v4, :cond_2

    move v4, v2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-le v2, v8, :cond_1

    move v8, v2

    goto :goto_2

    :cond_3
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[removeOldestItem] upper : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lower "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v5, -0x1

    if-ge v4, v0, :cond_5

    move v5, v4

    :goto_3
    invoke-virtual {p0, v5}, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->remove(I)V

    iget v9, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mTop:I

    goto :goto_0

    :cond_5
    if-le v8, v1, :cond_6

    move v5, v8

    goto :goto_3

    :cond_6
    sget-object v9, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[removeOldestItem] No space outside visible range. ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ~ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    goto :goto_3
.end method

.method public setVisibleRange(II)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mRangeBegin:I

    iput p2, p0, Lcom/htc/opensense2/album/cache/InkCachePoolBase;->mRangeEnd:I

    return-void
.end method
