.class public Lcom/htc/music/online/MusicGridViewPreparatorForCollection$GridCallbackListenerForCollection;
.super Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;
.source "MusicGridViewPreparatorForCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicGridViewPreparatorForCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridCallbackListenerForCollection"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GridCallbackListenerForCollection"


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$GridCallbackListenerForCollection;->this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    return-void
.end method


# virtual methods
.method public onTaskEnd(Landroid/os/Bundle;Lcom/htc/sunny2/common/IterationTask;)V
    .locals 9
    .parameter "bundle"
    .parameter "task"

    .prologue
    .line 341
    if-nez p2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    if-eqz p1, :cond_0

    .line 343
    instance-of v6, p2, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v6, :cond_3

    move-object v6, p2

    .line 344
    check-cast v6, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-virtual {v6}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->isFailed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 345
    const-string v6, "GridCallbackListenerForCollection"

    const-string v7, "Cache Encode failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_2
    invoke-virtual {p2}, Lcom/htc/sunny2/common/IterationTask;->release()V

    goto :goto_0

    .line 349
    :cond_3
    invoke-static {}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->access$500()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "GridCallbackListenerForCollection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GridCallbackListener][onTaskEnd] add task back "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/htc/sunny2/common/IterationTask;->getTaskIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_4
    instance-of v6, p2, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v6, :cond_5

    .line 354
    :cond_5
    instance-of v6, p2, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v6, :cond_7

    move-object v1, p2

    .line 355
    check-cast v1, Lcom/htc/sunny2/common/IterationDecodeTask;

    .line 356
    .local v1, iTask:Lcom/htc/sunny2/common/IterationDecodeTask;
    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v0

    .line 357
    .local v0, cacheItem:Lcom/htc/sunny2/common/CacheItem;
    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->getTaskIndex()I

    move-result v2

    .line 358
    .local v2, itemIdx:I
    const-string v6, "subIndex"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 360
    .local v4, mapIdx:I
    iget-object v6, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$GridCallbackListenerForCollection;->this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    #calls: Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->getTextureMap(I)Lcom/htc/sunny2/common/TextureMap;
    invoke-static {v6, v4}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->access$600(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;I)Lcom/htc/sunny2/common/TextureMap;

    move-result-object v3

    .line 361
    .local v3, map:Lcom/htc/sunny2/common/TextureMap;
    const/4 v5, 0x0

    .line 362
    .local v5, texture:Lcom/htc/sunny2/Texture;
    if-eqz v3, :cond_6

    .line 363
    invoke-virtual {v3, v2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    .line 365
    :cond_6
    if-eqz v5, :cond_9

    .line 366
    if-eqz v0, :cond_8

    .line 367
    iget-object v6, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 376
    .end local v0           #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    .end local v1           #iTask:Lcom/htc/sunny2/common/IterationDecodeTask;
    .end local v2           #itemIdx:I
    .end local v3           #map:Lcom/htc/sunny2/common/TextureMap;
    .end local v4           #mapIdx:I
    .end local v5           #texture:Lcom/htc/sunny2/Texture;
    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$GridCallbackListenerForCollection;->this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v6}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->access$700(Lcom/htc/music/online/MusicGridViewPreparatorForCollection;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v6, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$GridCallbackListenerForCollection;->this$0:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    iget-object v6, v6, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {p2}, Lcom/htc/sunny2/common/IterationTask;->getTaskIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->updateParentViewItem(I)V

    goto/16 :goto_0

    .line 369
    .restart local v0       #cacheItem:Lcom/htc/sunny2/common/CacheItem;
    .restart local v1       #iTask:Lcom/htc/sunny2/common/IterationDecodeTask;
    .restart local v2       #itemIdx:I
    .restart local v3       #map:Lcom/htc/sunny2/common/TextureMap;
    .restart local v4       #mapIdx:I
    .restart local v5       #texture:Lcom/htc/sunny2/Texture;
    :cond_8
    const-string v6, "GridCallbackListenerForCollection"

    const-string v7, "onTaskEnd setIdentifier error, cacheItem = null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 372
    :cond_9
    const-string v6, "GridCallbackListenerForCollection"

    const-string v7, "onTaskEnd setIdentifier error, texture = null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
