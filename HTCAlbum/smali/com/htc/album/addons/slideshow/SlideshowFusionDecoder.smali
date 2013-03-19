.class public Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;
.super Landroid/os/HandlerThread;
.source "SlideshowFusionDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;
    }
.end annotation


# static fields
.field private static final DEQUE_SIZE:I = 0x1

.field public static final MSG_DECODE_IMAGE:I = 0xc350

.field public static final PRIORITY_BACKGROUND:I = 0x2

.field public static final PRIORITY_FOREGROUND:I = 0x1

.field public static final PRIORITY_INIT_BACKGROUND:I


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const-class v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    return-object v0
.end method

.method private decodeWebp(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionDecoder][decodeWebp]image null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionDecoder][decodeWebp]degreesRotated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]enter rotate"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    const/16 v10, 0x5a

    :cond_1
    :goto_1
    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v2, :pswitch_data_0

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionDecoder][decodeWebp]prefer size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    move/from16 v0, p2

    int-to-float v3, v0

    div-float v15, v2, v3

    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v16, v2, v3

    if-eqz v12, :cond_4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :goto_3
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v14

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v9, v2

    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v14

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v8, v2

    invoke-static {v13, v9, v8}, Lcom/htc/opensense2/album/util/ImageUtils;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {v11}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v10

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    if-nez v2, :cond_3

    const/16 v10, 0x5a

    goto/16 :goto_1

    :cond_3
    const/16 v10, 0x10e

    goto/16 :goto_1

    :pswitch_0
    const/16 p2, 0x80

    const/16 p3, 0x80

    goto/16 :goto_2

    :pswitch_1
    const/16 p2, 0x320

    const/16 p3, 0x320

    goto/16 :goto_2

    :pswitch_2
    const/16 p2, 0x190

    const/16 p3, 0x12c

    goto/16 :goto_2

    :cond_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeWithScalado(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;
    .locals 11

    const/16 v10, 0x5a

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v6, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v5, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]image null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    :goto_0
    return-object v4

    :cond_0
    const-string v5, "image/jps"

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v1, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]can\'t get scalado valid handle"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v0

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]degreesRotated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    if-nez v4, :cond_6

    if-eqz p4, :cond_6

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]enter rotate"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    :goto_1
    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    :goto_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, p2, p3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    :cond_2
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][decodeWithScalado]prefer size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v4, v2, Lcom/htc/sunnyCore/IMediaData;

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    check-cast v2, Lcom/htc/sunnyCore/IMediaData;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I

    :cond_3
    :goto_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    iget v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayOrientation:I

    if-nez v4, :cond_5

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/16 v5, 0x10e

    invoke-virtual {v4, v1, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    goto/16 :goto_1

    :pswitch_0
    const/16 p2, 0x80

    const/16 p3, 0x80

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    goto/16 :goto_2

    :pswitch_1
    const/16 p2, 0x320

    const/16 p3, 0x320

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    goto/16 :goto_2

    :pswitch_2
    if-lt p2, p3, :cond_7

    iput-boolean v9, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isPortrait:Z

    :goto_4
    const/16 p2, 0x190

    const/16 p3, 0x12c

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    goto/16 :goto_2

    :cond_7
    iput-boolean v7, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isPortrait:Z

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldRotate(IIII)Z
    .locals 1

    const/4 v0, 0x1

    if-le p1, p2, :cond_1

    if-ge p3, p4, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge p1, p2, :cond_2

    if-gt p3, p4, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDecodeItem(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected decodeImage(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 14

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage] + "

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-nez p1, :cond_0

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]DecodeItem null"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]mList null"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    iput-object v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget v12, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v11, v12}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]image null"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    iput-object v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]image: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v10

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v2

    iget v1, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    iget v0, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", displayW = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", displayH = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->fitMethod:I

    if-nez v11, :cond_3

    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v12, 0x5

    if-eq v11, v12, :cond_3

    if-lt v10, v2, :cond_8

    if-lt v0, v1, :cond_6

    move v10, v0

    :goto_1
    if-lt v0, v1, :cond_7

    move v2, v1

    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_c

    if-lt v2, v10, :cond_b

    const/4 v5, 0x1

    :goto_3
    const-string v11, "image/webp"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-direct {p0, p1, v10, v2, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodeWebp(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_e

    const-string v11, "video/3gpp-3d"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "video/mp4-3d"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]: Shouldn\'t run to here, Slideshow not support Video !!!"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v8, v11, v6

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][SlideshowFusionDecoder][decodeImage] - , time "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_6
    move v10, v1

    goto/16 :goto_1

    :cond_7
    move v2, v0

    goto/16 :goto_2

    :cond_8
    if-ge v0, v1, :cond_9

    move v10, v0

    :goto_5
    if-ge v0, v1, :cond_a

    move v2, v1

    :goto_6
    goto/16 :goto_2

    :cond_9
    move v10, v1

    goto :goto_5

    :cond_a
    move v2, v0

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    iget v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayHeight:I

    iget v12, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->displayWidth:I

    invoke-direct {p0, v2, v10, v11, v12}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->shouldRotate(IIII)Z

    move-result v5

    goto :goto_3

    :cond_d
    invoke-direct {p0, p1, v10, v2, v5}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodeWithScalado(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_4

    :cond_e
    iget-object v11, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][SlideshowFusionDecoder][decodeImage]: Bitmap curImage.thumbBitmap is NG !"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    iput-object v11, p1, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public initHandler()V
    .locals 2

    new-instance v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->setImageList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->quit()Z

    return-void
.end method

.method public setDecodeCompleteCallback(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    return-void
.end method

.method public setImageList(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-void
.end method
