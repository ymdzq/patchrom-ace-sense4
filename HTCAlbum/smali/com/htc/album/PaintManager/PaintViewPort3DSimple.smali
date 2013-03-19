.class public Lcom/htc/album/PaintManager/PaintViewPort3DSimple;
.super Lcom/htc/painting/engine/ViewPort;
.source "PaintViewPort3DSimple.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPaintRect:Landroid/graphics/RectF;

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/painting/engine/ViewPort;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mScale:F

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

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

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mScale:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mScale:F

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

.method public setDimension(FF)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mPaintRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewPort3DSimple;->mScale:F

    return-void
.end method
