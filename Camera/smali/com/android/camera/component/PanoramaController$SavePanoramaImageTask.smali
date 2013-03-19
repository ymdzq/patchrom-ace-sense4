.class Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;
.super Lcom/android/camera/imaging/SaveImageTask;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePanoramaImageTask"
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

.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;

.field private final uiRotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/PanoramaController;[BLjava/util/Hashtable;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/rotate/UIRotation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {p1}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/camera/imaging/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;[B)V

    iput-object p3, p0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->exifTags:Ljava/util/Hashtable;

    iput-object p4, p0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->uiRotation:Lcom/android/camera/rotate/UIRotation;

    return-void
.end method


# virtual methods
.method protected onMediaStoreDataInserted(ZLandroid/net/Uri;Lcom/android/camera/io/Path;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    #setter for: Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/camera/component/PanoramaController;->access$002(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method

.method protected onSaveImageToFile(Lcom/android/camera/io/Path;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/android/camera/component/PanoramaController$9;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->uiRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v22, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "No need to rotate panorama picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->getJpegRawData(Z)[B

    move-result-object v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "No JPEG data"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    sget-object v22, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Panorama picture needs to be rotated 90 degrees"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v22, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Panorama picture needs to be rotated 270 degrees"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v22, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Panorama picture needs to be rotated 180 degrees"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_4

    const/16 v24, 0x0

    :try_start_0
    new-instance v25, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    :goto_2
    :try_start_2
    new-instance v12, Landroid/media/ExifInterface;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->exifTags:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->uiRotation:Lcom/android/camera/rotate/UIRotation;

    #calls: Lcom/android/camera/component/PanoramaController;->createReviewImage(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->access$200(Lcom/android/camera/component/PanoramaController;Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v24, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v2

    :cond_4
    const/16 v19, 0x0

    :try_start_3
    new-instance v20, Lcom/scalado/stream/FileStream;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Decode panorama picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/scalado/stream/BufferStream;

    new-instance v2, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/scalado/base/Buffer;-><init>([B)V

    move-object/from16 v0, v18

    array-length v3, v0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/PanoramaController$SavePanoramaImageTask;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, v16

    #calls: Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-static {v2, v0}, Lcom/android/camera/component/PanoramaController;->access$100(Lcom/android/camera/component/PanoramaController;Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v14

    new-instance v23, Lcom/scalado/caps/Session;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v21, Lcom/scalado/caps/filter/Rotate;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    invoke-virtual/range {v21 .. v22}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Rotate panorama picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_5

    new-instance v15, Lcom/scalado/base/Size;

    invoke-virtual {v14}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-virtual {v14}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-direct {v15, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    move-object v14, v15

    :cond_5
    new-instance v9, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object/from16 v0, v20

    invoke-direct {v9, v0, v14}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    const/high16 v2, 0x3f80

    invoke-virtual {v9, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v17

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Iterator;->done()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/scalado/stream/FileStream;->close()V

    goto/16 :goto_2

    :catch_1
    move-exception v11

    :goto_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot save rotated panorama image"

    invoke-static {v2, v3, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/stream/FileStream;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    :goto_8
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/stream/FileStream;->close()V

    :cond_6
    throw v2

    :cond_7
    :try_start_6
    invoke-virtual {v12}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "No UI to send review image"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/imaging/SaveImageTask;->TAG:Ljava/lang/String;

    const-string v3, "No UI to notify STITCH_COMPLETED"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    move-object/from16 v19, v20

    goto :goto_8

    :catch_2
    move-exception v11

    move-object/from16 v19, v20

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object/from16 v24, v25

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
