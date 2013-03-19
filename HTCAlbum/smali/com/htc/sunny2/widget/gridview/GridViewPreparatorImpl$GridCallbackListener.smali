.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"

# interfaces
.implements Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridCallbackListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GridCallbackListener"


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTaskBack(Lcom/htc/sunnyCore/common/IterationTask;Ljava/lang/String;)V
    .locals 5

    instance-of v2, p1, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/sunny2/common/CacheItem;->release()V

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->recycleCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast p1, Lcom/htc/sunny2/common/IterationTaskGallery;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v2, "GridCallbackListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[addTaskBack] Unsupported type task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_0
.end method


# virtual methods
.method public onTaskCancel(Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 1

    const-string v0, "[onTaskCancel]"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;->addTaskBack(Lcom/htc/sunnyCore/common/IterationTask;Ljava/lang/String;)V

    return-void
.end method

.method public onTaskEnd(Landroid/os/Bundle;Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 2

    instance-of v0, p2, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GridCallbackListener"

    const-string v1, "Cache Encode failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "[onTaskEnd]"

    invoke-direct {p0, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;->addTaskBack(Lcom/htc/sunnyCore/common/IterationTask;Ljava/lang/String;)V

    return-void
.end method

.method public onTaskStart(Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 0

    return-void
.end method
