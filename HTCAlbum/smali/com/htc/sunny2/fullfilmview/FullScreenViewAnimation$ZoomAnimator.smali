.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "FullScreenViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomAnimator"
.end annotation


# static fields
.field private static final LTAG:Ljava/lang/String; = "ZoomAnimator"


# instance fields
.field centerXBegin:F

.field centerXEnd:F

.field centerYBegin:F

.field centerYEnd:F

.field frameDuration:J

.field isZooming:Z

.field private itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field zoomFactorBegin:F

.field zoomFactorEnd:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;FFFFFF)V
    .locals 4

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    iput p6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    iput p7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    iput p8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    iput p9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    :cond_0
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-nez v0, :cond_0

    const-string v0, "ZoomAnimator"

    const-string v4, "null itemFrame"

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZoomAnimator"

    const-string v4, "zoom begin"

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomBegin()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    :cond_2
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-long v4, p1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    int-to-long v6, v0

    iget-wide v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    add-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    int-to-long v4, p1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    int-to-long v6, v0

    iget-wide v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    add-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ZoomAnimator"

    const-string v4, "zoom end"

    invoke-static {v0, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    long-to-float v4, v4

    div-float v8, v0, v4

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float v1, v0, v4

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float v2, v0, v4

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float v3, v0, v4

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method
