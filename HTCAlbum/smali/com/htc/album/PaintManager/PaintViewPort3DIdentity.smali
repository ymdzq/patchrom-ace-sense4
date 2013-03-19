.class public Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;
.super Lcom/htc/painting/engine/ViewPort;
.source "PaintViewPort3DIdentity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPaintRect:Landroid/graphics/RectF;

.field private mPaintRectR:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/painting/engine/ViewPort;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getCenterRotateOffset()F
    .locals 4

    const/high16 v3, 0x4000

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    div-float v0, v1, v3

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    div-float v0, v1, v3

    goto :goto_0
.end method

.method public getCenterX()F
    .locals 2

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 2

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getOriginX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getOriginY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRotateDeg()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRotatePivotY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    const/high16 v0, 0x3f80

    return v0
.end method

.method public getScaleY()F
    .locals 1

    const/high16 v0, 0x3f80

    return v0
.end method

.method public getScaledRotateOffsetX()F
    .locals 2

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getScaledRotateOffsetY()F
    .locals 2

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getScalingPivotX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScalingPivotY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public printfMatrix(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][PaintViewPort3DIdentity][printfMatrix]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rectF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][PaintViewPort3DIdentity][printfMatrix]: ----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDimension(FF)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setDimensionRotated(FF)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->mPaintRectR:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
