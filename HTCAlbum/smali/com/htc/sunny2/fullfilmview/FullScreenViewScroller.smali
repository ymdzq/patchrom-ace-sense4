.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
.super Ljava/lang/Object;
.source "FullScreenViewScroller.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/IViewScroller;


# static fields
.field private static deceleration:F


# instance fields
.field private MAX_VELOCITY:F

.field private final PAN_ANIMATION_FRAME_COUNT:I

.field private final PAN_ANIMATION_FRAME_COUNT_TO_HANDLE_MULTIPLE_SCROLL_EVENT:I

.field private TAG:Ljava/lang/String;

.field private bMultiOnScrollBeforeUpdateHandling:Z

.field private currentFlingingDuration:J

.field private currentFlingingTimePassed:J

.field private currentFlingingTotalDistance:I

.field private currentFlingingTravelledDistance:I

.field private currentMovedDistance:I

.field private deviceFPS:I

.field private initialVelocity:F

.field private isOnBouncingBack:Z

.field private final isOnborderThreshold:I

.field private isStartPanningOnItemLeftBorder:Z

.field private isStartPanningOnItemRightBorder:Z

.field private isStartPanningOnListLeftBorder:Z

.field private isStartPanningOnListRightBorder:Z

.field private itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

.field private item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

.field private lastPositionDifference:I

.field private mBouncingDuration:I

.field private mMultiOnScrollBeforeUpdateDistanceLeft:I

.field private mMultiOnScrollBeforeUpdateHandlingSteps:I

.field private mName:Ljava/lang/String;

.field private mOutRatioY:F

.field private onScrollReceivedBeforeUpdate:I

.field private onScrollRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private panAnimationFramesCount:I

.field private panTargetDistance:I

.field private ppi:F

.field private final ppiBaseInPyramid:F

.field private relativeMovement:I

.field private status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

.field private touchDownInitialPosition:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x4370

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    iput-wide v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    iput-wide v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deviceFPS:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isOnborderThreshold:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->PAN_ANIMATION_FRAME_COUNT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->PAN_ANIMATION_FRAME_COUNT_TO_HANDLE_MULTIPLE_SCROLL_EVENT:I

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemLeftBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemRightBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isOnBouncingBack:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mBouncingDuration:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mOutRatioY:F

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppiBaseInPyramid:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppi:F

    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppi:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->MAX_VELOCITY:F

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mName:Ljava/lang/String;

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->bMultiOnScrollBeforeUpdateHandling:Z

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollReceivedBeforeUpdate:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    const v0, 0x43c0e9ba

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->ppi:F

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    return-void
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

.method private limitedMovement(I)V
    .locals 4

    const/4 v3, -0x1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_3

    if-gez p1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemLeftBorder:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_5

    if-gez p1, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1, v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0, v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemRightBorder:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    if-eqz v0, :cond_7

    if-lez p1, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1, v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0, v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemSpacing()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto/16 :goto_0

    :cond_6
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto/16 :goto_0

    :cond_7
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkStartPanningOnBorder()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemLeftBorder:Z

    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnItemRightBorder:Z

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v3

    int-to-float v0, v3

    cmpl-float v3, v0, v4

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    cmpg-float v3, v0, v4

    if-gez v3, :cond_0

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListLeftBorder:Z

    :cond_0
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_1

    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isStartPanningOnListRightBorder:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][FullScreenViewScroller][checkStartPanningOnBorder]itemInfoGetter is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deInit()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    return-void
.end method

.method public getItemAlignMode()Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    return-object v0
.end method

.method public getRelativeMovement()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    return v0
.end method

.method public getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    return-object v0
.end method

.method public init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewScroller][init]item_align_mode is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->item_align_mode:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FullScreenViewScroller][init]itemInfoGetter is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->itemInfoGetter:Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFling(F)V
    .locals 3

    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->MAX_VELOCITY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    sget v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    sget v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    return-void
.end method

.method public onTouchDown(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->reset()V

    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->checkStartPanningOnBorder()V

    return-void
.end method

.method public onTouchMove(I)V
    .locals 3

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollReceivedBeforeUpdate:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollReceivedBeforeUpdate:I

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v1

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mOutRatioY:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    :cond_0
    return-void
.end method

.method public onTouchUp(I)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    iput-wide v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deviceFPS:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panAnimationFramesCount:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->isOnBouncingBack:Z

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mOutRatioY:F

    return-void
.end method

.method public update()V
    .locals 11

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    sget-object v7, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v6, v7, :cond_1

    iput v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->relativeMovement:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    sget-object v7, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v6, v7, :cond_c

    const/4 v2, 0x0

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollReceivedBeforeUpdate:I

    if-le v6, v8, :cond_7

    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->bMultiOnScrollBeforeUpdateHandling:Z

    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    sub-int v1, v6, v7

    :goto_1
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v8, v6

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    if-lez v6, :cond_6

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    div-int v3, v6, v7

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    rem-int/2addr v6, v7

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    :goto_2
    add-int/2addr v1, v3

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    if-eq v1, v6, :cond_3

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    :cond_3
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    sub-int v2, v6, v7

    :goto_3
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    if-nez v6, :cond_4

    iput-boolean v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->bMultiOnScrollBeforeUpdateHandling:Z

    :cond_4
    invoke-direct {p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->limitedMovement(I)V

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iput v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollReceivedBeforeUpdate:I

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    goto :goto_1

    :cond_6
    iput v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    goto :goto_2

    :cond_7
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->bMultiOnScrollBeforeUpdateHandling:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onScrollRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->touchDownInitialPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iput v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    :cond_8
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    if-lez v6, :cond_a

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    div-int v3, v6, v7

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    rem-int/2addr v6, v7

    if-eqz v6, :cond_9

    add-int/lit8 v3, v3, 0x1

    :cond_9
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    :goto_4
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    sub-int v2, v6, v7

    goto :goto_3

    :cond_a
    iput v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateHandlingSteps:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->mMultiOnScrollBeforeUpdateDistanceLeft:I

    goto :goto_4

    :cond_b
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->panTargetDistance:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentMovedDistance:I

    sub-int v2, v6, v7

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    sget-object v7, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v6, v7, :cond_0

    const/16 v6, 0x3e8

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deviceFPS:I

    div-int/2addr v6, v7

    int-to-long v4, v6

    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    long-to-float v6, v6

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTotalDistance:I

    int-to-float v7, v7

    iget-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingDuration:J

    long-to-float v8, v8

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->easeFunction(FFF)F

    move-result v6

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->initialVelocity:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    sub-int v2, v6, v0

    if-lez v2, :cond_e

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-lez v6, :cond_e

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-le v2, v6, :cond_d

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    :cond_d
    :goto_5
    invoke-direct {p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->limitedMovement(I)V

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-nez v6, :cond_f

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_f

    :goto_6
    if-nez v2, :cond_0

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTimePassed:J

    iput v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->currentFlingingTravelledDistance:I

    sget-object v6, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    iput-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->status:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    goto/16 :goto_0

    :cond_e
    if-gez v2, :cond_d

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-gez v6, :cond_d

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    if-ge v2, v6, :cond_d

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    goto :goto_5

    :cond_f
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->lastPositionDifference:I

    goto :goto_6
.end method
