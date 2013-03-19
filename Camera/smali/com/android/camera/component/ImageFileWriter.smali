.class public final Lcom/android/camera/component/ImageFileWriter;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ImageFileWriter.java"


# static fields
.field private static final MSG_EXECUTE_TASK:I = 0x3e9

.field private static final MSG_IMAGE_SAVED:I = 0x3ea

.field private static final MSG_IMAGE_SAVE_FAILED:I = 0x3eb

.field public static final NAME:Ljava/lang/String; = "Image File Writer"


# instance fields
.field private final m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/imaging/SaveImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SaveTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/imaging/SaveImageTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "Image File Writer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ImageFileWriter;)Ljava/util/ArrayDeque;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method private insertOneImageIntoMediaStore()V
    .locals 15

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - Start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v12

    if-nez v12, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - No camera activity"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "insertOneImageIntoMediaStore() - Save image file first"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ImageFileWriter;->sendAsyncMessage(I)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "insertOneMediaIntoMediaStore() - Media store update is suspended"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/imaging/SaveImageTask;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - No image to insert"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v5}, Lcom/android/camera/imaging/SaveImageTask;->insertIntoMediaStore()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "insertOneImageIntoMediaStore() - End"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v8, 0x3eb

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x2

    :try_start_5
    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v5, v11, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v1, v11, v0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v14

    const/16 v8, 0x3eb

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v5, v11, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v1, v11, v0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private onImageSaveFailed(Lcom/android/camera/imaging/SaveImageTask;Lcom/android/camera/MediaSaveFailedReason;)V
    .locals 8

    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    invoke-virtual {p1}, Lcom/android/camera/imaging/SaveImageTask;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/imaging/SaveImageTask;->getFilePath()Lcom/android/camera/io/Path;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-boolean v6, p1, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaSaveFailedReason;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method private onImageSaved(Lcom/android/camera/imaging/SaveImageTask;)V
    .locals 7

    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    invoke-virtual {p1}, Lcom/android/camera/imaging/SaveImageTask;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/imaging/SaveImageTask;->getFilePath()Lcom/android/camera/io/Path;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    iget-boolean v6, p1, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;Z)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method

.method private saveOneImage()V
    .locals 14

    const/16 v13, 0x3eb

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - No camera activity"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/imaging/SaveImageTask;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - No image to save"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, v7, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v0, v1, :cond_4

    :try_start_2
    invoke-virtual {v9}, Lcom/android/camera/imaging/SaveImageTask;->saveImage()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - Image saved, scheduling for media store data insertion"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v9}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ImageFileWriter;->sendAsyncMessage(I)Z

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "saveOneImage() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "saveOneMedia() - Media store update is suspended"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v8

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v9, v5, v10

    sget-object v0, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v0, v5, v11

    move-object v0, p0

    move-object v1, p0

    move v2, v13

    move v3, v10

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/16 v2, 0x3eb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    :try_start_6
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v9, v5, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v1, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :cond_4
    new-array v5, v12, [Ljava/lang/Object;

    aput-object v9, v5, v10

    sget-object v0, Lcom/android/camera/MediaSaveFailedReason;->NoStorage:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v0, v5, v11

    move-object v0, p0

    move-object v1, p0

    move v2, v13

    move v3, v10

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ImageFileWriter;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ImageFileWriter;->removeAsyncMessages(I)V

    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/component/ImageFileWriter;->saveOneImage()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/ImageFileWriter;->insertOneImageIntoMediaStore()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/imaging/SaveImageTask;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ImageFileWriter;->onImageSaved(Lcom/android/camera/imaging/SaveImageTask;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/android/camera/imaging/SaveImageTask;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/android/camera/MediaSaveFailedReason;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/ImageFileWriter;->onImageSaveFailed(Lcom/android/camera/imaging/SaveImageTask;Lcom/android/camera/MediaSaveFailedReason;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ImageFileWriter;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestSaveImageEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageFileWriter$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageFileWriter$1;-><init>(Lcom/android/camera/component/ImageFileWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->queryImageQueueCapacityEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageFileWriter$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageFileWriter$2;-><init>(Lcom/android/camera/component/ImageFileWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->queryImageQueueSizeEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ImageFileWriter$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ImageFileWriter$3;-><init>(Lcom/android/camera/component/ImageFileWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method public resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "resumeUpdatingMediaStore() - Null handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "resumeUpdatingMediaStore() - Handle count : "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    :goto_1
    if-lez v1, :cond_2

    const/16 v2, 0x3e9

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ImageFileWriter;->sendAsyncMessage(I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "resumeUpdatingMediaStore() - Invalid handle"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public suspendUpdatingMediaStore()Lcom/android/camera/Handle;
    .locals 5

    new-instance v0, Lcom/android/camera/SessionHandle;

    const-string v1, "SuspendUpdatingDB"

    invoke-direct {v0, v1}, Lcom/android/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "suspendUpdatingMediaStore() - Handle count : "

    iget-object v4, p0, Lcom/android/camera/component/ImageFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
