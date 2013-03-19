.class public Lcom/htc/sunny2/common/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;,
        Lcom/htc/sunny2/common/ImageDecoder$STATE;
    }
.end annotation


# static fields
.field public static final DECODE_FLAG_ALLOW_EXIF_THUMB:I = 0x10

.field public static final DECODE_FLAG_ALLOW_LOAD_ITERATE:I = 0x40

.field public static final DECODE_FLAG_ALLOW_SPMO:I = 0x20

.field public static final DECODE_FLAG_BITMAP_COLOR_DEPTH:I = 0x400

.field public static final DECODE_FLAG_DECODE_SCALADO_BITMAP:I = 0x2000

.field public static final DECODE_FLAG_DECODE_SOURCE_WIDTH_HEIGHT:I = 0x1000

.field public static final DECODE_FLAG_NO_PROGRESSIVE_JPEG:I = 0x100

.field public static final DECODE_FLAG_SCALE_FOR_3D:I = 0x1

.field public static final DECODE_FLAG_SCALE_TO_FILL:I = 0x4

.field public static final DECODE_FLAG_SCALE_TO_FIT:I = 0x2

.field public static final DECODE_FLAG_SIDE_BY_SIDE:I = 0x200

.field public static final DEFAULT_COLOR_DEPTH:I = -0x1

.field private static final LTAG:Ljava/lang/String;

.field public static SCALADO_BITMAP_COUNT:I


# instance fields
.field private decodeHandle:I

.field private mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

.field private mDecodeFlags:I

.field private mFilePath:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mIsProgressiveJpeg:Z

.field private mIsSideBySide:Z

.field private mItemIndex4ImageDecoderCallbackListener:I

.field private mMimeType:Ljava/lang/String;

.field private mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mPhotoHeight:I

.field private mPhotoWidth:I

.field private outputSunnyBitmap:I

.field private outputSunnyTexture:I

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private resultScaladoBitmapHandle:I

.field private state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

.field private toSunnyTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    return-void
.end method

.method private adjustWidthHeightFromSource()V
    .locals 9

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v4, :cond_3

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_1
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    if-gt v6, v7, :cond_2

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    if-le v1, v7, :cond_0

    :cond_2
    iput v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const/4 v7, 0x0

    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v8, "[ImageDecoder][adjustWidthHeightFromSource] Image source is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private closeMemberParcelFileDescriptor()V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private doDecode(J)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v3, :cond_0

    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v3, "doDecode() NG - null decodeHandle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_6

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEndForScaladoBitmap(II)I

    :cond_2
    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    iget-boolean v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v3, "doDecode() NG - decode finish, but null scaladoBitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v3, "doDecode() NG - decode finish, but null bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDecode() NG - decodeIterate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method private doLoad(J)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v5, :cond_0

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "doLoad() NG - null decodeHandle"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    :goto_0
    return v3

    :cond_0
    const/4 v2, -0x1

    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFilePathIterate(IJ)I

    move-result v2

    :goto_1
    if-nez v2, :cond_4

    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_2

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFDIterate(IJ)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v6, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v5, v6, :cond_3

    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadInputStreamIterate(IJ)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doLoad() NG - unknow state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    :cond_4
    const/4 v5, 0x3

    if-ne v2, v5, :cond_9

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v5

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSource()V

    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v8, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v5, p0, v6, v7, v8}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;III)V

    :cond_5
    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doLoad() - load success w/h "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    const-string v5, "image/mpo"

    iget-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v1

    if-lez v1, :cond_8

    iget-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v5, v6, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    :cond_6
    :goto_2
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_2

    :cond_8
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doLoad() NG - loadIterate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto/16 :goto_0
.end method

.method private doMakeTexture(J)Z
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - null sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    :goto_0
    return v3

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - null texture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunnyCore/SunnyCore;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doMakeTexture() NG - setup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method public static heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v0, v11

    move/from16 v20, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "candidateW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " candidateH "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez v2, :cond_0

    const/16 v20, 0x1

    :goto_0
    return v20

    :cond_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v2, v0, :cond_1

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    div-int v20, v19, v2

    move/from16 v0, v20

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v2, v0, :cond_2

    move/from16 v0, p2

    if-le v11, v0, :cond_2

    div-int v20, v11, v2

    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "current Heap "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " left memory "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v17, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/4 v14, 0x2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    div-int v20, v19, v2

    move/from16 v0, v20

    int-to-long v7, v0

    div-int v20, v11, v2

    move/from16 v0, v20

    int-to-long v5, v0

    mul-long v20, v7, v5

    int-to-long v0, v14

    move-wide/from16 v22, v0

    mul-long v17, v20, v22

    sget-object v20, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "candidate "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " curW "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", curH "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v20, v17, v12

    if-lez v20, :cond_4

    add-int/lit8 v15, v15, -0x1

    if-gtz v15, :cond_3

    :cond_4
    move/from16 v20, v2

    goto/16 :goto_0

    :cond_5
    const/4 v14, 0x4

    goto :goto_1
.end method

.method private loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z
    .locals 14

    const-string v3, "image/webp"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v0, p7

    and-int/lit16 v0, v0, -0x2001

    move/from16 p7, v0

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/sunny2/common/ImageDecoder;->loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_0

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "loadFromFilePathToSunnyTexture() NG - loadWebpFromFilePath fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v12, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v3, :cond_2

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "loadFromFilePathToBitmap() NG - decodeBegin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move/from16 v0, p7

    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_4

    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_3

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setUseScaladoBitmap(I)I

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    if-nez v3, :cond_3

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++SCALADO_BITMAP_COUNT [ImageDecoder][ImageDecoder]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    and-int/lit8 v3, p7, 0x40

    if-eqz v3, :cond_5

    const/4 v10, 0x1

    :goto_2
    const/4 v13, -0x1

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    move/from16 v0, p7

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    const-string v3, "image/jps"

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    :goto_4
    and-int/lit8 p7, p7, -0x11

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v13

    :cond_9
    :goto_5
    if-eqz v13, :cond_10

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFromFilePathToBitmap() NG - loadFromFilePath "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_a
    const-string v3, "image/mpo"

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    and-int/lit8 p7, p7, -0x11

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v13

    if-nez v10, :cond_9

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v11

    if-lez v11, :cond_d

    iget-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_5

    :cond_d
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_e
    move-object v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4, p1, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;Z)I

    move-result v13

    goto/16 :goto_5

    :cond_10
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->isProgressiveJpeg(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    if-ne v3, v4, :cond_12

    move/from16 v0, p7

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_11

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "decode progressive jpeg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    if-eqz v10, :cond_13

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSource()V

    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v3, p0, v4, v5, v6}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;III)V

    :cond_14
    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_6
.end method

.method private loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z
    .locals 11

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromInputStream() NG - decodeBegin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromInputStream() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move/from16 v0, p6

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setUseScaladoBitmap(I)I

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++SCALADO_BITMAP_COUNT [ImageDecoder][ImageDecoder]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 v1, p6, 0x40

    if-eqz v1, :cond_4

    const/4 v9, 0x1

    :goto_2
    const/4 v10, -0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, p1, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_3
    if-eqz v10, :cond_5

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromInputStream() NG - loadFromInputStream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :catch_0
    move-exception v7

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    if-eqz v9, :cond_6

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->adjustWidthHeightFromSource()V

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;III)V

    :cond_7
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_4
.end method

.method private loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z
    .locals 13

    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFileDescriptor() NG - decodeBegin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_2

    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setUseScaladoBitmap(I)I

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    if-nez v1, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++SCALADO_BITMAP_COUNT [ImageDecoder][ImageDecoder]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v1, p7, 0x40

    if-eqz v1, :cond_3

    const/4 v10, 0x1

    :goto_2
    const/4 v12, -0x1

    iput-object p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    move/from16 v0, p7

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    const-string v1, "image/jps"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    :goto_4
    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_4

    :cond_6
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    :goto_5
    if-eqz v12, :cond_d

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromFileDescriptor() NG - loadFromFileDescriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    and-int/lit8 p7, p7, -0x11

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I

    move-result v12

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v11

    if-lez v11, :cond_a

    iget-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v7

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_9
    :try_start_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_5

    :cond_a
    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :cond_b
    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v2, "loadFromFileDescriptor() NG - setupDecodeParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_c
    :try_start_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2, v8, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    goto/16 :goto_5

    :catch_2
    move-exception v7

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    if-eqz v10, :cond_e

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;->onLoadComplete(Lcom/htc/sunny2/common/ImageDecoder;III)V

    :cond_f
    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_6
.end method

.method private loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v2, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v9, v2

    :goto_0
    div-int v3, p3, p4

    if-eqz v3, :cond_2

    move v8, v2

    :goto_1
    if-eq v8, v9, :cond_0

    move v10, p3

    move p3, p4

    move p4, v10

    :cond_0
    invoke-static {v7, p3, p4}, Lcom/htc/sunny2/common/ImageDecoder;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, p2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_1
    move v9, v1

    goto :goto_0

    :cond_2
    move v8, v1

    goto :goto_1
.end method

.method private setupDecodeParameters(IIIII)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v4, :cond_0

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "setupDecodeParameters() NG - null decodeHandle"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iput p5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setDegree "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p2, p3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setPreferSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    :cond_3
    :goto_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setScaleType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    and-int/lit8 v4, p5, 0x10

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromExifFirst(IZ)I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setLoadFromExifFirst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v4, p5, 0x20

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setLoadFromSPMOFirst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v4, -0x1

    if-eq p4, v4, :cond_8

    and-int/lit16 v4, p5, 0x400

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5, p4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDecodeParameters() NG - setBitmapColorDepth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto/16 :goto_0
.end method


# virtual methods
.method doConvertToSunnyBitmap(J)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - null bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    :goto_0
    return v2

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - null sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    iget-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/SunnyCore;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "doConvertToSunnyBitmap() NG - set sunny bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->MAKE_TEXTURE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_0
.end method

.method public free()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    invoke-direct {p0}, Lcom/htc/sunny2/common/ImageDecoder;->closeMemberParcelFileDescriptor()V

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->createScaladoBitmap()I

    move-result v1

    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++SCALADO_BITMAP_COUNT [ImageDecoder][free]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEndForScaladoBitmap(II)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->destroyScaladoBitmap(I)V

    const-string v2, "CacheTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--SCALADO_BITMAP_COUNT [ImageDecoder][free]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    :cond_2
    iput-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    sget-object v2, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    iput-boolean v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsSideBySide:Z

    iput-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mMimeType:Ljava/lang/String;

    iput v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->mDecodeFlags:I

    iput-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mFilePath:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/sunny2/common/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    return-void

    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public getFullPhotoHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    return v0
.end method

.method public getFullPhotoWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    return v0
.end method

.method public isFree()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProgressiveJpeg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mIsProgressiveJpeg:Z

    return v0
.end method

.method public iterate(J)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, v4, p1

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_1

    sget-object v3, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v4, "iterate() NG - not setup"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FILE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_FD:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doLoad(J)Z

    move-result v4

    if-ne v4, v3, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doDecode(J)Z

    move-result v4

    if-ne v4, v3, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doConvertToSunnyBitmap(J)Z

    move-result v4

    if-ne v4, v3, :cond_6

    move v2, v3

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v5, Lcom/htc/sunny2/common/ImageDecoder$STATE;->MAKE_TEXTURE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v4, v5, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_7

    move v2, v3

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/common/ImageDecoder;->doMakeTexture(J)Z

    move-result v4

    if-ne v4, v3, :cond_8

    move v2, v3

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->FAILED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v3, v4, :cond_0

    goto :goto_0
.end method

.method public loadFromFilePathToBitmap(Lcom/htc/sunnyCore/IMediaData;IIII)Z
    .locals 8

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmapWithoutFree(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromFilePathToSunnyTexture(Lcom/htc/sunnyCore/IMediaData;IILjava/lang/String;IIII)Z
    .locals 14

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - zero parameter"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v10

    const-string v4, "image/webp"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move/from16 v0, p8

    and-int/lit16 v0, v0, -0x2001

    move/from16 p8, v0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/sunny2/common/ImageDecoder;->loadWebpFromFilePath(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_2

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - loadWebpFromFilePath fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move/from16 v0, p2

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    move/from16 v0, p3

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->CONVERT_TO_SUNNY_BITMAP:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v12, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    iget v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v4, :cond_4

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - decodeBegin"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v13, 0x5

    if-eqz v10, :cond_7

    const-string v4, "image/jps"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v0, p8

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    :goto_1
    and-int/lit8 p8, p8, -0x11

    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    :goto_2
    if-eqz v13, :cond_d

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromFilePathToSunnyTexture() NG - loadFromFilePath "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    if-eqz v10, :cond_b

    const-string v4, "image/mpo"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    and-int/lit8 p8, p8, -0x11

    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToBitmap() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v11

    if-lez v11, :cond_a

    move/from16 v0, p8

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOStereoIndexs(III)I

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto/16 :goto_2

    :cond_a
    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageDecoder][loadFromFilePathToBitmap]mpo file contains no photos!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    const/4 v8, -0x1

    move-object v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v4

    if-nez v4, :cond_c

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v5, "loadFromFilePathToSunnyTexture() NG - setupDecodeParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    :cond_d
    move/from16 v0, p2

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    move/from16 v0, p3

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    sget-object v4, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v4, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public loadFromInputStreamToBitmap(Ljava/io/InputStream;IIII)Z
    .locals 7

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    invoke-direct/range {p0 .. p6}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmapWithoutFree(Ljava/io/InputStream;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromInputStreamToTexture(Ljava/io/InputStream;IIIIII)Z
    .locals 9

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - decodeBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v4, -0x1

    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/common/ImageDecoder;->setupDecodeParameters(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    const-string v1, "loadFromInputStream() NG - setupDecodeParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p7, 0x40

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    :goto_1
    const/4 v8, -0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_2
    if-eqz v8, :cond_3

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromInputStream() NG - loadFromInputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :catch_0
    move-exception v6

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder;->LTAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->toSunnyTexture:Z

    if-eqz v7, :cond_4

    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->LOAD_IS:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    :goto_3
    iput p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyBitmap:I

    iput p3, p0, Lcom/htc/sunny2/common/ImageDecoder;->outputSunnyTexture:I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoWidth:I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mPhotoHeight:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/htc/sunny2/common/ImageDecoder$STATE;->DECODE:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    goto :goto_3
.end method

.method public loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;IIII)Z
    .locals 8

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmapWithoutFree(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    iget v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->destroyScaladoBitmap(I)V

    const-string v0, "CacheTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--SCALADO_BITMAP_COUNT [ImageDecoder][release]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/htc/sunny2/common/ImageDecoder;->SCALADO_BITMAP_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    return-void
.end method

.method public setDegree(I)V
    .locals 2

    rem-int/lit16 p1, p1, 0x168

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    return-void
.end method

.method public setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/ImageDecoder;->mCallbackListener:Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;

    iput p2, p0, Lcom/htc/sunny2/common/ImageDecoder;->mItemIndex4ImageDecoderCallbackListener:I

    return-void
.end method

.method public setPreferSize(II)V
    .locals 2

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->decodeHandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    return-void
.end method

.method public succeeded()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->state:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    sget-object v1, Lcom/htc/sunny2/common/ImageDecoder$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/ImageDecoder$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeOutBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public takeOutScaladoBitmapHandle(I)V
    .locals 2

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/common/ImageDecoder;->resultScaladoBitmapHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->swapScaladoBitmap(II)V

    return-void
.end method
