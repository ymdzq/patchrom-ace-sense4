.class public Lcom/htc/album/addons/slideshow/KenBums;
.super Ljava/lang/Object;
.source "KenBums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/KenBums$Face;
    }
.end annotation


# instance fields
.field private final DEBUG_PRELOG:Ljava/lang/String;

.field private final OBVERSE:I

.field private final PHOTO_LANDSCAPE:I

.field private final PHOTO_PROTRAIT:I

.field private final REVERSE:I

.field private final TAGLOG:Ljava/lang/String;

.field private final ZOOM_IN:I

.field private final ZOOM_OUT:I

.field private mEyeRangRaing:F

.field private mFaceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/addons/slideshow/KenBums$Face;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxScaleRating:F

.field private mMaxTranslateDistance:F

.field private mMaxZoomTranslateDistance:F

.field private mOutptScale:F

.field private mPhotoHeight:I

.field private mPhotoState:I

.field private mPhotoWidth:I

.field private mPointEnd:Landroid/graphics/PointF;

.field private mPointStart:Landroid/graphics/PointF;

.field private mPreDirection:I

.field private mPreDirectionRegion:I

.field private mPreZoom:I

.field private mRandom:Ljava/util/Random;

.field private mRandomSplit:I

.field private mRectEnd:Landroid/graphics/RectF;

.field private mRectFace:Landroid/graphics/RectF;

.field private mRectPhoto:Landroid/graphics/RectF;

.field private mRectStart:Landroid/graphics/RectF;

.field private mRectVision:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KenBums"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->TAGLOG:Ljava/lang/String;

    const-string v0, "[HTCAlbum][KenBums] "

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->DEBUG_PRELOG:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->PHOTO_PROTRAIT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->PHOTO_LANDSCAPE:I

    iput v2, p0, Lcom/htc/album/addons/slideshow/KenBums;->OBVERSE:I

    iput v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->REVERSE:I

    iput v2, p0, Lcom/htc/album/addons/slideshow/KenBums;->ZOOM_OUT:I

    iput v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->ZOOM_IN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mEyeRangRaing:F

    const v0, 0x3e19999a

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxScaleRating:F

    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxTranslateDistance:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxZoomTranslateDistance:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    iput v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirection:I

    iput v2, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirectionRegion:I

    const-string v0, "KenBums"

    const-string v1, "[HTCAlbum][KenBums] [KenBums][KenBums]:  KenBums()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public analyzePhoto(IILjava/util/ArrayList;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/addons/slideshow/KenBums$Face;",
            ">;II)Z"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    iput-object p3, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    iput p1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    iput p2, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    iget v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, p4

    int-to-float v8, p5

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: arrayFace Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Photo: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Vision: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/KenBums;->calculateFaceRect()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "KenBums"

    const-string v5, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]:  Face Detection !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRectForFace(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_2
    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/KenBums;->getRandomZoomPoint_Portrait(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxScaleRating:F

    add-float v1, v4, v5

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxTranslateDistance:F

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/addons/slideshow/KenBums;->findPointByDistance(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    :cond_3
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v1}, Lcom/htc/album/addons/slideshow/KenBums;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v2, v5}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    if-nez v4, :cond_5

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    :goto_2
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]:  Zoom mRectStart : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]:  Zoom mRectEnd : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]:  Zoom Scale Rating W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x2

    if-ne v0, v4, :cond_10

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/KenBums;->getRandomPoint_FaceRect()Z

    move-result v4

    if-eqz v4, :cond_10

    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mMaxScaleRating:F

    add-float v1, v4, v5

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v1}, Lcom/htc/album/addons/slideshow/KenBums;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v2, v5}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    if-nez v4, :cond_9

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    :goto_3
    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Zoom C2 mRectStart : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Zoom C2 mRectEnd : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Zoom C2 Scale Rating W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreZoom:I

    goto/16 :goto_3

    :cond_b
    const-string v4, "KenBums"

    const-string v5, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]:  No Face Detection !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/KenBums;->getRandomPoint_Portrait()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectVision:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectPhoto:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    if-nez v4, :cond_d

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_d
    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirection:I

    if-nez v4, :cond_e

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v4, 0x1

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirection:I

    :goto_4
    const-string v5, "KenBums"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Zoom Infor mPreDirection: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirection:I

    if-nez v4, :cond_f

    const-string v4, "OBVERSE"

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Pan Only mRectStart : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Pan Only mRectEnd : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirection:I

    goto/16 :goto_4

    :cond_f
    const-string v4, "REVERSE"

    goto/16 :goto_5

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public calculateFaceRect()Z
    .locals 15

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    const-string v12, "KenBums"

    const-string v13, "[HTCAlbum][KenBums] [KenBums][calculateFaceRect()]: No Face!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_1
    const v9, 0x461c3c00

    const/4 v2, 0x0

    const v3, 0x461c3c00

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_1
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/album/addons/slideshow/KenBums$Face;

    invoke-virtual {v10}, Lcom/htc/album/addons/slideshow/KenBums$Face;->eyesDistance()F

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v10, v1}, Lcom/htc/album/addons/slideshow/KenBums$Face;->getMidPoint(Landroid/graphics/PointF;)V

    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mEyeRangRaing:F

    mul-float/2addr v0, v12

    iget v12, v1, Landroid/graphics/PointF;->y:F

    sub-float v8, v12, v0

    iget v12, v1, Landroid/graphics/PointF;->y:F

    add-float v5, v12, v0

    iget v12, v1, Landroid/graphics/PointF;->x:F

    sub-float v6, v12, v0

    iget v12, v1, Landroid/graphics/PointF;->x:F

    add-float v7, v12, v0

    cmpg-float v12, v8, v9

    if-gez v12, :cond_2

    move v9, v8

    :cond_2
    cmpl-float v12, v5, v2

    if-lez v12, :cond_3

    move v2, v5

    :cond_3
    cmpg-float v12, v6, v3

    if-gez v12, :cond_4

    move v3, v6

    :cond_4
    cmpl-float v12, v7, v4

    if-lez v12, :cond_5

    move v4, v7

    :cond_5
    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][calculateFaceRect()]: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]: ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_6
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    const/4 v13, 0x0

    cmpg-float v13, v3, v13

    if-gez v13, :cond_7

    const/4 v3, 0x0

    :cond_7
    float-to-int v13, v3

    int-to-float v13, v13

    iput v13, v12, Landroid/graphics/RectF;->left:F

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    const/4 v13, 0x0

    cmpg-float v13, v9, v13

    if-gez v13, :cond_8

    const/4 v9, 0x0

    :cond_8
    float-to-int v13, v9

    int-to-float v13, v13

    iput v13, v12, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    int-to-float v13, v13

    cmpl-float v13, v4, v13

    if-lez v13, :cond_9

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    int-to-float v4, v13

    :cond_9
    float-to-int v13, v4

    int-to-float v13, v13

    iput v13, v12, Landroid/graphics/RectF;->right:F

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    int-to-float v13, v13

    cmpl-float v13, v2, v13

    if-lez v13, :cond_a

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    int-to-float v2, v13

    :cond_a
    float-to-int v13, v2

    int-to-float v13, v13

    iput v13, v12, Landroid/graphics/RectF;->bottom:F

    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][calculateFaceRect()]: FaceRect: ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public findFitScreenSize(IIII)Landroid/graphics/Rect;
    .locals 15

    const/high16 v9, 0x4000

    move/from16 v0, p3

    move/from16 v1, p1

    if-lt v0, v1, :cond_0

    const/4 v8, 0x1

    :goto_0
    move/from16 v0, p4

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    const/4 v7, 0x1

    :goto_1
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    move/from16 v0, p1

    int-to-float v11, v0

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v6, v11, v12

    move/from16 v0, p2

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    div-float v4, v11, v12

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move/from16 v0, p3

    int-to-float v11, v0

    mul-float v3, v11, v5

    move/from16 v0, p4

    int-to-float v11, v0

    mul-float v2, v11, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    float-to-int v13, v3

    float-to-int v14, v2

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-object v10

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    if-nez v8, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    move/from16 v0, p1

    int-to-float v11, v0

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v6, v11, v12

    move/from16 v0, p2

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    div-float v4, v11, v12

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move/from16 v0, p3

    int-to-float v11, v0

    mul-float v3, v11, v5

    move/from16 v0, p4

    int-to-float v11, v0

    mul-float v2, v11, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    float-to-int v13, v3

    float-to-int v14, v2

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public findPointByDistance(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    cmpl-float v2, p1, v6

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p2, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const-string v2, "KenBums"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][KenBums] [KenBums][findPointByDistance]: fDistance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v2, p1, v6

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/graphics/PointF;->x:F

    div-float v3, p1, v0

    iget v4, p3, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    div-float v3, p1, v0

    iget v4, p3, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    const-string v2, "KenBums"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][KenBums] [KenBums][findPointByDistance]: pointTarget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v1

    goto :goto_0
.end method

.method public getEndPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getEndRect()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const-string v0, "KenBums"

    const-string v1, "[KenBums][getScale]: getScale NG ! mRectEnd==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/KenBums;->transferToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaceRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRandomPoint_FaceRect()Z
    .locals 15

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_1

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v3, v12

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-int v9, v12

    :goto_0
    div-int/lit8 v0, v3, 0x2

    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    div-int v1, v9, v12

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const-string v12, "KenBums"

    const-string v13, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_FaceRect]: fRandomH or fRandomW is 0 !!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_1
    return v12

    :cond_1
    const/4 v2, 0x2

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-int v3, v12

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v9, v12

    goto :goto_0

    :cond_2
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    add-int/lit8 v8, v12, -0x1

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    sub-int v6, v8, v7

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    mul-int v13, v7, v1

    add-int v4, v12, v13

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const/4 v12, 0x1

    if-ne v2, v12, :cond_3

    new-instance v11, Landroid/graphics/PointF;

    int-to-float v12, v4

    int-to-float v13, v5

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_2
    iget v12, v11, Landroid/graphics/PointF;->x:F

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/PointF;->x:F

    iget v12, v11, Landroid/graphics/PointF;->y:F

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    mul-int v13, v6, v1

    add-int v4, v12, v13

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int v5, v12, v0

    const/4 v12, 0x1

    if-ne v2, v12, :cond_4

    new-instance v10, Landroid/graphics/PointF;

    int-to-float v12, v4

    int-to-float v13, v5

    invoke-direct {v10, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_3
    iget v12, v10, Landroid/graphics/PointF;->x:F

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v13

    iput v12, v10, Landroid/graphics/PointF;->x:F

    iget v12, v10, Landroid/graphics/PointF;->y:F

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectFace:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v13

    iput v12, v10, Landroid/graphics/PointF;->y:F

    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_FaceRect]: Random Information: nRanIndexStart: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_FaceRect]: Random Information: nRanIndexEnd: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_FaceRect]: pointStart:("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "pointEnd:("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_3
    new-instance v11, Landroid/graphics/PointF;

    int-to-float v12, v5

    int-to-float v13, v4

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_2

    :cond_4
    new-instance v10, Landroid/graphics/PointF;

    int-to-float v12, v5

    int-to-float v13, v4

    invoke-direct {v10, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_3
.end method

.method public getRandomPoint_Portrait()Z
    .locals 15

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    iget v3, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    iget v9, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    :goto_0
    div-int/lit8 v1, v3, 0x2

    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    div-int v2, v9, v12

    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    :cond_0
    const-string v12, "KenBums"

    const-string v13, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_Portrait]: fRandomH or fRandomW is 0 !!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_1
    return v12

    :cond_1
    iget v3, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    iget v9, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    goto :goto_0

    :cond_2
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    add-int/lit8 v8, v12, -0x1

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    const/4 v0, 0x0

    :goto_2
    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirectionRegion:I

    if-eq v7, v12, :cond_3

    const/16 v12, 0xa

    if-ge v0, v12, :cond_4

    :cond_3
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    iget v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sub-int v6, v8, v7

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    mul-int v13, v7, v2

    add-int v4, v12, v13

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    new-instance v11, Landroid/graphics/PointF;

    int-to-float v12, v4

    int-to-float v13, v5

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_3
    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    mul-int v13, v6, v2

    add-int v4, v12, v13

    iget-object v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int v5, v12, v1

    iget v12, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    new-instance v10, Landroid/graphics/PointF;

    int-to-float v12, v4

    int-to-float v13, v5

    invoke-direct {v10, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_4
    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_Portrait]: Random Information: nRanIndexStart: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_Portrait]: Random Information: nRanIndexEnd: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "KenBums"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][KenBums] [KenBums][getRandomPoint_Portrait]: pointStart:("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "pointEnd:("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iput-object v10, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    iput v7, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPreDirectionRegion:I

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_5
    new-instance v11, Landroid/graphics/PointF;

    int-to-float v12, v5

    int-to-float v13, v4

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_3

    :cond_6
    new-instance v10, Landroid/graphics/PointF;

    int-to-float v12, v5

    int-to-float v13, v4

    invoke-direct {v10, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_4
.end method

.method public getRandomZoomPoint_Portrait(Landroid/graphics/PointF;)Z
    .locals 14

    if-nez p1, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    const/4 v3, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    iget v3, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    iget v10, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    :goto_1
    iget v11, p1, Landroid/graphics/PointF;->y:F

    div-int/lit8 v12, v3, 0x2

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_2

    const/4 v4, 0x0

    :goto_2
    iget v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    div-int v11, v10, v11

    int-to-float v0, v11

    div-int/lit8 v1, v3, 0x2

    iget v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    div-int v2, v10, v11

    iget v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandomSplit:I

    add-int/lit8 v9, v11, -0x1

    iget v11, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v0

    float-to-int v8, v11

    sub-int v7, v9, v8

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v11, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    mul-int v12, v7, v2

    add-int v5, v11, v12

    iget-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRandom:Ljava/util/Random;

    invoke-virtual {v11, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    rsub-int/lit8 v12, v4, 0x1

    mul-int/2addr v12, v1

    add-int v6, v11, v12

    iget v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    new-instance v11, Landroid/graphics/PointF;

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    :goto_3
    const-string v11, "KenBums"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][KenBums] [KenBums][getRandomZoomPoint_Portrait]: nPart: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "nRanIndexStart: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , nRanIndexEnd: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "KenBums"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][KenBums] [KenBums][getRandomZoomPoint_Portrait]: mPointStart:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mPointEnd:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_1
    iget v3, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoWidth:I

    iget v10, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPhotoHeight:I

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_3
    new-instance v11, Landroid/graphics/PointF;

    int-to-float v12, v6

    int-to-float v13, v5

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v11, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointEnd:Landroid/graphics/PointF;

    goto/16 :goto_3
.end method

.method public getScale()F
    .locals 4

    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "KenBums"

    const-string v2, "[KenBums][getScale]: getScale NG ! mFaceArray==null || mRectEnd==null || mRectStart==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mFaceArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectEnd:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v0, v1, v2

    const-string v1, "KenBums"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][KenBums] [KenBums][analyzePhoto]: Output ScaleRating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStartPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mPointStart:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getStartRect()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const-string v0, "KenBums"

    const-string v1, "[KenBums][getScale]: getScale NG ! mRectStart==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/KenBums;->mRectStart:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/KenBums;->transferToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 14

    if-nez p1, :cond_0

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, p2

    int-to-float v1, v0

    int-to-float v2, v4

    div-float v12, v1, v2

    move/from16 v0, p3

    int-to-float v1, v0

    int-to-float v2, v5

    div-float v10, v1, v2

    const/4 v11, 0x0

    cmpg-float v1, v12, v10

    if-gez v1, :cond_4

    move v11, v10

    :goto_1
    invoke-virtual {v6, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    const-string v1, "KenBums"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][KenBums] resize() fRating : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v8, 0x0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    :try_start_0
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :goto_2
    if-nez v13, :cond_2

    const/4 v1, 0x3

    if-le v8, v1, :cond_1

    :cond_2
    invoke-virtual {p1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    const-string v2, "KenBums"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][KenBums] cropCenter(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v13, :cond_5

    const-string v1, "Fail !!!"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v11, v12

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v1, "KenBums"

    const-string v2, "[HTCAlbum][KenBums] resize() createBitmap Fail !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v1, "Success !!!"

    goto :goto_3
.end method

.method public reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 9

    const/4 v4, 0x0

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "KenBums"

    const-string v6, "[HTCAlbum][KenBums] [KenBums][reworkRect]: pointTaret not in rectPhoto !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    :cond_1
    const-string v5, "KenBums"

    const-string v6, "[HTCAlbum][KenBums] [KenBums][reworkRect]: rectTaret is bigger than rectPhoto !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v3, v5, v8

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v2, v5, v8

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v5, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v3

    iget v6, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v5, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_3
    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_4

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :cond_4
    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    iget v5, p3, Landroid/graphics/RectF;->right:F

    iget v6, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v5, v6

    :cond_5
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v6, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v5, v6

    :cond_6
    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    const-string v5, "KenBums"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][KenBums] [KenBums][reworkRect]: reworkRect: ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public reworkRectForFace(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "KenBums"

    const-string v6, "[HTCAlbum][KenBums] [KenBums][reworkRect]: pointTaret not in rectPhoto !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    :cond_1
    const-string v5, "KenBums"

    const-string v6, "[HTCAlbum][KenBums] [KenBums][reworkRect]: rectTaret is bigger than rectPhoto !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float v0, v4, v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float v1, v4, v5

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    const-string v4, "KenBums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][KenBums] [KenBums][reworkRectForFace]: new reworkRect: ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/album/addons/slideshow/KenBums;->reworkRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    cmpl-float v5, p2, v6

    if-nez v5, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v2, v5, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v0, v5, p2

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v6, v6, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    iget v5, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    :goto_1
    const-string v5, "KenBums"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][KenBums] [KenBums][scaleRect]: Scale Rect - Width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , Height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v5, v2, v5

    div-float v4, v5, v7

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v5, v0, v5

    div-float v3, v5, v7

    iget v5, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v4

    iput v5, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v3

    iput v5, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v4

    iput v5, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v3

    iput v5, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method

.method public transferToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 6

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    iget v5, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v5

    iget v5, p1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v5

    iget v5, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v5

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v5

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method
