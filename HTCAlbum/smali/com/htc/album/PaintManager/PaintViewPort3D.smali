.class public Lcom/htc/album/PaintManager/PaintViewPort3D;
.super Lcom/htc/painting/engine/ViewPort;
.source "PaintViewPort3D.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

.field private mIsZoomIn:Z

.field private mOffsetBaseX:F

.field private mOffsetBaseY:F

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOriginX:F

.field private mOriginY:F

.field private mPaintRect:Landroid/graphics/RectF;

.field private mRotate:F

.field private mScale:F

.field private mScaleOffset:F

.field private mfHeight:F

.field private mfWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/PaintManager/PaintViewPort3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/PaintViewPort3D;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/painting/engine/ViewPort;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mCenterX:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mCenterY:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginX:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginY:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    iput v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScaleOffset:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetX:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetY:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIsZoomIn:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    :cond_0
    return-void
.end method


# virtual methods
.method public getIdentity()Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 5

    const/high16 v3, 0x4000

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v2}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getHeight()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginX:F

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginX:F

    iget v4, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetX:F

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public getOffsetX()F
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    return v0
.end method

.method protected getOriginX()F
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginX:F

    return v0
.end method

.method protected getOriginY()F
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOriginY:F

    return v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/album/PaintManager/PaintViewPort3D;->getOffsetX()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/album/PaintManager/PaintViewPort3D;->getOffsetY()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

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

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    return v0
.end method

.method protected getScale()F
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

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

.method public initRectangle(IIII)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    sub-int v1, p3, p1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    sub-int v1, p4, p2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    return-void
.end method

.method public initRotation(F)V
    .locals 2

    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/album/PaintManager/PaintViewPort3D;->setIdentity(FFF)V

    :cond_0
    return-void
.end method

.method public initScale(F)V
    .locals 0

    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    return-void
.end method

.method public matrixEnd(Z)V
    .locals 4

    const/high16 v3, 0x4000

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    if-eqz v0, :cond_1

    const/high16 v0, 0x42b4

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/high16 v0, -0x3d4c

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/high16 v0, 0x4387

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/high16 v0, -0x3c79

    iget v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetX:F

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetY:F

    :goto_0
    sget-object v0, Lcom/htc/album/PaintManager/PaintViewPort3D;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[HTCAlbum][PaintViewPort3D][matrixEnd]: scale: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\n[HTCAlbum][PaintViewPort3D][matrixEnd]: rotate: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\n[HTCAlbum][PaintViewPort3D][matrixEnd]: offset: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, " : "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetX:F

    iget v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    iget-object v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetY:F

    goto :goto_0
.end method

.method public matrixbegin()V
    .locals 0

    return-void
.end method

.method public printfMatrix(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    iput v1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    return-void
.end method

.method public setIdentity(FFF)V
    .locals 4

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    const-wide v0, 0x4056800000000000L

    float-to-double v2, p1

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x3fa9800000000000L

    float-to-double v2, p1

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, 0x4070e00000000000L

    float-to-double v2, p1

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x3f8f200000000000L

    float-to-double v2, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v0, p3, p2}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->setDimension(FF)V

    :goto_1
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getCenterX()F

    move-result v0

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mCenterX:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->getCenterY()F

    move-result v0

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mCenterY:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mIdentity:Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;

    invoke-virtual {v0, p2, p3}, Lcom/htc/album/PaintManager/PaintViewPort3DIdentity;->setDimension(FF)V

    goto :goto_1
.end method

.method public setRectangle(IIII)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    sub-int v1, p3, p1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    sub-int v1, p4, p2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfWidth:F

    iget-object v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mPaintRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mfHeight:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mRotate:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mScale:F

    return-void
.end method

.method public setTranslation(II)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseX:F

    int-to-float v0, p2

    iput v0, p0, Lcom/htc/album/PaintManager/PaintViewPort3D;->mOffsetBaseY:F

    return-void
.end method
