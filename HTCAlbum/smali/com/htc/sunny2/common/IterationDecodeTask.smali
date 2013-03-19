.class public Lcom/htc/sunny2/common/IterationDecodeTask;
.super Lcom/htc/sunny2/common/IterationTaskGallery;
.source "IterationDecodeTask.java"


# static fields
.field private static final DEFAULT_TIMELIMITS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "IterationDecodeTask"


# instance fields
.field private mColorDepth:I

.field private mDecodeFlags:I

.field private mDecodeWebp:Z

.field private mDecodeWebpBmp:Landroid/graphics/Bitmap;

.field private mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTaskGallery;-><init>()V

    new-instance v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v0}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iput v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    iput-boolean v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mID:I

    return-void
.end method

.method private decodeWebp()Z
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v5, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const-string v5, "IterationDecodeTask"

    const-string v6, "[IterationDecodeTask][decodeWebp] Unknown source type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v5, v5, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/htc/opensense2/album/util/ImageUtils;->cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    :cond_0
    :goto_1
    return v8

    :pswitch_1
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const-string v5, "IterationDecodeTask"

    const-string v6, "[IterationDecodeTask][decodeWebp] FilePath is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, v5, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_2

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    const-string v5, "IterationDecodeTask"

    const-string v6, "[IterationDecodeTask][decodeWebp] ParcelFileDescriptor is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, v5, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_3
    const-string v5, "IterationDecodeTask"

    const-string v6, "[IterationDecodeTask][decodeWebp] MediaData InputStream is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v7, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v7, v7, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    invoke-static {v5, v6, v7}, Lcom/htc/opensense2/album/util/ImageUtils;->cropCenterByWidthHeight(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V
    .locals 9

    const-wide/high16 v7, 0x3fe0

    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    iput-object v5, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    int-to-float v6, v6

    div-float v3, v5, v6

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    int-to-float v6, v6

    div-float v4, v5, v6

    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_1
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v1, v5

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v0, v5

    invoke-static {p1, v1, v0}, Lcom/htc/sunny2/common/ImageDecoder;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void

    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public getDecodeFlag()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    return v0
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    return-void
.end method

.method public onEnd()V
    .locals 8

    iget-boolean v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v2, :cond_0

    const-string v2, "IterationDecodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IterationDecodeTask][onEnd] FilePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bmp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    const-string v2, "IterationDecodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IterationDecodeTask][onEnd] Total spent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/CacheItem;->getScaladoBitmapHandle()I

    move-result v1

    const-string v2, "IterationDecodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IterationDecodeTask][onEnd] FilePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scaladoBitmapHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutScaladoBitmapHandle(I)V

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v2, :cond_0

    const-string v2, "IterationDecodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IterationDecodeTask][onEnd] FilePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bmp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-object v0, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    goto/16 :goto_0
.end method

.method public onIterate()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v1, :cond_0

    const-string v1, "IterationDecodeTask"

    const-string v2, "[IterationDecodeTask][onIterate] CacheItem is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationDecodeTask;->decodeWebp()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetup()V
    .locals 14

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v0, :cond_0

    const-string v0, "IterationDecodeTask"

    const-string v3, "[IterationDecodeTask][onSetup] CacheItem is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const-string v4, "image/webp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    iget v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const-string v4, "image/mpo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v13, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    const-string v0, "IterationDecodeTask"

    const-string v3, "[IterationDecodeTask][onSetup] Unknown source type"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v4, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v5, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v7, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    goto :goto_0

    :cond_3
    const-string v0, "IterationDecodeTask"

    const-string v3, "[IterationDecodeTask][onSetup] FilePath is empty"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v5, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v8, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v10, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v11, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    move-object v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v11}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "IterationDecodeTask"

    const-string v3, "[IterationDecodeTask][onSetup] ParcelFileDescriptor is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v7, v0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskGallery;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v10, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v11, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v12, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    move v8, v3

    invoke-virtual/range {v6 .. v12}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z

    goto/16 :goto_0

    :cond_5
    const-string v0, "IterationDecodeTask"

    const-string v3, "[IterationDecodeTask][onSetup] MediaData InputStream is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTaskGallery;->release()V

    return-void
.end method

.method public setColorDepth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    return-void
.end method

.method public setDecodeFlag(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    return-void
.end method

.method public setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;I)V

    return-void
.end method
