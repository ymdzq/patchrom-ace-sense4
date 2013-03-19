.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
.super Ljava/lang/Object;
.source "FullScreenViewItemFrame.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final DEFAULT_ZOOM:F = 1.0f

.field private static final DOUBLE_TAP_ZOOM_IN_NAME:Ljava/lang/String; = "double_tap_zoom_in"

.field private static final DOUBLE_TAP_ZOOM_OUT_NAME:Ljava/lang/String; = "double_tap_zoom_out"

.field private static final LTAG:Ljava/lang/String; = null

.field protected static final MAX_ADJUSTED_ZOOM:F = 2.5f

.field protected static final MAX_ADJUSTED_ZOOM_PL:F = 3.0f

.field protected static final MAX_PIXELS_H:F = 2388.0f

.field protected static final MAX_PIXELS_W:F = 3888.0f

.field protected static final MAX_ZOOM:F = 2.0f

.field static final TOLERANCE_ZOOM:F = 0.2f

.field protected static final UPBOUND_RATIO:F = 10.0f

.field protected static final ZOOM_IN_STEP:F = 1.2f

.field protected static final ZOOM_OUT_STEP:F = 0.8f


# instance fields
.field private final EXTRA_ZOOM_IN_FACTOR:F

.field private final EXTRA_ZOOM_OUT_FACTOR:F

.field private final ITEMINFO_LOCK:Ljava/lang/Object;

.field private _displayImageCenterBottomBoundary:F

.field private _displayImageCenterLeftBoundary:F

.field private _displayImageCenterRightBoundary:F

.field private _displayImageCenterTopBoundary:F

.field private _displayImageLeftOnViewport:F

.field private _displayImageTopOnViewport:F

.field private accumulatedPanXDistance:F

.field private displayImageCenterX:F

.field private displayImageCenterY:F

.field private displayImageHeight:F

.field private displayImageWidth:F

.field private fitToScreenImageHeight:F

.field private fitToScreenImageWidth:F

.field private frameHeight:F

.field private frameWidth:F

.field private imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

.field private isMoveFrame:Z

.field private item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

.field private itemIndex:I

.field private mDoubleTapZoomFactor:F

.field private mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field private maxZoomFactor:F

.field private minZoomFactor:F

.field private onPanning:Z

.field private onZoomMode:Z

.field private panLimitRegionWidth:I

.field private panLimitRegionWidthRationToFrameWidth:F

.field private panStartOnBottomBorder:Z

.field private panStartOnLeftBorder:Z

.field private panStartOnRightBorder:Z

.field private panStartOnTopBorder:Z

.field private positionX:F

.field private positionY:F

.field private positionZ:F

.field private renderThread:Lcom/htc/sunnyCore/RenderThread;

.field private sceneNode:Lcom/htc/sunnyCore/SceneNode;

.field private scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private sunnyEnvironment:I

.field private zoomFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 5

    const/high16 v0, 0x3fa0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->EXTRA_ZOOM_IN_FACTOR:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->EXTRA_ZOOM_OUT_FACTOR:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidthRationToFrameWidth:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method private calculateDisplayImageCenterBoundary()V
    .locals 4

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_0

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_0
.end method

.method private calculateDisplayImageCenterBoundary(FF)V
    .locals 3

    const/high16 v2, 0x4000

    const/4 v1, 0x0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    :goto_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    sub-float/2addr v0, p1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    sub-float v0, p2, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    neg-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    goto :goto_1
.end method

.method private calculateDisplayImageLeftTopOnViewport()V
    .locals 3

    const/high16 v2, 0x4000

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v0, v1

    neg-float v0, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    return-void
.end method

.method private calculateFitToScreenImageSize(FF)Z
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    cmpl-float v2, p1, v4

    if-eqz v2, :cond_0

    cmpl-float v2, p2, v4

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v3, "calculateInitDisplayImageSize() NG - zero value"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v2, p1, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_4

    :cond_2
    div-float v1, p2, p1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    div-float v0, v2, v3

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    div-float/2addr v2, v1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    goto :goto_1

    :cond_4
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    goto :goto_1
.end method

.method private getRotatedSourceImageHeight()I
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getImageRotateDegrees()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "getRotatedSourceImageHeight() NG - error degrees"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageHeight()I

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageWidth()I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private getRotatedSourceImageWidth()I
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getImageRotateDegrees()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "getRotatedSourceImageWidth() NG - error degrees"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageWidth()I

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getSourceImageHeight()I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private initDisplayImageGeometry()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateFitToScreenImageSize(FF)Z

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateMaxMinDClickZoomFactor(FF)Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    return-void
.end method


# virtual methods
.method public addToScene(IILcom/htc/sunnyCore/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - already added"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    int-to-float v0, p2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidthRationToFrameWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - create scene node"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p3, v0}, Lcom/htc/sunnyCore/SceneNode;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    invoke-virtual {p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->create()Lcom/htc/sunnyCore/ViewItem;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "addToScene() NG - create item"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->sunnyEnvironment:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->attachToSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public adjustZoomFactor(F)F
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    :cond_1
    return p1
.end method

.method public adjustZoomFactorExtra(F)F
    .locals 2

    const/high16 v1, 0x3fa0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    mul-float p1, v0, v1

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float p1, v0, v1

    :cond_1
    return p1
.end method

.method public bindItem(ILcom/htc/sunnyCore/IMediaData;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-virtual {v0, v2, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method calculateImageRXOnViewportPoint(F)F
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    div-float/2addr v0, v1

    return v0
.end method

.method calculateImageRYOnViewportPoint(F)F
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    div-float/2addr v0, v1

    return v0
.end method

.method public calculateMaxMinDClickZoomFactor(FF)Z
    .locals 10

    const/high16 v9, 0x4000

    const/high16 v8, 0x3f80

    const/high16 v7, 0x4573

    const v6, 0x45154000

    const/4 v5, 0x0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    cmpl-float v4, p1, v5

    if-eqz v4, :cond_0

    cmpl-float v4, p2, v5

    if-nez v4, :cond_1

    :cond_0
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v5, "calculateMaxMinZoomFactor() NG - zero value"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    const/4 v0, 0x0

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    cmpl-float v4, p1, p2

    if-ltz v4, :cond_7

    const/high16 v4, 0x437a

    cmpl-float v4, p2, v4

    if-lez v4, :cond_5

    const/high16 v4, 0x4080

    mul-float/2addr v4, p2

    cmpl-float v4, p1, v4

    if-lez v4, :cond_5

    const/4 v0, 0x1

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v4, p2, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    const v5, 0x3f99999a

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    :cond_3
    :goto_2
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_4

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_4

    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f80

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_6

    const/high16 v4, 0x4020

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v7, v4

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v6, v4

    :goto_3
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x4120

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float v4, v3, v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    goto :goto_1

    :cond_6
    const/high16 v4, 0x4040

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v6, v4

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v7, v4

    goto :goto_3

    :cond_7
    const/high16 v4, 0x437a

    cmpl-float v4, p1, v4

    if-lez v4, :cond_8

    const/high16 v4, 0x4080

    mul-float/2addr v4, p1

    cmpl-float v4, p2, v4

    if-lez v4, :cond_8

    const/4 v0, 0x1

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v4, p1, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    goto/16 :goto_1

    :cond_8
    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f80

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_9

    const/high16 v4, 0x4020

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v6, v4

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v7, v4

    :goto_4
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x4120

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    div-float v4, v3, v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    goto/16 :goto_1

    :cond_9
    const/high16 v4, 0x4040

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    div-float v2, v7, v4

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    div-float v1, v6, v4

    goto :goto_4

    :cond_a
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    goto/16 :goto_2
.end method

.method public cancelFling()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "Fling"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onFlingEndIRT()V

    :cond_0
    return-void
.end method

.method public clearRenderingEnvironment()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    return-void
.end method

.method doFling()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;

    const-string v2, "Fling"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1Fling;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    :cond_0
    return-void
.end method

.method doZoom(FFFZ)V
    .locals 5

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewItemFrame][doZoom]item is null"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZooming(F)V

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    if-eqz p4, :cond_3

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    :cond_2
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :try_start_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method doZoom(FFFZZII)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewItemFrame][doZoom2]item is null"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZooming(F)V

    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    if-eqz p5, :cond_4

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    if-ne p6, p7, :cond_5

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    if-ne p6, p7, :cond_8

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_d

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    sget-boolean v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float/2addr v2, v3

    int-to-float v3, p6

    mul-float/2addr v2, v3

    int-to-float v3, p7

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :try_start_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    if-ne p6, p7, :cond_7

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float/2addr v2, v3

    int-to-float v3, p6

    mul-float/2addr v2, v3

    int-to-float v3, p7

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float/2addr v2, v3

    int-to-float v3, p6

    mul-float/2addr v2, v3

    int-to-float v3, p7

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    if-ne p6, p7, :cond_a

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float/2addr v2, v3

    int-to-float v3, p6

    mul-float/2addr v2, v3

    int-to-float v3, p7

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0

    :cond_d
    sget-boolean v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto/16 :goto_0
.end method

.method doZoomBegin()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZoomBegin(F)V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onZoomBeginIRT()V

    :cond_1
    return-void
.end method

.method doZoomEnd()V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mMainScene:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onChildFrameZoomEnd(F)V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onZoomEndIRT()V

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    goto :goto_1
.end method

.method public getFitToScreenImageHeight()F
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    return v0
.end method

.method public getFitToScreenImageWidth()F
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    return v0
.end method

.method public getFrameHeight()F
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    return v0
.end method

.method public getFrameWidth()F
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    return v0
.end method

.method public getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    return-object v0
.end method

.method public getItemIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    return v0
.end method

.method public getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getItemInfo() NG - null itemInfo"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-gez v1, :cond_1

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "getItemInfo() NG - null itemIndex"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->positionOffset:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageLeftTopOnViewport()V

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageLeft:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageTop:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageWidth:I

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    float-to-int v0, v0

    iput v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->imageHeight:I

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPositionX()F
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    return v0
.end method

.method public isItemZoomable()Z
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->isZoomable()Z

    move-result v0

    goto :goto_0
.end method

.method public moveImageByX(F)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    const/4 v0, 0x0

    cmpl-float v2, p1, v4

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v1, v2, v3

    cmpl-float v2, v1, p1

    if-lez v2, :cond_3

    move v0, p1

    :cond_0
    :goto_0
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v1, v2, v3

    cmpg-float v2, v1, p1

    if-gez v2, :cond_5

    move v0, p1

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_7

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    :cond_2
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    :goto_3
    return-void

    :cond_3
    cmpl-float v2, v1, v4

    if-nez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    cmpl-float v2, v1, v4

    if-nez v2, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    :try_start_1
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_8
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][FullScreenViewItemFrame][moveImageByX]this.item is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public moveImageByY(F)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    const/4 v0, 0x0

    cmpl-float v2, p1, v4

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v1, v2, v3

    cmpl-float v2, v1, p1

    if-lez v2, :cond_3

    move v0, p1

    :cond_0
    :goto_0
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v1, v2, v3

    cmpg-float v2, v1, p1

    if-gez v2, :cond_5

    move v0, p1

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    :cond_2
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    :goto_3
    return-void

    :cond_3
    cmpl-float v2, v1, v4

    if-nez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    cmpl-float v2, v1, v4

    if-nez v2, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    :try_start_1
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_8
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][FullScreenViewItemFrame][moveImageByY]this.item is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public notifiedItemTextureExpired(I)V
    .locals 3

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifiedItemTextureExpired NG - index error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageTextureExpired()V

    goto :goto_0
.end method

.method public notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V
    .locals 7

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-eq v4, p1, :cond_1

    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifiedItemTextureReady NG - index error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v5, "double_tap_zoom_in"

    invoke-virtual {v4, p0, v5}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v5, "double_tap_zoom_out"

    invoke-virtual {v4, p0, v5}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][FullScreenViewItemFrame]notifiedItemTextureReady, NOT notified because double tap zooming in/out"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getWidth()I

    move-result v4

    if-lt v4, v3, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->getHeight()I

    move-result v4

    if-ge v4, v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v4, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageTextureReady(Lcom/htc/sunnyCore/Texture;)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-boolean v4, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-nez v4, :cond_6

    iget-boolean v4, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_6

    if-eqz v0, :cond_0

    :cond_6
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateFitToScreenImageSize(FF)Z

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getRotatedSourceImageHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateMaxMinDClickZoomFactor(FF)Z

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject double click zoom due to frame position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->isZoomable()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "Reject double click zoom due to not zoomable."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "double_tap_zoom_in"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "double_tap_zoom_out"

    invoke-virtual {v1, p0, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "Reject double click zoom due to zooming."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "double tap zoom out"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;

    const-string v2, "double_tap_zoom_out"

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;FFFFFF)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float v10, v1, v2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v11, v1, v2

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->mDoubleTapZoomFactor:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_6

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    :cond_6
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    mul-float v13, v7, v1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    mul-float v12, v7, v1

    neg-float v1, v13

    mul-float/2addr v1, v10

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    div-float v8, v1, v2

    neg-float v1, v12

    mul-float/2addr v1, v11

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    div-float v9, v1, v2

    invoke-direct {p0, v13, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary(FF)V

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v1, v8, v1

    if-gez v1, :cond_a

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    :cond_7
    :goto_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v1, v9, v1

    if-gez v1, :cond_b

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    :cond_8
    :goto_2
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v2, "double tap zoom in"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;

    const-string v2, "double_tap_zoom_in"

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;FFFFFF)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v1, v8, v1

    if-lez v1, :cond_7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    goto :goto_1

    :cond_b
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v1, v9, v1

    if-lez v1, :cond_8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    goto :goto_2
.end method

.method public onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onFling(F)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    neg-float v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onFling(F)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doFling()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public panBegin()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    :cond_3
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    :cond_4
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    :cond_5
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onPanBeginIRT()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public panEnd()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onPanEndIRT()V

    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    :cond_1
    return-void
.end method

.method public panX(F)F
    .locals 14

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-nez v12, :cond_0

    move v1, v11

    :goto_0
    return v1

    :cond_0
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/high16 v13, 0x3f80

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_4

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v12, :cond_4

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v12, :cond_4

    move v5, v9

    :goto_1
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v12, p1, v11

    if-lez v12, :cond_1

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v6, v12, v13

    cmpl-float v12, v6, p1

    if-lez v12, :cond_6

    move v0, p1

    move v1, p1

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v12

    add-float/2addr v12, p1

    cmpl-float v12, v12, v11

    if-ltz v12, :cond_5

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v12

    add-float v0, p1, v12

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v12

    add-float v1, p1, v12

    :cond_1
    :goto_2
    cmpg-float v12, p1, v11

    if-gez v12, :cond_2

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    sub-float v6, v12, v13

    cmpg-float v12, v6, p1

    if-gez v12, :cond_14

    move v0, p1

    move v1, p1

    iget-boolean v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v9

    add-float/2addr v9, p1

    cmpg-float v9, v9, v11

    if-gtz v9, :cond_13

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v9

    add-float v0, p1, v9

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v9

    add-float v1, p1, v9

    :cond_2
    :goto_3
    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    add-float/2addr v9, v0

    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    cmpg-float v9, v9, v11

    if-gez v9, :cond_21

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterLeftBoundary:F

    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    :cond_3
    :goto_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v9, p1

    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    goto/16 :goto_0

    :cond_4
    move v5, v10

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    cmpl-float v12, v6, v11

    if-nez v12, :cond_12

    const/4 v0, 0x0

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v13, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    move v7, v9

    :goto_5
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v12, p1

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v13, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_8

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v12, p1

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    move v8, v9

    :goto_6
    if-nez v7, :cond_9

    if-eqz v8, :cond_9

    move v2, v9

    :goto_7
    if-eqz v7, :cond_a

    if-nez v8, :cond_a

    move v3, v9

    :goto_8
    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v13, v13

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_b

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v12, p1

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    move v4, v9

    :goto_9
    if-eqz v5, :cond_c

    if-eqz v2, :cond_c

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v12, v12

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v12, v13

    add-float v1, v12, p1

    goto/16 :goto_2

    :cond_7
    move v7, v10

    goto :goto_5

    :cond_8
    move v8, v10

    goto :goto_6

    :cond_9
    move v2, v10

    goto :goto_7

    :cond_a
    move v3, v10

    goto :goto_8

    :cond_b
    move v4, v10

    goto :goto_9

    :cond_c
    if-eqz v5, :cond_d

    if-eqz v3, :cond_d

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v12, v12

    iget v13, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    sub-float v1, v12, v13

    goto/16 :goto_2

    :cond_d
    if-eqz v5, :cond_e

    if-eqz v4, :cond_e

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    mul-int/lit8 v12, v12, 0x2

    int-to-float v1, v12

    goto/16 :goto_2

    :cond_e
    if-eqz v5, :cond_f

    if-eqz v7, :cond_f

    if-eqz v8, :cond_f

    move v1, p1

    goto/16 :goto_2

    :cond_f
    if-eqz v5, :cond_10

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_10
    iget-boolean v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnRightBorder:Z

    if-eqz v12, :cond_11

    const/4 v1, 0x0

    iput-boolean v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    goto/16 :goto_2

    :cond_11
    move v1, p1

    goto/16 :goto_2

    :cond_12
    move v0, v6

    move v1, p1

    goto/16 :goto_2

    :cond_13
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_14
    cmpl-float v11, v6, v11

    if-nez v11, :cond_20

    const/4 v0, 0x0

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v12, v12

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_15

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_15

    move v7, v9

    :goto_a
    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v11, p1

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v12, v12

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_16

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v11, p1

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_16

    move v8, v9

    :goto_b
    if-nez v7, :cond_17

    if-eqz v8, :cond_17

    move v2, v9

    :goto_c
    if-eqz v7, :cond_18

    if-nez v8, :cond_18

    move v3, v9

    :goto_d
    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_19

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v11, p1

    iget v12, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v12, v12

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_19

    move v4, v9

    :goto_e
    if-eqz v5, :cond_1a

    if-eqz v2, :cond_1a

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    add-float/2addr v9, v10

    add-float v1, v9, p1

    goto/16 :goto_3

    :cond_15
    move v7, v10

    goto :goto_a

    :cond_16
    move v8, v10

    goto :goto_b

    :cond_17
    move v2, v10

    goto :goto_c

    :cond_18
    move v3, v10

    goto :goto_d

    :cond_19
    move v4, v10

    goto :goto_e

    :cond_1a
    if-eqz v5, :cond_1b

    if-eqz v3, :cond_1b

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->accumulatedPanXDistance:F

    sub-float v1, v9, v10

    goto/16 :goto_3

    :cond_1b
    if-eqz v5, :cond_1c

    if-eqz v4, :cond_1c

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    neg-int v9, v9

    mul-int/lit8 v9, v9, 0x2

    int-to-float v1, v9

    goto/16 :goto_3

    :cond_1c
    if-eqz v5, :cond_1d

    if-eqz v7, :cond_1d

    if-eqz v8, :cond_1d

    move v1, p1

    goto/16 :goto_3

    :cond_1d
    if-eqz v5, :cond_1e

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_1e
    iget-boolean v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnLeftBorder:Z

    if-eqz v10, :cond_1f

    const/4 v1, 0x0

    iput-boolean v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isMoveFrame:Z

    goto/16 :goto_3

    :cond_1f
    move v1, p1

    goto/16 :goto_3

    :cond_20
    move v0, v6

    move v1, p1

    goto/16 :goto_3

    :cond_21
    :try_start_1
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_3

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterRightBoundary:F

    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    goto/16 :goto_4

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method public panY(F)F
    .locals 8

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    if-nez v4, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageCenterBoundary()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v2, v4, v5

    cmpl-float v4, v2, p1

    if-lez v4, :cond_4

    move v0, p1

    move v1, p1

    :cond_1
    :goto_1
    cmpg-float v4, p1, v3

    if-gez v4, :cond_2

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    sub-float v2, v4, v5

    cmpg-float v4, v2, p1

    if-gez v4, :cond_7

    move v0, p1

    move v1, p1

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterTopBoundary:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    :cond_3
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onImageGeometryUpdate(FFFF)V

    goto :goto_0

    :cond_4
    cmpl-float v4, v2, v3

    if-nez v4, :cond_6

    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnTopBorder:Z

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    move v1, p1

    goto :goto_1

    :cond_6
    move v0, v2

    move v1, p1

    goto :goto_1

    :cond_7
    cmpl-float v3, v2, v3

    if-nez v3, :cond_9

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panStartOnBottomBorder:Z

    if-eqz v3, :cond_8

    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    move v1, p1

    goto :goto_2

    :cond_9
    move v0, v2

    move v1, p1

    goto :goto_2

    :cond_a
    :try_start_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageCenterBottomBoundary:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public refreshMediaSize(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-virtual {v0, v2, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFromScene(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/SceneNode;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->release()V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    :cond_1
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method sendInfoToImagePanAndZoomListener()V
    .locals 7

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateDisplayImageLeftTopOnViewport()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageLeftOnViewport:F

    float-to-int v2, v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->_displayImageTopOnViewport:F

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onImageBoundsUpdateIRT(IIIIIF)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setFrameSize(FF)V
    .locals 3

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidthRationToFrameWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panLimitRegionWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->LTAG:Ljava/lang/String;

    const-string v1, "setFrameSize() NG - null item"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onFrameSizeUpdate(FF)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->initDisplayImageGeometry()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    return-void
.end method

.method setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V

    :cond_0
    return-void
.end method

.method setItemPaintLayerTransparency(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setItemPaintTransparency(I)V

    :cond_0
    return-void
.end method

.method public setMediaItemConsumeRightExpired(I)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->resetConsumeRightFlag()V

    :cond_0
    return-void
.end method

.method public setMediaItemConsumeRightFlag(I)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setConsumeRightFlag()V

    :cond_0
    return-void
.end method

.method public setPosition(FFF)V
    .locals 4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sceneNode:Lcom/htc/sunnyCore/SceneNode;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionX:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionY:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->positionZ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/SceneNode;->setPosition(FFF)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setupRenderingEnvironment(Lcom/htc/sunnyCore/RenderThread;I)V
    .locals 3

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sunnyEnvironment:I

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$2;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    return-void
.end method

.method public unbindItem()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->item:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->unbindMediaData()V

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->ITEMINFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->itemIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->fitToScreenImageHeight:F

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->maxZoomFactor:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->minZoomFactor:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageHeight:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->displayImageCenterY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onZoomMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onPanning:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unzoom()V
    .locals 8

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->zoomFactor:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomBegin()V

    const/4 v5, 0x1

    move-object v0, p0

    move v3, v2

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    :cond_0
    return-void
.end method
