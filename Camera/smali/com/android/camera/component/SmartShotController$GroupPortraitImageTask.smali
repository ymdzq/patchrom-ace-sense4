.class Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;
.super Lcom/android/camera/imaging/SaveImageTask;
.source "SmartShotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/SmartShotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupPortraitImageTask"
.end annotation


# instance fields
.field private final exifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_screen:Lcom/scalado/base/Image;

.field final synthetic this$0:Lcom/android/camera/component/SmartShotController;

.field private final uiRotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/SmartShotController;Lcom/scalado/base/Image;Ljava/util/Hashtable;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scalado/base/Image;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/rotate/UIRotation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->this$0:Lcom/android/camera/component/SmartShotController;

    invoke-virtual {p1}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/imaging/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object p2, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->m_screen:Lcom/scalado/base/Image;

    iput-object p3, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->exifTags:Ljava/util/Hashtable;

    iput-object p4, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->uiRotation:Lcom/android/camera/rotate/UIRotation;

    return-void
.end method


# virtual methods
.method protected onSaveImageToFile(Lcom/android/camera/io/Path;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Lcom/scalado/stream/FileStream;

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v9, v11, v12}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v11, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v12, "Decode Group portrait picture"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v11, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->m_screen:Lcom/scalado/base/Image;

    invoke-direct {v0, v11}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    invoke-virtual {v0}, Lcom/scalado/caps/codec/decoder/ImageDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    new-instance v10, Lcom/scalado/caps/Session;

    invoke-direct {v10, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v1, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v1, v9, v6}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    const/high16 v11, 0x3f80

    invoke-virtual {v1, v11}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    invoke-virtual {v10, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual {v7}, Lcom/scalado/base/Iterator;->done()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/scalado/stream/FileStream;->close()V

    move-object v8, v9

    :cond_0
    :goto_0
    :try_start_2
    new-instance v4, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;->exifTags:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    :goto_2
    return-void

    :catch_1
    move-exception v3

    :goto_3
    :try_start_3
    iget-object v11, p0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v12, "Cannot save rotated Group portrait image"

    invoke-static {v11, v12, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/scalado/stream/FileStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/scalado/stream/FileStream;->close()V

    :cond_1
    throw v11

    :cond_2
    :try_start_4
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_1
    move-exception v11

    move-object v8, v9

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v8, v9

    goto :goto_3

    :cond_3
    move-object v8, v9

    goto :goto_0
.end method
