.class public Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;
.super Lcom/htc/opensense2/widget/ImageViewTouchBase;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropImageView"
.end annotation


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/htc/album/TabPluginDevice/HighlightView;)V
    .locals 14

    iget-object v2, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v7, v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v4, v11

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getWidth()I

    move-result v11

    int-to-float v6, v11

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getHeight()I

    move-result v11

    int-to-float v5, v11

    div-float v11, v6, v7

    const v12, 0x3f19999a

    mul-float v8, v11, v12

    div-float v11, v5, v4

    const v12, 0x3f19999a

    mul-float v9, v11, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f80

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const v3, 0x3dcccccd

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-boolean v0, v11, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v11

    sub-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float/2addr v11, v10

    cmpl-float v11, v11, v3

    if-gtz v11, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v11

    const/high16 v12, 0x3f80

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v11, 0x2

    new-array v1, v11, [F

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    aput v12, v1, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    aput v12, v1, v11

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v11, 0x0

    aget v11, v1, v11

    const/4 v12, 0x1

    aget v12, v1, v12

    const/high16 v13, 0x4396

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->zoomTo(FFFF)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->ensureVisible(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    return-void
.end method

.method private centerBasedOnHighlightViewWithoutAnim(Lcom/htc/album/TabPluginDevice/HighlightView;)V
    .locals 13

    iget-object v2, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v7, v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v4, v11

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getWidth()I

    move-result v11

    int-to-float v6, v11

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getHeight()I

    move-result v11

    int-to-float v5, v11

    div-float v11, v6, v7

    const v12, 0x3f19999a

    mul-float v8, v11, v12

    div-float v11, v5, v4

    const v12, 0x3f19999a

    mul-float v9, v11, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f80

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const v3, 0x3dcccccd

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-boolean v0, v11, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v11

    sub-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float/2addr v11, v10

    cmpl-float v11, v11, v3

    if-lez v11, :cond_1

    const/4 v11, 0x2

    new-array v1, v11, [F

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    aput v12, v1, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    aput v12, v1, v11

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v11, 0x0

    aget v11, v1, v11

    const/4 v12, 0x1

    aget v12, v1, v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->zoomTo(FFF)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->ensureVisible(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    return-void
.end method

.method private ensureVisible(Lcom/htc/album/TabPluginDevice/HighlightView;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v1, :cond_2

    move v0, v1

    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->panBy(FF)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/HighlightView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDevice/HighlightView;->setFocus(Z)V

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/htc/album/TabPluginDevice/HighlightView;->getHit(FF)I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->setFocus(Z)V

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->invalidate()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/htc/album/TabPluginDevice/HighlightView;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->invalidate()V

    return-void
.end method

.method protected doesScrolling()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/htc/album/TabPluginDevice/HighlightView;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDevice/HighlightView;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->onLayout(ZIIII)V

    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->centerBasedOnHighlightViewWithoutAnim(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/CropImage;

    move-object v0, v5

    check-cast v0, Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mSaving:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$000(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    :goto_2
    move v5, v7

    goto :goto_0

    :pswitch_0
    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$100(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v2, v5, v8}, Lcom/htc/album/TabPluginDevice/HighlightView;->getHit(FF)I

    move-result v1

    if-eq v1, v7, :cond_5

    iput v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionEdge:I

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastY:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    const/16 v5, 0x20

    if-ne v1, v5, :cond_4

    sget-object v5, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v8, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->setMode(Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;)V

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->updateBoundary()V

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_1
    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$100(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v3, 0x0

    :goto_5
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    const/4 v4, 0x0

    :goto_6
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    if-ne v4, v3, :cond_6

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v5, v7}, Lcom/htc/album/TabPluginDevice/HighlightView;->setHidden(Z)V

    goto :goto_7

    :cond_7
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->centerBasedOnHighlightView(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/CropImage;

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z
    invoke-static {v5, v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$102(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    move v5, v7

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->centerBasedOnHighlightView(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    sget-object v8, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->None:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    invoke-virtual {v5, v8}, Lcom/htc/album/TabPluginDevice/HighlightView;->setMode(Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;)V

    :cond_a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    goto/16 :goto_1

    :pswitch_2
    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$100(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    iget v8, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastX:F

    sub-float/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget v11, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastY:F

    sub-float/2addr v10, v11

    invoke-virtual {v5, v8, v9, v10}, Lcom/htc/album/TabPluginDevice/HighlightView;->handleMotion(IFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastY:F

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->ensureVisible(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v7, v7, v7}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->center(ZZZ)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v5

    const/high16 v8, 0x3f80

    cmpl-float v5, v5, v8

    if-nez v5, :cond_2

    invoke-virtual {p0, v7, v7, v6}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->center(ZZZ)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->postTranslate(FF)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected usePerfectFitBitmap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected zoomIn()V
    .locals 4

    invoke-super {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomIn()V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zoomOut()V
    .locals 4

    invoke-super {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomOut()V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomTo(FFF)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method
