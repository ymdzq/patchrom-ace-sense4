.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"

# interfaces
.implements Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;


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
    .parameter

    .prologue
    .line 2853
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCancel(Lcom/htc/sunny2/common/IterationTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 2890
    return-void
.end method

.method public onTaskEnd(Landroid/os/Bundle;Lcom/htc/sunny2/common/IterationTask;)V
    .locals 3
    .parameter "bundle"
    .parameter "task"

    .prologue
    .line 2866
    if-nez p2, :cond_0

    .line 2881
    :goto_0
    return-void

    .line 2868
    :cond_0
    instance-of v0, p2, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 2869
    check-cast v0, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2870
    const-string v0, "GridCallbackListener"

    const-string v1, "Cache Encode failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :cond_1
    invoke-virtual {p2}, Lcom/htc/sunny2/common/IterationTask;->release()V

    goto :goto_0

    .line 2874
    :cond_2
    sget-boolean v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "GridCallbackListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GridCallbackListener][onTaskEnd] add task back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/common/IterationTask;->getTaskIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :cond_3
    instance-of v0, p2, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v0, :cond_4

    .line 2878
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$GridCallbackListener;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItrTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onTaskStart(Lcom/htc/sunny2/common/IterationTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 2860
    return-void
.end method
