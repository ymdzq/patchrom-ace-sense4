.class Lcom/android/camera/component/ImageFileWriter$1;
.super Ljava/lang/Object;
.source "ImageFileWriter.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageFileWriter;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/imaging/SaveImageRequestEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ImageFileWriter;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageFileWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ImageFileWriter$1;->this$0:Lcom/android/camera/component/ImageFileWriter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/imaging/SaveImageRequestEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ImageFileWriter$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/imaging/SaveImageRequestEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/imaging/SaveImageRequestEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/SaveImageRequestEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/imaging/SaveImageRequestEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p3, Lcom/android/camera/imaging/SaveImageRequestEventArgs;->saveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter$1;->this$0:Lcom/android/camera/component/ImageFileWriter;

    #getter for: Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/android/camera/component/ImageFileWriter;->access$000(Lcom/android/camera/component/ImageFileWriter;)Ljava/util/ArrayDeque;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter$1;->this$0:Lcom/android/camera/component/ImageFileWriter;

    #getter for: Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/android/camera/component/ImageFileWriter;->access$000(Lcom/android/camera/component/ImageFileWriter;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter$1;->this$0:Lcom/android/camera/component/ImageFileWriter;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/android/camera/component/ImageFileWriter;->sendAsyncMessage(I)Z

    invoke-virtual {p3}, Lcom/android/camera/imaging/SaveImageRequestEventArgs;->setHandled()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
