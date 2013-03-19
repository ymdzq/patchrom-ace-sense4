.class public Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
.super Ljava/lang/Object;
.source "FilmstripViewScroller.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/IViewScroller;


# static fields
.field private static final DISTANCE_TO_GO_BUFFER_1:I = 0x64

.field private static final DISTANCE_TO_GO_BUFFER_2:I = 0x12c

.field private static final DURATION_CUT_1:D = 0.1

.field private static final DURATION_CUT_2:D = 0.2

.field private static final DURATION_CUT_3:D = 0.3

.field private static deceleration:F


# instance fields
.field private MAX_VELOCITY:F

.field private TAG:Ljava/lang/String;

.field private currentFlingingActuallTravelledDistance:I

.field private currentFlingingDuration:J

.field private currentFlingingEstimatedTravelledDistance:I

.field private currentFlingingTimePassed:J

.field private currentFlingingTotalDistance:I

.field private currentMovedDistance:I

.field private deviceFPS:I

.field private initialVelocity:F

.field private final isOnBorderThreshold:I

.field private isOnBouncingBack:Z

.field private isStartPanningOnLeftBorder:Z

.field private isStartPanningOnRightBorder:Z

.field private itemIndexForFlingToItemCenter:F

.field private itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

.field private item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

.field private lastPositionDifference:I

.field private mBouncingDuration:I

.field private mOutRatioY:F

.field private panAnimationFramesCount:I

.field private panTargetDistance:I

.field private final ppiBaseInPyramid:F

.field private relativeMovement:I

.field private relativeMovementLeftOvers:F

.field private relativeMovementModifierForFlingToItemCenter:F

.field private status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

.field private touchDownInitialPosition:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    iput-wide v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    iput-wide v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deviceFPS:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementLeftOvers:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemIndexForFlingToItemCenter:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementModifierForFlingToItemCenter:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBorderThreshold:I

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mBouncingDuration:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mOutRatioY:F

    const/high16 v0, 0x4370

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->ppiBaseInPyramid:F

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIP_VIEW_MAX_VELOCITY:F

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->MAX_VELOCITY:F

    const v0, 0x47b4db1e

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->FILMSTRIPVIEW_VELOCITY_TUNE_PARAM:F

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x3eb33333

    mul-float/2addr v0, v1

    sput v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deceleration:F

    return-void
.end method

.method private checkStartPanningOnBorder()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    const/4 v1, -0x2

    if-lt v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    goto :goto_0
.end method

.method private easeFunction(FFF)F
    .locals 4

    div-float/2addr p1, p3

    mul-float v1, p1, p1

    mul-float v0, v1, p1

    const/high16 v2, 0x3f80

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/high16 v3, -0x3f60

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x4120

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, -0x3ee0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    mul-float/2addr v2, p2

    return v2
.end method

.method private getBoundaryDuration(II)I
    .locals 5

    move v0, p1

    const/16 v1, 0x64

    if-lt v1, p2, :cond_0

    int-to-double v1, v0

    const-wide v3, 0x3fb999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x12c

    if-lt v1, p2, :cond_1

    int-to-double v1, v0

    const-wide v3, 0x3fc999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0

    :cond_1
    int-to-double v1, v0

    const-wide v3, 0x3fd3333333333333L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method

.method private limitedMovement(I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x50

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    if-gez p1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v1, -0x50

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    rsub-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    if-lez v0, :cond_4

    if-lez p1, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    if-gez v0, :cond_5

    if-gez p1, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    goto :goto_0

    :cond_5
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    goto :goto_0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    return-void
.end method

.method public flingByDistance(I)V
    .locals 4

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mBouncingDuration:I

    move v0, p1

    sget-object v2, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    return-void
.end method

.method public getItemAlignMode()Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    return-object v0
.end method

.method public getRawRelativeMovement()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    return v0
.end method

.method public getRelativeMovement()I
    .locals 5

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementModifierForFlingToItemCenter:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementLeftOvers:F

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementLeftOvers:F

    float-to-int v1, v0

    return v1
.end method

.method public getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    return-object v0
.end method

.method public init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] item_align_mode is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deInit()V

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] itemInfoGetter is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deInit()V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFling(F)V
    .locals 3

    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->MAX_VELOCITY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    sget v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    sget v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    return-void
.end method

.method public onTouchDown(I)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementModifierForFlingToItemCenter:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemIndexForFlingToItemCenter:F

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->checkStartPanningOnBorder()V

    return-void
.end method

.method public onTouchMove(I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    if-gez v1, :cond_2

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnLeftBorder:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mOutRatioY:F

    :goto_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    if-lez v1, :cond_0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isStartPanningOnRightBorder:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    if-gez v1, :cond_4

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v1

    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v4}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mOutRatioY:F

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v1

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mOutRatioY:F

    goto :goto_1
.end method

.method public onTouchUp(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    if-gez v0, :cond_0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    if-lez v0, :cond_1

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deviceFPS:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->touchDownInitialPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementLeftOvers:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementModifierForFlingToItemCenter:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemIndexForFlingToItemCenter:F

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->mOutRatioY:F

    return-void
.end method

.method public update()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-object/from16 v24, v0

    sget-object v25, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-object/from16 v24, v0

    sget-object v25, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    move/from16 v24, v0

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    move/from16 v25, v0

    sub-int v19, v24, v25

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->limitedMovement(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRelativeMovement()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    move/from16 v24, v0

    if-lez v24, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panTargetDistance:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentMovedDistance:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    move/from16 v25, v0

    div-int v19, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->panAnimationFramesCount:I

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-object/from16 v24, v0

    sget-object v25, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->signum(F)F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v21

    move/from16 v4, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v8

    const v16, 0x7fffffff

    const v17, 0x7fffffff

    const/16 v18, -0x1

    move/from16 v9, v20

    :goto_2
    if-gt v9, v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v13

    move/from16 v0, v20

    if-ne v9, v0, :cond_7

    div-int/lit8 v24, v13, 0x2

    sub-int v12, v4, v24

    move v10, v4

    div-int/lit8 v24, v13, 0x2

    add-int v14, v4, v24

    div-int/lit8 v24, v13, 0x2

    add-int v4, v4, v24

    neg-int v0, v6

    move/from16 v24, v0

    sub-int v5, v24, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    div-int/lit8 v25, v13, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    move/from16 v16, v5

    move/from16 v17, v10

    move/from16 v18, v9

    :cond_5
    :goto_3
    if-eq v9, v7, :cond_6

    add-int/2addr v4, v11

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    if-ne v9, v7, :cond_8

    div-int/lit8 v24, v13, 0x2

    add-int v4, v4, v24

    div-int/lit8 v24, v13, 0x2

    sub-int v12, v4, v24

    move v10, v4

    div-int/lit8 v24, v13, 0x2

    add-int v14, v4, v24

    neg-int v0, v6

    move/from16 v24, v0

    sub-int v5, v24, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    div-int/lit8 v25, v13, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    move/from16 v16, v5

    move/from16 v17, v10

    move/from16 v18, v9

    goto :goto_3

    :cond_8
    div-int/lit8 v24, v13, 0x2

    add-int v4, v4, v24

    div-int/lit8 v24, v13, 0x2

    sub-int v12, v4, v24

    move v10, v4

    div-int/lit8 v24, v13, 0x2

    add-int v14, v4, v24

    div-int/lit8 v24, v13, 0x2

    add-int v4, v4, v24

    neg-int v0, v6

    move/from16 v24, v0

    sub-int v5, v24, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v24

    div-int/lit8 v25, v13, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    move/from16 v16, v5

    move/from16 v17, v10

    move/from16 v18, v9

    goto :goto_3

    :cond_9
    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v6

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovementModifierForFlingToItemCenter:F

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->itemIndexForFlingToItemCenter:F

    :cond_a
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deviceFPS:I

    move/from16 v25, v0

    div-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    move-wide/from16 v24, v0

    add-long v24, v24, v22

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->easeFunction(FFF)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->signum(F)F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    move/from16 v24, v0

    sub-int v19, v24, v15

    if-lez v19, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v24, v0

    if-lez v24, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v24, v0

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v19, v0

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v24, v0

    if-nez v24, :cond_c

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingDuration:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->relativeMovement:I

    :goto_5
    if-nez v19, :cond_0

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTimePassed:J

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingEstimatedTravelledDistance:I

    sget-object v24, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->isOnBouncingBack:Z

    goto/16 :goto_0

    :cond_e
    if-gez v19, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v24, v0

    if-gez v24, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v24, v0

    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->lastPositionDifference:I

    move/from16 v19, v0

    goto/16 :goto_4

    :cond_f
    if-eqz v19, :cond_10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->signum(F)F

    move-result v25

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingTotalDistance:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->initialVelocity:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->limitedMovement(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRawRelativeMovement()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->limitedMovement(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getRawRelativeMovement()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->currentFlingingActuallTravelledDistance:I

    goto/16 :goto_5
.end method
