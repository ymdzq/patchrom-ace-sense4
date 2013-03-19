.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.super Ljava/lang/Object;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;,
        Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    }
.end annotation


# static fields
.field private static final ANIM_ALIGN:Ljava/lang/String; = "Align"

#the value of this static final field might be set in the static constructor
.field public static final ANIM_FULL_TO_FILM_ENTER_VELOCITY:F = 0.0f

.field private static final ANIM_TO_FILMSTRIP_DISTANCE_THRESHOLD:F = 20.0f

.field private static final ANIM_TO_FILMSTRIP_TIME_THRESHOLD:I = 0x5dc

.field private static final CANCEL_ALIGNING_ACTION_NAME:Ljava/lang/String; = "FullScreenCancelAligning"

.field private static final DEBUG:Z = false

.field private static final FILMSTRIP_VIEW_INDICATOR_DIRECT_SHOW_ACTION_NAME:Ljava/lang/String; = "FilmstripViewIndicatorDirectShowAction"

.field private static final FLING_INDEX_CHANGE_VELOCITY_THRESHOLD:F = 500.0f

.field private static final FRAMES_ALIGNING:I = 0x1

.field private static final FRAMES_COUNT:I = 0x9

.field private static final FRAMES_IDLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_LAND:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_PORT:F = 0.0f

.field private static final FULL_TO_FILM_PAN_GESTURES_TO_CHECK:I = 0x3

.field private static final FULL_TO_FILM_PAN_GESTURES_VELOCITY_THRESHOLD_LAND:F = 8000.0f

.field private static final FULL_TO_FILM_PAN_GESTURES_VELOCITY_THRESHOLD_PORT:F = 4500.0f

.field private static final LONG_PRESS_FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_LAND:F = 0.1f

.field private static final LONG_PRESS_FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_PORT:F = 0.1f

.field private static final LTAG:Ljava/lang/String; = "FullScreenViewScene"

.field private static final PANNING_ACTION_NAME:Ljava/lang/String; = "FullScreenPan"

.field private static final PAN_GESTURE_COMPENSATOR_EVENT_NAME:Ljava/lang/String; = "PanGestureCompensator"

.field private static final PAN_RECORDS_COUNT:I = 0x3

.field private static final PAN_TO_STOP_FULLS_CREEN_VIEW_TIME_THRESHOLD:J = 0x46L

.field private static final SPEEDYFU_INDEX_CHANGE_LIMIT_WIDTH_MODIFIER:F = 1.75f

.field private static final SPEEDY_FU_CONSTANT_MOVEMENT_DENOMINATOR_LAND:I = 0xc

.field private static final SPEEDY_FU_CONSTANT_MOVEMENT_DENOMINATOR_PORT:I = 0xc

.field private static final TREAT_AS_FAST_SCROLLING_MOVEMENT_THRESHOLD:I = 0xa

.field private static final TREAT_AS_FAST_SCROLLING_TIME_THRESHOLD:I = 0x258


# instance fields
.field private bIsEnterFilmstripViewIndicatorShown:Z

.field private bIsEnterFilmstripViewIndicatorShownWhenOnUp:Z

.field private bIsInSpeedyFu:Z

.field private bIsStartPanOnFirstLastItem:Z

.field private bShowPressed:Z

.field private bWasAligning:Z

.field private centerFrameIndex:I

.field private currentItemIndex:I

.field private frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field private fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field private imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private isCurrentIndexSet:Z

.field private itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

.field private itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

.field private itemInterval:I

.field private itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

.field private itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

.field private itemsCount:I

.field private lastStatus:I

.field private mFilmstripViewIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

.field private mInTransition:Z

.field private mIsPanning:Z

.field private mIsStartPanningOnLeftBorder:Z

.field private mIsStartPanningOnRightBorder:Z

.field private mItemIndexBeforeOnUp:I

.field protected mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

.field private mShouldLockPanningOnLeftBorder:Z

.field private mShouldLockPanningOnRightBorder:Z

.field private mSpeedyFuDirection:F

.field private mediaList:Lcom/htc/sunnyCore/IMediaList;

.field private panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

.field private panRecordIndexToAdd:I

.field private panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

.field private pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

.field private recordPanBegin:Z

.field private renderThread:Lcom/htc/sunnyCore/RenderThread;

.field protected scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

.field private scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

.field private sunnyEnvironment:I

.field private viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

.field private viewportHeight:I

.field private viewportWidth:I

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULL_TO_FILM_ENTER_VELOCITY:F

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->ANIM_FULL_TO_FILM_ENTER_VELOCITY:F

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->TO_FILM_MOVE_THRESHOLD_MODIFIER_LAND:F

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_LAND:F

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->TO_FILM_MOVE_THRESHOLD_MODIFIER_PORT:F

    sput v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_PORT:F

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 7

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShown:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShownWhenOnUp:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsStartPanOnFirstLastItem:Z

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    new-array v1, v6, [Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    new-array v1, v5, [Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bWasAligning:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bShowPressed:Z

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mFilmstripViewIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v2, v3, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    invoke-direct {v2, p0, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    const-string v2, "PinchZoomAnimator"

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    const-string v2, "ItemClickInfoGetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    const-string v2, "ItemInfoGetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    const-string v2, "TtemPaintLayerTransparencySetter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    const-string v2, "FullScreenPan"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doFramesOffset(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunnyCore/IMediaList;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShown:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mFilmstripViewIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCurrentFrameHoming()V

    return-void
.end method

.method static synthetic access$2802(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunnyCore/RenderThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v0

    return-object v0
.end method

.method private checkStartPanningOnBorder()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z

    :cond_0
    return-void
.end method

.method private doCurrentFrameHoming()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;->onFullScreenViewAlignEnd()V

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onEnterImageIRT(I)V

    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->sendInfoToImagePanAndZoomListener()V

    return-void
.end method

.method private doCurrentFrameLeaving()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    return-void
.end method

.method private doFramesOffset(F)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0, v3, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FullScreenViewScene"

    const-string v2, "doFramesOffset() NG - layoutSceneAndBindItem"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getFrameIndexFromItemIndex(I)I
    .locals 6

    const/16 v5, 0x9

    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    sub-int v1, p1, v4

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    neg-int v4, v2

    if-ge v1, v4, :cond_2

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v0, v4, v1

    if-gez v0, :cond_5

    add-int/lit8 v0, v0, 0x9

    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    if-lt v0, v5, :cond_1

    :cond_4
    const-string v4, "FullScreenViewScene"

    const-string v5, "getFrameIndexFromItemIndex NG - index error"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_5
    if-lt v0, v5, :cond_3

    add-int/lit8 v0, v0, -0x9

    goto :goto_1
.end method

.method private getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .locals 2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v0, v1, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getLastPanRecord(I)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;
    .locals 3

    if-lez p1, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    const/4 v1, 0x2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method private getLastPanVelocity()F
    .locals 2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v0, v1, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    return v1
.end method

.method private layoutSceneAndBindItem()Z
    .locals 12

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    if-nez v9, :cond_1

    :cond_0
    const-string v9, "FullScreenViewScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - render not setup"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v9}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "FullScreenViewScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - scene not setup"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    if-nez v9, :cond_4

    :cond_3
    const-string v9, "FullScreenViewScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - zero viewport"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v9, :cond_5

    const-string v9, "FullScreenViewScene"

    const-string v10, "layoutSceneAndBindItem() Rejected - zero mediaList"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ltz v9, :cond_6

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    const/16 v10, 0x9

    if-lt v9, v10, :cond_7

    :cond_6
    const-string v9, "FullScreenViewScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutSceneAndBindItem() NG - error centerFrameIndex "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    const/4 v8, 0x4

    neg-int v4, v8

    :goto_1
    if-gt v4, v8, :cond_10

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    add-int v5, v9, v4

    if-ltz v5, :cond_b

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v5, v9, :cond_b

    const/4 v6, 0x1

    :goto_2
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v1, v9, v4

    if-gez v1, :cond_8

    add-int/lit8 v1, v1, 0x9

    :cond_8
    const/16 v9, 0x9

    if-lt v1, v9, :cond_9

    add-int/lit8 v1, v1, -0x9

    :cond_9
    if-ltz v1, :cond_a

    const/16 v9, 0x9

    if-lt v1, v9, :cond_c

    :cond_a
    const-string v9, "FullScreenViewScene"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutSceneAndBindItem() NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    :cond_c
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemIndex()I

    move-result v2

    if-eqz v6, :cond_f

    if-eq v2, v5, :cond_e

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v9, v5}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v7

    :cond_d
    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9, v5, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    :cond_e
    :goto_4
    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v4

    int-to-float v9, v9

    add-float v3, v0, v9

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    goto :goto_3

    :cond_f
    const/4 v9, -0x1

    if-eq v2, v9, :cond_e

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_4

    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private recordPanBegin(IFF)V
    .locals 3

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    aget-object v0, v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    iput p1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginItemIndex:I

    iput p2, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginPosition:F

    iput p3, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    goto :goto_0
.end method

.method private recordPanEnd(IFF)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    aget-object v0, v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panEndTime:J

    iget-wide v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panEndTime:J

    iget-wide v3, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDuration:J

    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginPosition:F

    sub-float v1, p2, v1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginFramePosition:F

    sub-float v1, p3, v1

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginItemIndex:I

    sub-int/2addr v2, p1

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panFrameDistance:F

    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    iget-wide v2, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDuration:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin:Z

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    goto :goto_0
.end method

.method private shouldAnimateToFilmstripView(Ljava/lang/String;)Z
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    if-lt v8, v9, :cond_2

    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULL_TO_FILM_ENTERING_MOVEMENT_THRESHOLD_LAND:I

    int-to-float v8, v8

    sget v9, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_LAND:F

    mul-float v6, v8, v9

    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULL_TO_FILM_ENTERING_MOVEMENT_THRESHOLD_LAND:I

    int-to-float v8, v8

    const v9, 0x3dcccccd

    mul-float v5, v8, v9

    :goto_0
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShownWhenOnUp:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShownWhenOnUp:Z

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v4

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-eqz v8, :cond_0

    iget v8, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    cmpl-float v8, v8, v5

    if-gtz v8, :cond_1

    :cond_0
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_4

    iget v8, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    neg-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    :cond_1
    const/4 v8, 0x1

    :goto_1
    return v8

    :cond_2
    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULL_TO_FILM_ENTERING_MOVEMENT_THRESHOLD_PORT:I

    int-to-float v8, v8

    sget v9, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->FULL_TO_FILM_MOVE_THRESHOLD_MODIFIER_PORT:F

    mul-float v6, v8, v9

    sget v8, Lcom/htc/album/AlbumCommon/LayoutConstants;->FULL_TO_FILM_ENTERING_MOVEMENT_THRESHOLD_PORT:I

    int-to-float v8, v8

    const v9, 0x3dcccccd

    mul-float v5, v8, v9

    goto :goto_0

    :cond_3
    const/high16 v6, 0x41a0

    const/high16 v5, 0x41a0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v4

    iget v8, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    cmpg-float v8, v8, v6

    if-gez v8, :cond_5

    iget v8, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    neg-float v9, v6

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_2
    const/4 v8, 0x3

    if-ge v3, v8, :cond_a

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    aget-object v7, v8, v3

    iget-wide v8, v7, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    const-wide/16 v10, 0x5dc

    add-long/2addr v8, v10

    cmp-long v8, v0, v8

    if-lez v8, :cond_6

    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    if-nez v8, :cond_7

    iget-boolean v8, v7, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    if-nez v8, :cond_7

    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    iget v8, v7, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_9

    add-int/lit8 v2, v2, 0x1

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    iget v8, v7, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_a
    const/4 v8, 0x3

    if-eq v2, v8, :cond_b

    const/4 v8, -0x3

    if-eq v2, v8, :cond_b

    const/4 v8, 0x0

    goto :goto_1

    :cond_b
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-nez v8, :cond_c

    const/4 v8, 0x3

    if-eq v2, v8, :cond_d

    :cond_c
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_e

    const/4 v8, -0x3

    if-ne v2, v8, :cond_e

    :cond_d
    const/4 v8, 0x0

    goto :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sget v9, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->ANIM_FULL_TO_FILM_ENTER_VELOCITY:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_f

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    sget-boolean v8, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v8, :cond_10

    const-string v8, "FullScreenViewScene"

    const-string v9, "shouldAnimateToFilmstripView"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const/4 v8, 0x1

    goto/16 :goto_1
.end method

.method private shouldEnterSpeedyFu()Z
    .locals 12

    const-wide/16 v10, 0x258

    const/4 v6, 0x1

    const/high16 v9, 0x4120

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v0, 0x0

    invoke-direct {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord(I)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v3

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord(I)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v4

    iget-wide v7, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    add-long/2addr v7, v10

    cmp-long v7, v1, v7

    if-gtz v7, :cond_0

    iget-wide v7, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    add-long/2addr v7, v10

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v7, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v9, v7

    if-gtz v7, :cond_0

    iget v7, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v9, v7

    if-gtz v7, :cond_0

    iget v7, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    iget v8, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const/4 v0, 0x1

    iget v7, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    iput v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuDirection:F

    :cond_2
    if-eqz v0, :cond_0

    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public KeyUpMotion(I)V
    .locals 10

    const/16 v9, 0x9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    move v4, p1

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    sub-int v7, v4, v7

    add-int v3, v6, v7

    :goto_1
    if-lt v3, v9, :cond_1

    add-int/lit8 v3, v3, -0x9

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v3, :cond_2

    add-int/lit8 v3, v3, 0x9

    goto :goto_2

    :cond_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-eq v4, v6, :cond_7

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_6

    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "FullScreenViewScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KeyUpMotion CurrentItemChange "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    :cond_4
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v6, v7}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v6, v6, v7

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v6, v7, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    :cond_6
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v5

    iput-boolean v0, v5, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    const-string v5, "KeyUpMotion"

    invoke-direct {p0, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldAnimateToFilmstripView(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v7

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->fullScreenViewAnimateToFilmstripView(IFF)V

    goto/16 :goto_0

    :cond_7
    move v0, v5

    goto/16 :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_a

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-eq v1, v5, :cond_9

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    goto/16 :goto_0
.end method

.method public bindMediaList(Lcom/htc/sunnyCore/IMediaList;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "FullScreenViewScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindMediaList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FullScreenViewScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][FullScreenViewScene][bindMediaList]isCurrentIndexSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIRT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearRenderingEnvironment()V
    .locals 3

    const-string v1, "FullScreenViewScene"

    const-string v2, "clearRenderingEnvironment()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->clearRenderingEnvironment()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearScene(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->deInit()V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->removeFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v1}, Lcom/htc/sunnyCore/SceneNode;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SceneNode;->release()V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->freeShareResources()V

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    :cond_4
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    return-void
.end method

.method doCenterAlign()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsStartPanOnFirstLastItem:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldEnterSpeedyFu()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    cmpl-float v0, v4, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "Align"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;

    const-string v3, "Align"

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;FF)V

    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    instance-of v0, v6, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;

    if-eqz v0, :cond_0

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    invoke-virtual {v6, v4, v5, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->overrideParameters(FFZ)V

    goto :goto_1

    :cond_3
    cmpl-float v0, v4, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$LayoutSceneAndBindItemRenderThreadEvent;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIRT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;->onFullScreenViewAlignEnd()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "Align"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onEnterImageIRT(I)V

    :cond_5
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    goto :goto_1
.end method

.method public getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt v1, v2, :cond_2

    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v2, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    if-eq v1, v2, :cond_4

    const-string v1, "FullScreenViewScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentItemInfoIHT NG - index error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    :cond_4
    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    if-eq v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getInOutAnimation(Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunnyCore/view/SView;ILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)Lcom/htc/sunnyCore/RenderThreadAction;
    .locals 24

    if-nez p1, :cond_2

    const-string v5, "FullScreenViewScene"

    const-string v6, "Bundle is null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v11, v5, v6

    if-nez v11, :cond_5

    const-string v5, "FullScreenViewScene"

    const-string v6, "[FullScreenViewScene][animationInIRT] Fullscreen frame is null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    :cond_3
    if-eqz p3, :cond_4

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v8

    if-nez v8, :cond_8

    const-string v5, "FullScreenViewScene"

    const-string v6, "[FullScreenViewScene][animationInIRT] Fullscreen item is null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    :cond_6
    if-eqz p3, :cond_7

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    :cond_8
    const-string v5, "TO_WIDTH"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v21

    const-string v5, "TO_HEIGHT"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v20

    const-string v5, "FROM_WIDTH"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v17

    const-string v5, "FROM_HEIGHT"

    invoke-virtual {v11}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v16

    const-string v5, "FROM_X"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v5, "FROM_Y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v5, "TO_X"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    const-string v5, "TO_Y"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    const/4 v12, 0x0

    const-string v5, "ANIMATION_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_1
    :pswitch_0
    const-string v5, "DURATION"

    const/16 v6, 0x12c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;

    const-string v7, "FullscreenviewScene"

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v4 .. v15}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;ZIILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->setScale(FFFF)V

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScaleTransitionAnimation;->setTransition(IIII)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v12, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v12, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getItemClickInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object p1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThread;->runInterruptionIHT(Lcom/htc/sunnyCore/RenderThreadInterruption;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object v4, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemClickInfoGetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;

    iput-object v4, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemClickInfoGetter;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->index:I

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->hideDRMIndicator()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FullScreenViewScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][hideDRMIndicator] NG"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isInTransition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    return v0
.end method

.method public isShowPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bShowPressed:Z

    return v0
.end method

.method isZoomed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public notifiedItemTextureExpired(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->notifiedItemTextureExpired(I)V

    goto :goto_0
.end method

.method public notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_0
.end method

.method public notifyMediaDataChangeIRTLock(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    goto :goto_0
.end method

.method onChildFrameZoomBegin(F)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    :cond_0
    return-void
.end method

.method onChildFrameZoomEnd(F)V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V

    return-void
.end method

.method onChildFrameZooming(F)V
    .locals 0

    return-void
.end method

.method public onDRMPressed(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->onDRMPressed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FullScreenViewScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][onDRMPressed] NG"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-lt v0, v1, :cond_1

    :cond_0
    const-string v0, "FullScreenViewScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoubleTap() NG - error idnex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setExtremeQualityItemIndex(I)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onDoubleTap(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->resetHadProcessedMovement()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->cancelFling()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanBegin(IFF)V

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->checkStartPanningOnBorder()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "FullScreenCancelAligning"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;

    const-string v2, "FullScreenCancelAligning"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bShowPressed:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShown:Z

    if-eqz v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v12, v13}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_0

    const/high16 v12, 0x43fa

    cmpl-float v12, p3, v12

    if-gtz v12, :cond_2

    const/high16 v12, -0x3c06

    cmpg-float v12, p3, v12

    if-gez v12, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    int-to-float v12, v12

    const/high16 v13, 0x3fe0

    mul-float v5, v12, v13

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mItemIndexBeforeOnUp:I

    cmpg-float v12, v4, v5

    if-gez v12, :cond_3

    neg-float v12, v5

    cmpl-float v12, v4, v12

    if-lez v12, :cond_3

    const/4 v12, 0x0

    cmpl-float v12, p3, v12

    if-lez v12, :cond_4

    if-lez v11, :cond_3

    add-int/lit8 v11, v11, -0x1

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    sub-int v13, v11, v13

    add-int v10, v12, v13

    :goto_2
    const/16 v12, 0x9

    if-lt v10, v12, :cond_5

    add-int/lit8 v10, v10, -0x9

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    cmpg-float v12, p3, v12

    if-gez v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-gez v10, :cond_6

    add-int/lit8 v10, v10, 0x9

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    if-eq v11, v12, :cond_c

    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_a

    sget-boolean v12, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v12, :cond_7

    const-string v12, "FullScreenViewScene"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onFling CurrentItemChange "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v12}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    :cond_8
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-interface {v12, v13}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v9

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v12, v13, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v12, v13}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    :cond_a
    const/4 v7, 0x0

    :goto_5
    const/16 v12, 0x9

    if-ge v7, v12, :cond_d

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-eq v7, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord(I)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v8

    iget v12, v8, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_e

    iget-wide v12, v8, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDuration:J

    long-to-float v12, v12

    mul-float v12, v12, p3

    const/high16 v13, 0x447a

    div-float/2addr v12, v13

    iput v12, v8, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    :cond_e
    move/from16 v0, p3

    iput v0, v8, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panVelocity:F

    const-string v12, "onFling"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldAnimateToFilmstripView(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->fullScreenViewAnimateToFilmstripView(IFF)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    goto/16 :goto_0
.end method

.method public onLayout(II)V
    .locals 4

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setFrameSize(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCurrentFrameHoming()V

    return-void
.end method

.method public onMediaItemRefreshIRT(I)V
    .locals 8

    const/16 v7, 0x9

    move v1, p1

    if-ltz v1, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x9

    :cond_0
    if-lt v0, v7, :cond_1

    add-int/lit8 v0, v0, -0x9

    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v7, :cond_4

    :cond_2
    const-string v4, "FullScreenViewScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layoutSceneAndBindItem() NG "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_1
.end method

.method public onMediaItemRefreshSizeIRT(I)V
    .locals 8

    const/16 v7, 0x9

    move v1, p1

    if-ltz v1, :cond_3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x9

    :cond_0
    if-lt v0, v7, :cond_1

    add-int/lit8 v0, v0, -0x9

    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v7, :cond_4

    :cond_2
    const-string v4, "FullScreenViewScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMediaItemRefreshSizeIRT() NG "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->refreshMediaSize(ILcom/htc/sunnyCore/IMediaData;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_1
.end method

.method public onMediaItemSetConsumeRightExpiredIRT(I)V
    .locals 7

    const/16 v6, 0x9

    move v1, p1

    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x9

    :cond_0
    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v0, -0x9

    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v6, :cond_4

    :cond_2
    const-string v3, "FullScreenViewScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaItemSetConsumeRightExpiredIRT() NG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setMediaItemConsumeRightExpired(I)V

    goto :goto_1

    :cond_5
    const-string v3, "FullScreenViewScene"

    const-string v4, "onMediaItemSetConsumeRightExpiredIRT() NG, item index is invalid or item is not center frame"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMediaItemSetConsumeRightFlagIRT(I)V
    .locals 7

    const/16 v6, 0x9

    move v1, p1

    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v1, v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x9

    :cond_0
    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v0, -0x9

    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v6, :cond_4

    :cond_2
    const-string v3, "FullScreenViewScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaItemConsumeRightIRT() NG "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setMediaItemConsumeRightFlag(I)V

    goto :goto_1

    :cond_5
    const-string v3, "FullScreenViewScene"

    const-string v4, "onMediaItemConsumeRightIRT() NG, item index is invalid or item is not center frame"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setExtremeQualityItemIndex(I)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleIRT(Landroid/view/ScaleGestureDetector;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateFilmstripEnterIndicatorLeft(ZFF)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateFilmstripEnterIndicatorRight(ZFF)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "FilmstripViewIndicatorDirectShowAction"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShown:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mFilmstripViewIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mFilmstripViewIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;->onFilmstripViewEntryIndicatorHidden()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->isItemZoomable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isOnBounceBack()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleBeginIRT(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->onScaleEndIRT(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 12

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bShowPressed:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShown:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v9, "FullScreenCancelAligning"

    invoke-virtual {v8, p0, v9}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v9, "FilmstripViewIndicatorDirectShowAction"

    invoke-virtual {v8, p0, v9}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateFilmstripEnterIndicatorLeft(ZFF)V

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateFilmstripEnterIndicatorRight(ZFF)V

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v9, "Align"

    invoke-virtual {v8, p0, v9}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecords:[Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panRecordIndexToAdd:I

    aget-object v7, v8, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v8, v7, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    sub-long v4, v2, v8

    const-wide/16 v8, 0x46

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    const/4 v6, 0x1

    :cond_3
    if-nez v1, :cond_4

    if-nez v6, :cond_4

    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    if-eqz v8, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v8

    neg-float v8, v8

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuDirection:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v9, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;

    const-string v10, "FullScreenCancelAligning"

    invoke-direct {v9, p0, p0, v10}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$CancelAligningAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v9, "Align"

    invoke-virtual {v8, p0, v9}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-interface {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    :cond_5
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panBegin()V

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchDown(I)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    :cond_6
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchMove(I)V

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchMove(I)V

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->pinchZoomAnimator:Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isOnBounceBack()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v8

    sget-object v9, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v8

    sget-object v9, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v8, v9, :cond_8

    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v9, "FullScreenPan"

    invoke-virtual {v8, p0, v9}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    invoke-virtual {v8, v9}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    :cond_8
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    invoke-interface {v8, p3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;->onFullScreenViewScrollIRT(F)V

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bShowPressed:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_1

    move-object v6, p1

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;

    const-string v3, "FilmstripViewIndicatorDirectShowAction"

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewIndicatorDirectShowAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;FF)V

    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 35

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bShowPressed:Z

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    move-object/from16 v31, v0

    const-string v32, "Align"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v31

    if-eqz v31, :cond_9

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    move-object/from16 v31, v0

    const-string v32, "FilmstripViewIndicatorDirectShowAction"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateFilmstripEnterIndicatorLeft(ZFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateFilmstripEnterIndicatorRight(ZFF)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShown:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShown:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShownWhenOnUp:Z

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsEnterFilmstripViewIndicatorShown:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v34, v0

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->recordPanEnd(IFF)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bWasAligning:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsInSpeedyFu:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    const/16 v18, 0x1

    :cond_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bWasAligning:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsPanning:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panEnd()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->hadProcessedMovement()Z

    move-result v31

    if-nez v31, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v31

    const/high16 v32, 0x3f80

    cmpl-float v31, v31, v32

    if-nez v31, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panDistance:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    move-object/from16 v31, v0

    new-instance v32, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;

    const-string v33, "PanGestureCompensator"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanGestureCompensator;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual/range {v31 .. v32}, Lcom/htc/sunnyCore/RenderThread;->pushEventIRT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->panAction:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->resetHadProcessedMovement()V

    :cond_2
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsStartPanOnFirstLastItem:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v31, v0

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v31

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-gez v31, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v31

    const/16 v32, 0x0

    cmpg-float v31, v31, v32

    if-gtz v31, :cond_5

    :cond_4
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bIsStartPanOnFirstLastItem:Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    move-object/from16 v31, v0

    const-string v32, "FullScreenCancelAligning"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchUp(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->onTouchUp(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mItemIndexBeforeOnUp:I

    if-eqz v18, :cond_e

    const/4 v4, -0x1

    const/16 v19, -0x1

    const v21, 0x7f7fffff

    const/16 v28, 0x4

    move/from16 v0, v28

    neg-int v15, v0

    :goto_1
    move/from16 v0, v28

    if-gt v15, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v31, v0

    add-int v12, v31, v15

    if-gez v12, :cond_6

    add-int/lit8 v12, v12, 0x9

    :cond_6
    const/16 v31, 0x9

    move/from16 v0, v31

    if-lt v12, v0, :cond_7

    add-int/lit8 v12, v12, -0x9

    :cond_7
    if-ltz v12, :cond_8

    const/16 v31, 0x9

    move/from16 v0, v31

    if-lt v12, v0, :cond_a

    :cond_8
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemIndex()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    aget-object v31, v31, v12

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v31

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v32

    cmpg-float v31, v31, v32

    if-gez v31, :cond_8

    move/from16 v21, v14

    move/from16 v19, v13

    goto :goto_2

    :cond_b
    const/16 v31, -0x1

    move/from16 v0, v31

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    move/from16 v23, v19

    const/16 v31, 0x0

    cmpg-float v31, v21, v31

    if-gez v31, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuDirection:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    add-int/lit8 v23, v23, 0x1

    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v32, v0

    sub-int v32, v23, v32

    add-int v22, v31, v32

    :goto_4
    const/16 v31, 0x9

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_13

    add-int/lit8 v22, v22, -0x9

    goto :goto_4

    :cond_d
    const/16 v31, 0x0

    cmpl-float v31, v21, v31

    if-lez v31, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mSpeedyFuDirection:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_c

    if-lez v23, :cond_c

    add-int/lit8 v23, v23, -0x1

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v29, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panFrameDistance:F

    move/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v33

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panBeginTime:J

    move-wide/from16 v33, v0

    sub-long v25, v31, v33

    const/4 v7, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x3fe0

    mul-float v6, v31, v32

    cmpg-float v31, v5, v6

    if-gez v31, :cond_c

    neg-float v0, v6

    move/from16 v31, v0

    cmpl-float v31, v5, v31

    if-lez v31, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    move/from16 v31, v0

    if-eqz v31, :cond_f

    const-wide/16 v31, 0x1f4

    cmp-long v31, v25, v31

    if-lez v31, :cond_11

    :cond_f
    const/16 v31, 0x0

    cmpl-float v31, v24, v31

    if-eqz v31, :cond_10

    move v7, v5

    move/from16 v30, v11

    :cond_10
    :goto_5
    cmpl-float v31, v7, v30

    if-lez v31, :cond_12

    :goto_6
    cmpl-float v31, v7, v30

    if-lez v31, :cond_c

    if-lez v23, :cond_c

    add-int/lit8 v23, v23, -0x1

    sub-float v7, v7, v29

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    move/from16 v7, v24

    move/from16 v30, v10

    goto :goto_5

    :cond_12
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v7, v31

    if-gez v31, :cond_c

    :goto_7
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v7, v31

    if-gez v31, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    add-int/lit8 v23, v23, 0x1

    add-float v7, v7, v29

    goto :goto_7

    :cond_13
    :goto_8
    if-gez v22, :cond_14

    add-int/lit8 v22, v22, 0x9

    goto :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v31, v0

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a

    const/4 v8, 0x1

    :goto_9
    if-eqz v8, :cond_18

    sget-boolean v31, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v31, :cond_15

    const-string v31, "FullScreenViewScene"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onUp CurrentItemChange "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " -> "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-object/from16 v31, v0

    if-eqz v31, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onLeaveImageIRT()V

    :cond_16
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    :cond_17
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanRecord()Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;

    move-result-object v31

    move-object/from16 v0, v31

    iput-boolean v8, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanRecord;->panCrossedFrame:Z

    const-string v31, "onUp"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->shouldAnimateToFilmstripView(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v34, v0

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v33

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getLastPanVelocity()F

    move-result v34

    invoke-virtual/range {v31 .. v34}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->fullScreenViewAnimateToFilmstripView(IFF)V

    :cond_19
    :goto_a
    return-void

    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_1b
    const/4 v15, 0x0

    :goto_b
    const/16 v31, 0x9

    move/from16 v0, v31

    if-ge v15, v0, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v15, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-object/from16 v31, v0

    aget-object v31, v31, v15

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    :cond_1c
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mFilmstripViewIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    move-object/from16 v31, v0

    if-eqz v31, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mFilmstripViewIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;->onFilmstripViewEntryIndicatorHidden()V

    goto :goto_a
.end method

.method public rebindVisibleItems()V
    .locals 11

    const/16 v10, 0x9

    const/4 v6, 0x4

    neg-int v2, v6

    :goto_0
    if-gt v2, v6, :cond_8

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    add-int v3, v7, v2

    if-ltz v3, :cond_4

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    if-ge v3, v7, :cond_4

    const/4 v4, 0x1

    :goto_1
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    add-int v0, v7, v2

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x9

    :cond_0
    if-lt v0, v10, :cond_1

    add-int/lit8 v0, v0, -0x9

    :cond_1
    if-ltz v0, :cond_2

    if-lt v0, v10, :cond_5

    :cond_2
    const-string v7, "FullScreenViewScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layoutSceneAndBindItem() NG "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemIndex()I

    move-result v1

    if-eqz v4, :cond_7

    if-eq v1, v3, :cond_3

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v7, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->bindItem(ILcom/htc/sunnyCore/IMediaData;)Z

    goto :goto_2

    :cond_7
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public setCurrentItemIndex(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onSetCurrentIndex(I)V

    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    return v3
.end method

.method public setFilmstripViewIndicatorListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mFilmstripViewIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    return-void
.end method

.method public setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnFullScreenViewAlignEndListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mOnFullScreenViewAlignEndListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;

    return-void
.end method

.method public setPaintLayerBMPIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;

    const-string v2, "ItemPaintLayerBMPSetter"

    invoke-direct {v0, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerBMPSetter;->itemPaintLayerInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPaintLayerTransparencyIHT(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    iput p1, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->index:I

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    iput p2, v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->transparency:I

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPaintLayerTransparencySetter:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->visible:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setupImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    return-void
.end method

.method public setupRenderingEnvironment(Lcom/htc/sunnyCore/RenderThread;I)V
    .locals 4

    const-string v1, "FullScreenViewScene"

    const-string v2, "setupRenderingEnvironment()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setupRenderingEnvironment(Lcom/htc/sunnyCore/RenderThread;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setupScene(Lcom/htc/sunnyCore/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;III)Z
    .locals 10

    const/16 v9, 0x9

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const-string v2, "FullScreenViewScene"

    const-string v3, "setupScene() NG - zero param"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunnyCore/SceneNode;)V

    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I

    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->sunnyEnvironment:I

    iput v4, v3, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->sunnyEnvironment:I

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->allocateShareResources()V

    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "FullScreenViewScene"

    const-string v3, "setupScene() NG - failed to create scene node"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunnyCore/SceneNode;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/SceneNode;->setVisibility(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v3}, Lcom/htc/sunnyCore/SceneNode;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewRootSceneNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemPrototype:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->addToScene(IILcom/htc/sunnyCore/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "FullScreenViewScene"

    const-string v3, "setupScene() NG - failed to create frame"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunnyCore/SceneNode;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8, v8, v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    invoke-direct {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v3, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    sget-object v3, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    move v1, v2

    goto/16 :goto_0
.end method

.method public showDRMIndicator(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItem()Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->showDRMIndicator(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FullScreenViewScene"

    const-string v2, "[HTCAlbum][FullScreenViewScene][showDRMIndicator] NG"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindMediaList()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "FullScreenViewScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindMediaList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unbindItem()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FullScreenViewScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][FullScreenViewScene][unbindMediaList]isCurrentIndexSet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isCurrentIndexSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method unzoomCenter()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->unzoom()V

    :cond_0
    return-void
.end method
