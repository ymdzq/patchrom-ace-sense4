.class public Lcom/htc/sunny2/common/IterationDecodeTask;
.super Lcom/htc/sunny2/common/IterationTask;
.source "IterationDecodeTask.java"


# static fields
.field private static final DEFAULT_TIMELIMITS:J = 0xc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field private mColorDepth:I

.field private mDecodeFlags:I

.field private mDecodeWebp:Z

.field private mDecodeWebpBmp:Landroid/graphics/Bitmap;

.field private mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTask;-><init>()V

    .line 20
    new-instance v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v0}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    .line 21
    iput-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 22
    iput v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    .line 27
    iput-boolean v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    .line 28
    iput-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method private decodeWebp()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 61
    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v5, v6, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 63
    .local v5, sourceType:I
    sget-boolean v6, Lcom/htc/sunny2/common/IterationDecodeTask;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IterationDecodeTask][decodeWebp] mediaSourceType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 135
    :pswitch_0
    sget-object v6, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v7, "[IterationDecodeTask][decodeWebp] Unknown source type"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    .line 140
    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/common/IterationDecodeTask;->cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 142
    :cond_1
    return v9

    .line 69
    :pswitch_1
    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, v6, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 70
    .local v1, filePath:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 74
    invoke-direct {p0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    .line 75
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 77
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    sget-object v6, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v7, "[IterationDecodeTask][decodeWebp] FilePath is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v1           #filePath:Ljava/lang/String;
    :pswitch_2
    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v6, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 85
    .local v4, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_3

    .line 86
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v10, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 89
    invoke-direct {p0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    .line 90
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v10, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 93
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    sget-object v6, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v7, "[IterationDecodeTask][decodeWebp] ParcelFileDescriptor is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v4           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_3
    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v6, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 101
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_4

    .line 105
    :cond_4
    if-eqz v2, :cond_6

    .line 106
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 107
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 108
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 110
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Ljava/io/InputStream;->mark(I)V

    .line 112
    :cond_5
    invoke-static {v2, v10, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 114
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    invoke-direct {p0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;)V

    .line 120
    invoke-static {v2, v10, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 122
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :goto_2
    const/4 v2, 0x0

    .line 128
    goto/16 :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    sget-object v6, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 125
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v6, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 129
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_6
    sget-object v6, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v7, "[IterationDecodeTask][decodeWebp] MediaData InputStream is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 65
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
    .parameter "options"

    .prologue
    const-wide/high16 v7, 0x3fe0

    .line 48
    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    iput-object v5, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 49
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 50
    .local v3, rx:F
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v6, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 51
    .local v4, ry:F
    iget v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 53
    .local v2, ratio:F
    :goto_1
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v1, v5

    .line 54
    .local v1, decodeSizeW:I
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 55
    .local v0, decodeSizeH:I
    invoke-static {p1, v1, v0}, Lcom/htc/sunny2/common/ImageDecoder;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 56
    const/4 v5, 0x0

    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    return-void

    .line 48
    .end local v0           #decodeSizeH:I
    .end local v1           #decodeSizeW:I
    .end local v2           #ratio:F
    .end local v3           #rx:F
    .end local v4           #ry:F
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 51
    .restart local v3       #rx:F
    .restart local v4       #ry:F
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1
.end method

.method private tryGetInputStreamByUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .parameter "url"

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 149
    .local v2, mBufferedInputStream:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 150
    .local v5, paramURL:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 151
    .local v4, mURLConnection:Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 152
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 153
    .local v1, inputStream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #mBufferedInputStream:Ljava/io/BufferedInputStream;
    .local v3, mBufferedInputStream:Ljava/io/BufferedInputStream;
    move-object v2, v3

    .line 160
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v3           #mBufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v4           #mURLConnection:Ljava/net/URLConnection;
    .end local v5           #paramURL:Ljava/net/URL;
    .restart local v2       #mBufferedInputStream:Ljava/io/BufferedInputStream;
    :goto_0
    return-object v2

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    const/4 v7, 0x0

    .line 324
    :goto_0
    return-object v7

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 302
    .local v4, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 304
    .local v1, height:I
    if-ne v4, v1, :cond_1

    move-object v7, p1

    .line 305
    goto :goto_0

    .line 307
    :cond_1
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 308
    .local v3, newMinSide:I
    sub-int v7, v4, v3

    div-int/lit8 v5, v7, 0x2

    .line 309
    .local v5, xMargin:I
    sub-int v7, v1, v3

    div-int/lit8 v6, v7, 0x2

    .line 310
    .local v6, yMargin:I
    const/4 v2, 0x0

    .line 312
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1, v5, v6, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 319
    :goto_1
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    move-object p1, v2

    :cond_2
    move-object v7, p1

    .line 324
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getCacheItem()Lcom/htc/sunny2/common/CacheItem;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    return-object v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    .line 226
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    .line 233
    return-void
.end method

.method public onEnd()V
    .locals 7

    .prologue
    .line 237
    iget-boolean v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    if-eqz v1, :cond_3

    .line 239
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_1

    .line 243
    sget-boolean v1, Lcom/htc/sunny2/common/IterationDecodeTask;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 244
    sget-object v1, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IterationDecodeTask][onEnd] FilePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bmp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 246
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 247
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    .line 263
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/htc/sunny2/common/IterationDecodeTask;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 264
    sget-object v1, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IterationDecodeTask][onEnd] Total spent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    return-void

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/ImageDecoder;->succeeded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_1

    .line 254
    sget-boolean v1, Lcom/htc/sunny2/common/IterationDecodeTask;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 255
    sget-object v1, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IterationDecodeTask][onEnd] FilePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bmp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 257
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    .line 258
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    goto :goto_0

    .line 261
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    goto :goto_0
.end method

.method public onIterate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v1, :cond_0

    .line 33
    sget-object v1, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v2, "[IterationDecodeTask][onIterate] CacheItem is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    return v0

    .line 37
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    if-eqz v1, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationDecodeTask;->decodeWebp()Z

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetup()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] CacheItem is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    .line 171
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const-string v4, "image/webp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebp:Z

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v13, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 180
    .local v13, sourceType:I
    sget-boolean v0, Lcom/htc/sunny2/common/IterationDecodeTask;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IterationDecodeTask][onSetup] mediaSourceType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    packed-switch v13, :pswitch_data_0

    .line 218
    :pswitch_0
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] Unknown source type"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 187
    .local v1, filePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 188
    .local v2, mimeType:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v4, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v5, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v7, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    goto :goto_0

    .line 191
    :cond_3
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] FilePath is empty"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #mimeType:Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v5, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 199
    .local v5, pfd:Landroid/os/ParcelFileDescriptor;
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 200
    .restart local v2       #mimeType:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 201
    iget-object v4, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v8, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v10, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v11, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    move-object v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v11}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    goto/16 :goto_0

    .line 203
    :cond_4
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] ParcelFileDescriptor is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 209
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v7, v0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 210
    .local v7, is:Ljava/io/InputStream;
    if-eqz v7, :cond_5

    .line 211
    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v10, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v11, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v12, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    move v8, v3

    invoke-virtual/range {v6 .. v12}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z

    goto/16 :goto_0

    .line 213
    :cond_5
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] MediaData InputStream is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
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

    .prologue
    const/4 v1, 0x0

    .line 269
    iput-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 270
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    .line 271
    iput-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeWebpBmp:Landroid/graphics/Bitmap;

    .line 272
    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 273
    return-void
.end method

.method public setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    .line 277
    return-void
.end method

.method public setColorDepth(I)V
    .locals 0
    .parameter "requiredColorDepth"

    .prologue
    .line 288
    iput p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    .line 289
    return-void
.end method

.method public setDecodeFlag(I)V
    .locals 0
    .parameter "decodeFlag"

    .prologue
    .line 284
    iput p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    .line 285
    return-void
.end method

.method public setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/ImageDecoder;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V

    .line 293
    return-void
.end method
