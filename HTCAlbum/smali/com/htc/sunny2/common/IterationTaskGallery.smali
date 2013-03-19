.class public abstract Lcom/htc/sunny2/common/IterationTaskGallery;
.super Lcom/htc/sunnyCore/common/IterationTask;
.source "IterationTaskGallery.java"


# static fields
.field public static final CACHE_DECODE_TASK:I = 0x1

.field public static final CACHE_ENCODE_TASK:I = 0x2

.field public static final DEFAULT_DECODE_TASK:I = 0x0

.field public static final DEFAULT_ID:I = -0x1

.field public static final VIEW_DECODE_TASK:I = 0x3


# instance fields
.field protected mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field protected mID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunnyCore/common/IterationTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    return-void
.end method


# virtual methods
.method public getCacheItem()Lcom/htc/sunny2/common/CacheItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mID:I

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mBundle:Landroid/os/Bundle;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mIdx:I

    invoke-super {p0}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    return-void
.end method

.method public setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    return-void
.end method
