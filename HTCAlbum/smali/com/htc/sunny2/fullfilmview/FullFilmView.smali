.class public Lcom/htc/sunny2/fullfilmview/FullFilmView;
.super Lcom/htc/sunnyCore/view/SView;
.source "FullFilmView.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;
.implements Lcom/htc/sunnyCore/Preparator$UpdateListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/htc/sunnyCore/view/ISViewDataChangeHandler;
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;,
        Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    }
.end annotation


# static fields
.field private static final CANCEL_FILMSTRIP_VIEW_FLINGING_NAME:Ljava/lang/String; = "CancelFlimstripViewlFlinging"

.field static final LTAG:Ljava/lang/String; = "FullFilmView"

.field private static final PAN_TO_STOP_FILMSTRIP_VIEW_TIME_THRESHOLD:I = 0x46

.field public static final VIEW_STATE_ANIM_TO_FILMSTRIP:I = 0x2

.field public static final VIEW_STATE_ANIM_TO_FULLSCREEN:I = 0x3

.field public static final VIEW_STATE_FILMSTRIP:I = 0x1

.field public static final VIEW_STATE_FULLSCREEN:I


# instance fields
.field private final DEBUG:Z

.field private MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;",
            ">;"
        }
    .end annotation
.end field

.field private SetSelectionRecycler:Lcom/htc/sunnyCore/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;",
            ">;"
        }
    .end annotation
.end field

.field private isOnlineTagEditor:Z

.field private isUploadEditor:Z

.field private itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

.field private itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

.field private mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

.field mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

.field private mDisableGesture:Z

.field private mEnableFullscreen:Z

.field private mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

.field mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

.field private mFilmstripViewEntryIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

.field mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field private mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field private mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

.field private mGLViewHeight:I

.field private mGLViewWidth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

.field private mIsAfterEdit:Z

.field protected mListItemCount:I

.field protected mMediaList:Lcom/htc/sunnyCore/IMediaList;

.field protected mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

.field mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

.field protected mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

.field private mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

.field private mRenderThread:Lcom/htc/sunnyCore/RenderThread;

.field protected mRootNode:Lcom/htc/sunnyCore/SceneNode;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollState:I

.field private mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

.field private mViewState:I

.field private mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

.field private final mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

.field private mZoomGesture:Z

.field private recordOnDownTime:J

.field private supportMultitouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-direct {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->DEBUG:Z

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->recordOnDownTime:J

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "SetSelection"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewEntryIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->DEBUG:Z

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->recordOnDownTime:J

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "SetSelection"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$2;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewEntryIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setOnFullScreenViewAlignEndListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$OnFullScreenViewAlignEndListener;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setFilmstripViewIndicatorListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;)V

    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    iput-object p4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    return-void
.end method

.method private ObtainMediaItemRefresh(II)Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->reset(II)V

    goto :goto_0
.end method

.method private ObtainSetSelection(I)Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->reset(I)V

    goto :goto_0
.end method

.method private RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->free()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private RecycleSetSelection(Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;->free()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->SetSelectionRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onMediaItemRefreshIRT(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunnyCore/RenderThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullFilmView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullFilmView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleSetSelection(Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunnyCore/Preparator;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    return-object v0
.end method

.method private onMediaItemRefreshIRT(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v0, :cond_4

    :cond_1
    sparse-switch p2, :sswitch_data_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemRefreshIRT(I)V

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onMediaItemRefreshIRT(I)V

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/Preparator;->notifyDataItemChanged(II)V

    :cond_4
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->checkImageUpdate(II)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemRefreshSizeIRT(I)V

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onMediaItemRefreshSizeIRT(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemSetConsumeRightFlagIRT(I)V

    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/Preparator;->notifyDataItemChanged(II)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onMediaItemSetConsumeRightExpiredIRT(I)V

    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/Preparator;->notifyDataItemChanged(II)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private pointsToViewport(II)[I
    .locals 6

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    sub-int v0, p1, v2

    sub-int v1, v3, p2

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    return-object v4
.end method

.method private setMediaList(Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;I)V"
        }
    .end annotation

    const/4 v5, 0x0

    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][setMediaList] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v2, :cond_1

    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v2, v5, v3, v5}, Lcom/htc/sunnyCore/Preparator;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v2, :cond_2

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->rebindVisibleItems()V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setMediaDataListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;)V

    if-ltz p2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->bindMediaList(Lcom/htc/sunnyCore/IMediaList;)Z

    if-ltz p2, :cond_7

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    :cond_3
    :goto_1
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][setMediaList] - "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunnyCore/Preparator;->refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/Preparator;->unbind(I)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    goto :goto_1
.end method


# virtual methods
.method changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V

    return-void
.end method

.method changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;IZ)V
    .locals 4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    if-eq v1, p2, :cond_0

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScrollState:I

    invoke-interface {v1, p1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;->onScrollStateChanged(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Preparator;->setDecodeDirection(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[changeScrollStateOnUiThread] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkSetMediaListComplete_block()V
    .locals 4

    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public createResource()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/htc/sunnyCore/view/SView;->createResource()V

    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyEnvironment()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->loadResources(Landroid/content/Context;ILcom/htc/sunnyCore/SunnyContext;)V

    :cond_0
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyEnvironment()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;-><init>(ILcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->enableChildShadow(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripSceneListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSceneListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setIsOnlineTagEditor(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->attachToParent(Lcom/htc/sunnyCore/SceneNode;)V

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;->CENTER:Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$1;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->init(Lcom/htc/sunnyCore/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {v0, v6, v1, v6}, Lcom/htc/sunnyCore/Preparator;->bind(ILcom/htc/sunnyCore/IMediaList;I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setIsUploadEditor(Z)V

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushPreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    :cond_4
    new-instance v0, Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunnyCore/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->setFilmstripViewScene(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;)V

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->setFullscreenViewScene(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyEnvironment()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setupRenderingEnvironment(Lcom/htc/sunnyCore/RenderThread;I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    const/16 v3, 0x258

    const/16 v4, 0x190

    const/16 v5, 0x14

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setupScene(Lcom/htc/sunnyCore/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;III)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "FullFilmView"

    const-string v1, "FSV setupScene NG"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_6

    move v0, v6

    :goto_1
    invoke-virtual {p0, v0, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    goto :goto_0

    :cond_6
    move v0, v7

    goto :goto_1
.end method

.method public disableGesture()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    return-void
.end method

.method protected doItemClickOnUiThread(Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunnyCore/ViewItem;I)V
    .locals 4

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    invoke-interface {v1, p1, p3}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;->onItemClick(Lcom/htc/sunnyCore/view/SView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[doItemClickOnUiThread] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public freeResource()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->unbindMediaList()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearScene(Lcom/htc/sunnyCore/SceneNode;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->clearRenderingEnvironment()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->removePreparationIRT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Preparator;->unbind(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Preparator;->deInit()V

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachFromParent()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->releaseResources()V

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "FilmstripPan"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "scrollFilmstripUsingDistance"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "scrollFilmstripUsingVelocity"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->deInit()V

    invoke-super {p0}, Lcom/htc/sunnyCore/view/SView;->freeResource()V

    return-void
.end method

.method fullScreenViewAnimateToFilmstripView(IFF)V
    .locals 4

    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->ANIM_FULL_TO_FILM_ENTER_VELOCITY:F

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float v0, v2, v3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "child_index"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "child_offset"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "last_pan_velocity"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    goto :goto_0
.end method

.method public getCurrentItemInfoIHT()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;
    .locals 2

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->getSelectedIndex()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSunnyEnvironment()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyEnvironment()I

    move-result v0

    return v0
.end method

.method public getViewState()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$9;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$9;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->hideDRMIndicator()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    goto :goto_0
.end method

.method public hideFullFilmView()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$6;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$6;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isFullScreen()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFullScreenAndZoomed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfoIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->zoomFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyMediaDataChange()V
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][notifyMediaDataChange] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    if-eqz v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-virtual {p0, v2, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V

    const-string v2, "FullFilmView"

    const-string v3, "[HTCAlbum][FullFilmView][notifyMediaDataChange] - "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method

.method public notifyMediaDataChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mChangeListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    invoke-static {p1, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->obtain(ILcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;)Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    :cond_0
    return-void
.end method

.method public onDRMPressed(Z)V
    .locals 3

    move v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$10;

    invoke-direct {v2, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$10;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDoubleTap(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v4, "EVENT_BLOCKER"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v4, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransition()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    :cond_3
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->pointsToViewport(II)[I

    move-result-object v0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    aget v2, v0, v2

    aget v4, v0, v1

    invoke-virtual {v3, v2, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestDown(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->recordOnDownTime:J

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v3, "CancelFlimstripViewlFlinging"

    invoke-virtual {v2, p0, v3}, Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v3, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;

    const-string v4, "CancelFlimstripViewlFlinging"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    goto :goto_0
.end method

.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureExpired(I)V

    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v1, :cond_2

    const-string v1, "FullFilmView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFailed] set image corrupted, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", filePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fileCorrupted()V

    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureReady(I)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->getMediaQuality()I

    move-result v1

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setIsCorrupt(Z)V

    goto :goto_1
.end method

.method public onFilmstripViewEntryIndicatorHidden()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewEntryIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewEntryIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;->onFilmstripViewEntryIndicatorHidden()V

    :cond_0
    return-void
.end method

.method public onFilmstripViewEntryIndicatorShown()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewEntryIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewEntryIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;->onFilmstripViewEntryIndicatorShown()V

    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    neg-float v1, p3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Preparator;->setDecodeDirection(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "EVENT_BLOCKER"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FullScreenViewAnimateToFilmstripViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isShowPressed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchDown(I)V

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onFling(F)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onFullScreenViewAlignEnd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    return-void
.end method

.method public onFullScreenViewScrollBeginIRT()V
    .locals 0

    return-void
.end method

.method public onFullScreenViewScrollEndIRT()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Preparator;->setDecodeDirection(I)V

    :cond_0
    return-void
.end method

.method public onFullScreenViewScrollIRT(F)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Preparator;->setDecodeDirection(I)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v4, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :goto_1
    :sswitch_0
    move v3, v2

    goto :goto_0

    :sswitch_1
    add-int/lit8 v4, v0, -0x1

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->KeyUpMotion(I)V

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    add-int/lit8 v4, v0, 0x1

    if-ge v4, v1, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->KeyUpMotion(I)V

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayout(ZFFFII)V
    .locals 5

    const/high16 v0, 0x3f80

    const/4 v2, 0x1

    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewWidth:I

    iput p6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGLViewHeight:I

    if-lt p5, v2, :cond_0

    if-ge p6, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/htc/sunnyCore/view/SView;->onLayout(ZFFFII)V

    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_2

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->setMediaListIRT_Workaround()V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, p5, p6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onLayout(II)V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    :cond_3
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p5, p6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onLayout(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onMediaItemRefreshIHT(II)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_1

    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->ObtainMediaItemRefresh(II)Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onThumbnailTextureReady(I)V

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1, p2}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->setIsCorrupt(Z)V

    :cond_0
    return-void
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SView;->onRenderOrderChanged(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Preparator;->resumePreparator()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Preparator;->pausePreparator()V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScale(Landroid/view/ScaleGestureDetector;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    :cond_0
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v7, "EVENT_BLOCKER"

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v7, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v7, "CancelFlimstripViewlFlinging"

    invoke-virtual {v6, p0, v7}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v6, p1, p2, p3, p4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getCurrentItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isShowPressed()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x2

    invoke-virtual {p0, p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->recordOnDownTime:J

    sub-long v2, v0, v6

    const-wide/16 v6, 0x46

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v6

    sget-object v7, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchDown(I)V

    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchMove(I)V

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v6

    sget-object v7, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Preparator;->setDecodeDirection(I)V

    goto/16 :goto_0
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "EVENT_BLOCKER"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onUp(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "CancelFlimstripViewlFlinging"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchUp(I)V

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator;->doTransition(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    goto :goto_0
.end method

.method public onSetCurrentIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/htc/sunnyCore/Preparator;->setVisibleRange(III)V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "EVENT_BLOCKER"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v1, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isZoomed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onShowPress(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    if-nez v1, :cond_0

    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapConfirmed]mOnItemClickListener is null - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->itemClickInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    iput-object p1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    invoke-interface {v1, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;->onItemClick(Lcom/htc/sunnyCore/view/SView;I)V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v3, "EVENT_BLOCKER"

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;

    const-string v3, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->isInTransitionOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][onSingleTapUp]In transition of filmstrip to full screen - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onSingleTapUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestUp(Z)V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getClickedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getClickedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v2

    invoke-virtual {p0, p0, v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->doItemClickOnUiThread(Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunnyCore/ViewItem;I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestUp(Z)V

    goto :goto_0
.end method

.method public onThumbnailTextureExpired(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureExpired(I)V

    :cond_0
    return-void
.end method

.method public onThumbnailTextureReady(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v1, p1, v7}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, p1, v5}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, p1, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunnyCore/Texture;)V

    :goto_1
    iget-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v5, :cond_3

    if-eqz v3, :cond_6

    sget-boolean v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->isZoomed()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setGlobalBackgroundResource(I)V

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iput-boolean v7, v5, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, p1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v5, p1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p1, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setGlobalBackgroundResource(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v5, p1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->notifiedItemTextureReady(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mDisableGesture:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->supportMultitouch:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    const/4 v2, 0x1

    return v2

    :pswitch_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onScrollEnd(Landroid/view/MotionEvent;)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    invoke-interface {v2, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;->onItemUp(Lcom/htc/sunnyCore/view/SView;I)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mZoomGesture:Z

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    invoke-interface {v2, p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;->onItemDown(Lcom/htc/sunnyCore/view/SView;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;ILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V
    .locals 10

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p0

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;

    const-string v3, "PlayAnimationIn"

    move-object v1, p0

    move-object v2, p0

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView$5;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunnyCore/view/SView;ILcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;)V

    invoke-virtual {v9, v0}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    goto :goto_0
.end method

.method public purgeTextureMapsForMemory(Z)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][purgeTextureMapsForMemory] RenderThread is null or not ready"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;

    const-string v2, "purgeTextureMapsForMemory"

    invoke-direct {v1, p0, p0, v2, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$3;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullFilmView][purgeTextureMapsForMemory] mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderThread pushEventIHT NG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumePreparator(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Preparator;->resumePreparator()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Preparator;->pausePreparator()V

    goto :goto_0
.end method

.method public setExtremeQualityItemIndex(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setExtremeQualityItemIndex(I)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFilmstripViewEntryIndicatorListener(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripViewEntryIndicatorListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$FilmstripViewEntryIndicatorListener;

    return-void
.end method

.method public setFullscreenListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    return-void
.end method

.method public setIsAfterEdit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mIsAfterEdit:Z

    return-void
.end method

.method public setIsOnlineTagEditor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isOnlineTagEditor:Z

    return-void
.end method

.method public setIsUploadEditor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    return-void
.end method

.method public setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V

    return-void
.end method

.method public setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;I)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mWorkaround:Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Workaround;->set(Lcom/htc/sunnyCore/IMediaList;I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaListIHT_block(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT_block(Lcom/htc/sunnyCore/IMediaList;I)V

    return-void
.end method

.method public setMediaListIHT_block(Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->checkSetMediaListComplete_block()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

    return-void
.end method

.method public setOnItemTouchedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnItemTouchedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mOnScrollListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->onFullScreenViewAlignEnd()V

    return-void
.end method

.method public setPaintLayerBMPIHT(ILandroid/graphics/Bitmap;FFFFILcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    iput p1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->index:I

    iput-object p2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    iput p3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originX:F

    iput p4, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originY:F

    iput p5, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeX:F

    iput p6, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeY:F

    iput p7, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->rotate:I

    iput-object p8, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setPaintLayerBMPIHT(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)Z

    goto :goto_0
.end method

.method public setPaintLayerTransparencyIHT(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setPaintLayerTransparencyIHT(II)Z

    goto :goto_0
.end method

.method public setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mImagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setImagePanAndZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    return-void
.end method

.method public setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/RenderThread;->pushPreparationIHT(Lcom/htc/sunnyCore/RenderThreadPreparation;)Z

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->setIsUploadEditor(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSelection NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->ObtainSetSelection(I)Lcom/htc/sunny2/fullfilmview/FullFilmView$SetSelection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSelection NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSideBySideItemIndex(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    if-nez v1, :cond_0

    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex]mThumbPreparator is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    instance-of v1, v1, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v1, :cond_1

    const-string v0, "FullFilmView"

    const-string v1, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex]mThumbPreparator.setSideBySideItemIndex..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setSideBySideItemIndex(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][HtcFullFilmView3D][setSideBySideItemIndex] Unsupported thumbpreparator "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewItem(Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenViewItem:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;

    return-void
.end method

.method public setViewStateChangeListener(Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    return-void
.end method

.method public showDRMIndicator(Z)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$8;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$8;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Z)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->showDRMIndicator(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunnyCore/RenderThread;->forceRenderOnce:Z

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    goto :goto_0
.end method

.method public showFullFilmView()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$7;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method switchViewState(IZ)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mEnableFullscreen:Z

    if-eqz v0, :cond_4

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setVisibility(Z)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewStateChangeListener:Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/fullfilmview/IViewStateChangeListener;->onViewStateChange(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mViewState:I

    if-ne v3, v1, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setVisibility(Z)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public unzoomCenter()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FullFilmView"

    const-string v1, "RenderThread is null or not ready"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;

    const-string v2, "unzoomCenter"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FullFilmView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unzoomCenter] mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", renderThread pushEventIHT NG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
