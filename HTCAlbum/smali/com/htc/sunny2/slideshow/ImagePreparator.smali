.class public Lcom/htc/sunny2/slideshow/ImagePreparator;
.super Lcom/htc/sunnyCore/RenderThreadPreparation;
.source "ImagePreparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Ljava/lang/String; = "KA>>> SControl "

.field private static final LTAG:Ljava/lang/String; = "ImagePreparator"

.field public static final NAME:Ljava/lang/String; = "ImagePreparator"

.field private static final PHASE_BITMAP:I = 0x1

.field private static final PHASE_TEXTURE:I = 0x2

.field private static final TEXTURES_COUNT:I = 0x5

.field private static final TEXTURE_HEIGHT:I = 0x200

.field private static final TEXTURE_WIDTH:I = 0x400

.field private static mFaceDetectMaxHeightSIZE:I

.field private static mFaceDetectMaxWidthSIZE:I


# instance fields
.field private imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

.field private mFullPhotoHeight:I

.field private mFullPhotoWidth:I

.field private mSkipBitampDecode:Z

.field private mSunnyEnv:I

.field private mediaList:Lcom/htc/sunnyCore/IMediaList;

.field private requestItemIndex:I

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

.field private sunnyBitmap:I

.field private taskPhase:I

.field private textureForDecode:I

.field private textureIndexToUse:I

.field private textures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_WIDTH:I

    sput v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxWidthSIZE:I

    sget v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_HEIGHT:I

    sput v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxHeightSIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadPreparation;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v1}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    new-array v1, v5, [I

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    iput-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iput v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    iput-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    iput v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSkipBitampDecode:Z

    iput-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSunnyEnv:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doBitmapDecode(J)Z
    .locals 11

    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string v0, "ImagePreparator"

    const-string v3, "doBitmapDecode() NG - error index"

    invoke-static {v0, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iget v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-interface {v0, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-nez v1, :cond_1

    const-string v0, "ImagePreparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBitmapDecode() NG - getMediaItem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSkipBitampDecode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->isFree()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ImagePreparator"

    const-string v3, "[HTCAlbum][ImagePreparator][doBitmapDecode]: Force Skip Decode Bitmap !"

    invoke-static {v0, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    goto :goto_0

    :cond_2
    const-string v0, "ImagePreparator"

    const-string v3, "[HTCAlbum][ImagePreparator][doBitmapDecode]: Free Bitamp ! Force Skip Decode Bitmap !"

    invoke-static {v0, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    move v0, v9

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->isFree()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    if-gez v2, :cond_4

    add-int/lit16 v2, v2, 0x168

    :cond_4
    const/4 v6, 0x0

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget v3, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxWidthSIZE:I

    sget v4, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxHeightSIZE:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIII)Z

    move-result v6

    :goto_1
    if-nez v6, :cond_6

    const-string v0, "ImagePreparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBitmapDecode() NG - loadFromFilePathToBitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    sget v3, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxWidthSIZE:I

    sget v4, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxHeightSIZE:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Lcom/htc/sunnyCore/IMediaData;IIII)Z

    move-result v6

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v7, p1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v7, v3

    if-gtz v0, :cond_7

    move v0, v10

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0, v7, v8}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v0

    if-ne v0, v10, :cond_8

    move v0, v10

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    move v0, v9

    goto/16 :goto_0
.end method

.method private doTextureDecode(J)Z
    .locals 19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v2, "ImagePreparator"

    const-string v3, "doTextureDecode() NG - error index"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->isFree()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-nez v8, :cond_1

    const-string v2, "ImagePreparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTextureDecode() NG - getMediaItem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->getATextureToUse()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v6

    rem-int/lit16 v6, v6, 0x168

    if-gez v6, :cond_2

    add-int/lit16 v6, v6, 0x168

    :cond_2
    const/16 v16, 0x0

    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    const/16 v7, 0x400

    const/16 v8, 0x200

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToTexture(Ljava/io/InputStream;IIIIII)Z

    move-result v16

    :goto_1
    if-nez v16, :cond_4

    const-string v2, "ImagePreparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTextureDecode() NG - loadFromFilePathToBitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->giveBackTexture(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    invoke-interface {v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0x400

    const/16 v14, 0x200

    const/4 v15, 0x1

    move v12, v6

    invoke-virtual/range {v7 .. v15}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToSunnyTexture(Lcom/htc/sunnyCore/IMediaData;IILjava/lang/String;IIII)Z

    move-result v16

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v17, p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v17, v2

    if-gtz v2, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v2, "ImagePreparator"

    const-string v3, "Texture decode failed."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->giveBackTexture(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    goto :goto_2
.end method

.method private getATextureToUse()I
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    iget v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    aget v0, v1, v2

    iget v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    iget v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    :cond_0
    return v0
.end method

.method private giveBackTexture(I)V
    .locals 2

    if-nez p1, :cond_1

    const-string v0, "ImagePreparator"

    const-string v1, "giveBackTexture() NG - null texture"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    if-gez v0, :cond_2

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    iget v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    aget v0, v0, v1

    if-eq v0, p1, :cond_0

    const-string v0, "ImagePreparator"

    const-string v1, "giveBackTexture() NG - texture not match"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bindMediaList(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    return-void
.end method

.method public deinit()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->endRequest()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/htc/sunnyCore/SunnyCore;->DestroyTexture(I)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    iget v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    invoke-static {v1}, Lcom/htc/sunnyCore/SunnyCore;->DestroyBitmap(I)V

    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    :cond_2
    return-void
.end method

.method public endRequest()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    iput-boolean v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSkipBitampDecode:Z

    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    return-void
.end method

.method public getFullPhotoHeight()I
    .locals 6

    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v4, :cond_0

    const-string v4, "ImagePreparator"

    const-string v5, "[Imagepreparator][getFullPhotoHeight]: mediaList NG !"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iget v5, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-interface {v4, v5}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    if-gtz v4, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    :cond_1
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoHeight:I

    goto :goto_0
.end method

.method public getFullPhotoWidth()I
    .locals 6

    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v4, :cond_0

    const-string v4, "ImagePreparator"

    const-string v5, "[Imagepreparator][getFullPhotoWidth]: mediaList NG !"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iget v5, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-interface {v4, v5}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    if-gtz v4, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    :cond_1
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFullPhotoWidth:I

    goto :goto_0
.end method

.method public getResultTexture()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    return v0
.end method

.method public init(I)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "ImagePreparator"

    const-string v3, "init() NG - null sunny env"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->deinit()V

    :goto_0
    return v1

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSunnyEnv:I

    invoke-static {p1}, Lcom/htc/sunnyCore/SunnyCore;->CreateBitmap(I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    iget v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->sunnyBitmap:I

    if-nez v2, :cond_1

    const-string v2, "ImagePreparator"

    const-string v3, "init() NG - CreateBitmap"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->deinit()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    invoke-static {p1}, Lcom/htc/sunnyCore/SunnyCore;->CreateTexture(I)I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textures:[I

    aget v2, v2, v0

    if-nez v2, :cond_2

    const-string v2, "ImagePreparator"

    const-string v3, "init() NG - CreateTexture"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->deinit()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureIndexToUse:I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 11

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "123"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KA>>> SControl  onProcessPreparationIRT , State: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    if-ne v4, v6, :cond_0

    const-string v4, "Decoding Bitmap..."

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    if-ne v4, v9, :cond_1

    move v4, v5

    :goto_1
    return v4

    :cond_0
    const-string v4, "Decoding Texture..."

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    if-ne v4, v6, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->doBitmapDecode(J)Z

    move-result v4

    if-ne v4, v6, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSkipBitampDecode:Z

    if-eqz v4, :cond_3

    iput v10, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    move v4, v6

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_6

    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->endRequest()V

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;->onBitmapDecodeFailed(I)V

    :cond_4
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    if-eq v4, v9, :cond_5

    const-string v4, "ImagePreparator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Has new request. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    iget v7, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-interface {v4, v7}, Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;->onBitmapDecodeReady(I)V

    :cond_7
    iput v10, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v2, p1, v7

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-gtz v4, :cond_9

    move v4, v6

    goto :goto_1

    :cond_9
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    if-ne v4, v10, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->doTextureDecode(J)Z

    move-result v4

    if-ne v4, v6, :cond_a

    move v4, v6

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    if-nez v4, :cond_d

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->endRequest()V

    if-eqz v1, :cond_b

    invoke-interface {v1, v0}, Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;->onTextureDecodeFailed(I)V

    :cond_b
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    if-eq v4, v9, :cond_c

    const-string v4, "ImagePreparator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Has new request. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto/16 :goto_1

    :cond_c
    move v4, v5

    goto/16 :goto_1

    :cond_d
    iput v9, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    iput v5, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    const-string v4, "ImagePreparator"

    const-string v7, "Request finish."

    invoke-static {v4, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_e

    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSunnyEnv:I

    invoke-static {v4}, Lcom/htc/sunnyCore/SunnyCore;->Environment_LogStatus(I)V

    invoke-interface {v1, v0}, Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;->onTextureDecodeReady(I)V

    :cond_e
    iget v4, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    if-eq v4, v9, :cond_f

    const-string v4, "ImagePreparator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Has new request. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto/16 :goto_1

    :cond_f
    move v4, v5

    goto/16 :goto_1

    :cond_10
    move v4, v5

    goto/16 :goto_1
.end method

.method public onRemovedIRT()V
    .locals 0

    return-void
.end method

.method public requestImage(Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "ImagePreparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestImage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->isFree()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "ImagePreparator"

    const-string v2, "requestImage() NG - decoder is not free"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v1, "ImagePreparator"

    const-string v2, "requestImage() NG - already has request"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v2, :cond_2

    const-string v1, "ImagePreparator"

    const-string v2, "requestImage() NG - null mediaList"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ltz p2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v2

    if-lt p2, v2, :cond_4

    :cond_3
    const-string v1, "ImagePreparator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImage() NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput p2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->requestItemIndex:I

    iput v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->taskPhase:I

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    :cond_5
    iput v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->textureForDecode:I

    iput-object p1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultListener:Lcom/htc/sunny2/slideshow/ImagePreparator$ResultListener;

    move v0, v1

    goto :goto_0
.end method

.method public requestSkipBitampDecode()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mSkipBitampDecode:Z

    const-string v0, "ImagePreparator"

    const-string v1, "[HTCAlbum][ImagePreparator][setSkipBitampDecode]: Force Skip Bitmap Decode !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFaceDetectDecodeSize(II)V
    .locals 0

    sput p1, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxWidthSIZE:I

    sput p2, Lcom/htc/sunny2/slideshow/ImagePreparator;->mFaceDetectMaxHeightSIZE:I

    return-void
.end method

.method public takeOutResultBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->resultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public unbindMediaList()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->endRequest()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/ImagePreparator;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    return-void
.end method
