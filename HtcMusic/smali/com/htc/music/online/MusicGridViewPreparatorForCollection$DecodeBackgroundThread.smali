.class Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;
.super Ljava/lang/Thread;
.source "MusicGridViewPreparatorForCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicGridViewPreparatorForCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeBackgroundThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;
    }
.end annotation


# instance fields
.field continueNext:Z

.field private decodeItemQueue:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private exit:Z

.field private mSyncObj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)V
    .locals 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    .line 240
    const-string v0, "DecodeBackgroundThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->mSyncObj:Ljava/lang/Object;

    .line 243
    new-instance v0, Lcom/htc/sunny2/Queue;

    const-string v1, "decodeItemQueue"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->decodeItemQueue:Lcom/htc/sunny2/Queue;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->exit:Z

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->continueNext:Z

    .line 241
    return-void
.end method

.method private executeDecode(Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->access$200(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[executeDecode] error, DecodeItemHolder = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p1, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, p1, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->mMediaData:Lcom/htc/sunny2/IMediaData;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 271
    iget-object v0, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    iget-object v1, p1, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-boolean v2, p1, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->mIsDataPrared:Z

    iget-object v3, p1, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    #calls: Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->addDecodeTask(Lcom/htc/sunny2/common/CacheItem;ZLcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->access$300(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;Lcom/htc/sunny2/common/CacheItem;ZLcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    goto :goto_0
.end method

.method private getNextHolder()Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;
    .locals 2

    .prologue
    .line 286
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->decodeItemQueue:Lcom/htc/sunny2/Queue;

    invoke-virtual {v1}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;

    .line 287
    .local v0, holder:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;
    if-nez v0, :cond_0

    .line 288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->continueNext:Z

    .line 290
    :cond_0
    return-object v0
.end method

.method private pauseThread()V
    .locals 2

    .prologue
    .line 294
    monitor-enter p0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 303
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 302
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private resumeThread()V
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    .line 308
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 309
    monitor-exit p0

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addDecodeItem(Lcom/htc/sunny2/common/CacheItem;Lcom/htc/sunny2/IMediaData;ZLcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 5
    .parameter "cacheItem"
    .parameter "mediaData"
    .parameter "isDataPrared"
    .parameter "decodeItem"

    .prologue
    .line 247
    iget-object v3, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 248
    :try_start_0
    new-instance v0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;-><init>(Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;Lcom/htc/music/online/MusicGridViewPreparatorForCollection$1;)V

    .line 249
    .local v0, holder:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;
    iput-object p1, v0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 250
    iput-object p2, v0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->mMediaData:Lcom/htc/sunny2/IMediaData;

    .line 251
    iput-boolean p3, v0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->mIsDataPrared:Z

    .line 252
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    iget-object v4, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I
    invoke-static {v4}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->access$100(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    .line 253
    .local v1, tempDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->copyFrom(Lcom/htc/sunny2/common/CacheItem;)V

    .line 254
    iget-object v2, p4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    iput-object v2, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunny2/Texture;

    .line 255
    iput-object v1, v0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    .line 257
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->decodeItemQueue:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    .line 258
    iget-boolean v2, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->continueNext:Z

    if-nez v2, :cond_0

    .line 259
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->continueNext:Z

    .line 260
    invoke-direct {p0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->resumeThread()V

    .line 262
    :cond_0
    monitor-exit v3

    .line 263
    return-void

    .line 262
    .end local v0           #holder:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;
    .end local v1           #tempDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public exitThread()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->exit:Z

    .line 277
    invoke-direct {p0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->resumeThread()V

    .line 278
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 314
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->exit:Z

    if-eqz v1, :cond_1

    .line 331
    return-void

    .line 317
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->continueNext:Z

    if-eqz v1, :cond_2

    .line 319
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 320
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->getNextHolder()Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;

    move-result-object v0

    .line 321
    .local v0, holder:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->access$400(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get the holder, holder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0, v0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->executeDecode(Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;)V

    goto :goto_0

    .line 321
    .end local v0           #holder:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 328
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;->pauseThread()V

    goto :goto_0
.end method
