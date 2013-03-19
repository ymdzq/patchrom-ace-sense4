.class public Lcom/htc/widget/HtcGridView;
.super Lcom/htc/widget/HtcAbsListView;
.source "HtcGridView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcGridView$AdapterCheckListener;,
        Lcom/htc/widget/HtcGridView$CheckForItemReleased;,
        Lcom/htc/widget/HtcGridView$CheckForPressAnimation;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field private static final CHECK_PRESS_ANIMATION_DELAY:J = 0x64L

.field private static final HTC_GRID_VIEW_ANITYPE_ADD:Ljava/lang/String; = "GRIDVIEW_ADD"

.field private static final HTC_GRID_VIEW_ANITYPE_BOUNCING:Ljava/lang/String; = "GRIDVIEW_BOUNCING"

.field private static final HTC_GRID_VIEW_ANITYPE_DELETE:Ljava/lang/String; = "GRIDVIEW_DELETE"

.field private static final HTC_GRID_VIEW_ANITYPE_INTRO:Ljava/lang/String; = "GRIDVIEW_INTRO"

.field private static final HTC_GRID_VIEW_ANITYPE_PRESS:Ljava/lang/String; = "GRIDVIEW_PRESS"

.field private static final HTC_GRID_VIEW_ANITYPE_RELEASE:Ljava/lang/String; = "GRIDVIEW_RELEASE"

.field private static final MAX_DIFF:I = 0x24

.field private static final NONSENSITIVE_FACTOR:I = 0xa

.field public static final NO_STRETCH:I = 0x0

.field private static final RELEASE_ANIMATION_DURATION:I = 0x3c

.field private static final STATE_DRAGGING:I = 0x3

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private DownIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

.field private mAddAnimateViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAnimationEnable:Z

.field private mAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationInvertFlag:Z

.field private mAppearAnimateViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBreakRows:I

.field private mBreakRows2:I

.field mCheckForItemReleased:Lcom/htc/widget/HtcGridView$CheckForItemReleased;

.field private mColumnWidth:I

.field private mCurrent:F

.field private mDelOriViewLeftList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletePosInCurrentScreen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteflag:Z

.field private mDisappearView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstAddedPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mHtcGridViewAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mHtcGridViewBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mHtcGridViewDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mHtcGridViewIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mHtcGridViewPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mHtcGridViewReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mInBouncing:Z

.field private mIntroAnimateViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIntroAnimationEnabled:Z

.field private mItemCheck:Z

.field private mItemClickDelayed:Z

.field private mNeededToCancel:Z

.field private mNowFirstPosition:I

.field private mNowViewLeftList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNowViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumColumns:I

.field private mOriBelowLeftCount:I

.field private mOriCurDeleteCount:I

.field private mOriCurLeftCount:I

.field private mOriFirstPosition:I

.field private mOriLastPage:Z

.field private mOriUpperDeleteCount:I

.field private mPendingCheckForPressAnimation:Lcom/htc/widget/HtcGridView$CheckForPressAnimation;

.field private mPre:F

.field private mPressAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedView:Landroid/view/View;

.field private mPressedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mResetToLastPos:Z

.field mScrollToListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

.field private mStart:F

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchViewPosition:I

.field private mVerticalSpacing:I

.field pvhBiggerA:Landroid/animation/PropertyValuesHolder;

.field pvhPressSmallerX:Landroid/animation/PropertyValuesHolder;

.field pvhPressSmallerY:Landroid/animation/PropertyValuesHolder;

.field pvhTabletBiggerX:Landroid/animation/PropertyValuesHolder;

.field pvhTabletBiggerY:Landroid/animation/PropertyValuesHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    const/4 v6, 0x2

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mGravity:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mTempRect:Landroid/graphics/Rect;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimationEnabled:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhBiggerA:Landroid/animation/PropertyValuesHolder;

    const-string v6, "scaleX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhTabletBiggerX:Landroid/animation/PropertyValuesHolder;

    const-string v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_2

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhTabletBiggerY:Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mAddAnimationEnable:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mFirstAddedPos:I

    new-instance v6, Lcom/htc/widget/HtcGridView$1;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcGridView$1;-><init>(Lcom/htc/widget/HtcGridView;)V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mScrollToListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mDeleteflag:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mNowFirstPosition:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mItemCheck:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->DownIndex:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mNeededToCancel:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mTouchViewPosition:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mPressedViews:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mPressAnimators:Ljava/util/Map;

    const-string v6, "scaleX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_3

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerX:Landroid/animation/PropertyValuesHolder;

    const-string v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_4

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerY:Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mPressedView:Landroid/view/View;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mItemClickDelayed:Z

    new-instance v6, Landroid/view/GestureDetector;

    invoke-direct {v6, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    const v6, 0x106000d

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setSelector(I)V

    new-instance v6, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;-><init>(Lcom/htc/widget/HtcGridView;)V

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcGridView$CheckForPressAnimation;

    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->setHorizontalSpacing(I)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->setVerticalSpacing(I)V

    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->setStretchMode(I)V

    :cond_0
    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->setColumnWidth(I)V

    :cond_1
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->setNumColumns(I)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->setGravity(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mScrollToListener:Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setScrollToCorrectPosListener(Lcom/htc/widget/HtcAbsListView$ScrollToCorrectPosListener;)V

    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_INTRO"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_ADD"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_DELETE"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_BOUNCING"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_PRESS"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    const/4 v6, 0x1

    const/16 v7, 0x5dd

    const-string v8, "GRIDVIEW_RELEASE"

    invoke-static {v6, p0, v7, v8}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method private StartAddAnimation()V
    .locals 14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "AddAnimation"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAddAnimateViewList.size() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "AddAnimation"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAppearAnimateViewList.size() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setX(F)V

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setY(F)V

    const-string v11, "Y"

    const/4 v10, 0x2

    new-array v12, v10, [F

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v13

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v11, "X"

    const/4 v10, 0x2

    new-array v12, v10, [F

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v13

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    aput v10, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x3f80

    invoke-direct {v10, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v8, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const-string v10, "alpha"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_1

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string v10, "scaleX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_2

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_1
    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v10, Lcom/htc/widget/HtcGridView$2;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcGridView$2;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private StartDisappearAnimation()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x2

    iput-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    sub-int/2addr v8, v10

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v8, "scaleX"

    new-array v9, v11, [F

    fill-array-data v9, :array_0

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v8, "scaleY"

    new-array v9, v11, [F

    fill-array-data v9, :array_1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string v8, "alpha"

    new-array v9, v11, [F

    fill-array-data v9, :array_2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    aput-object v5, v8, v12

    aput-object v3, v8, v11

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v8, 0x96

    invoke-virtual {v2, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/htc/widget/HtcGridView$3;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcGridView$3;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    :array_2
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private StartRearrangeAnimation()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->setDelViewLocation()V

    iput-boolean v11, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    iget-boolean v7, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setY(F)V

    const-string v8, "Y"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v8, "X"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    :goto_1
    new-array v7, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v7, v12

    aput-object v3, v7, v11

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f80

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x96

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit8 v7, v1, 0x1e

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setY(F)V

    const-string v8, "Y"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v8, "X"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    goto/16 :goto_1

    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v7, Lcom/htc/widget/HtcGridView$5;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcGridView$5;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstAddedPos:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDisappearView:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/widget/HtcGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mDeleteflag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewIntroMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/widget/HtcGridView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    return p1
.end method

.method static synthetic access$1802(Lcom/htc/widget/HtcGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/htc/widget/HtcGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewAddMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/widget/HtcGridView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    return p1
.end method

.method static synthetic access$2102(Lcom/htc/widget/HtcGridView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    return p1
.end method

.method static synthetic access$2202(Lcom/htc/widget/HtcGridView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mPressedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/widget/HtcGridView;Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcGridView;->get2DPressAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/widget/HtcGridView;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mPressAnimators:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/widget/HtcGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/widget/HtcGridView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mHtcGridViewBouncingMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3001(Lcom/htc/widget/HtcGridView;Landroid/view/View;IJ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/widget/HtcGridView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcGridView;->setAlphaOfTheChild(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    :cond_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    :cond_4
    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cancelBouncing()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v6, -0x3cb8

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mPre:F

    iput v6, p0, Lcom/htc/widget/HtcGridView;->mStart:F

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    if-eqz v6, :cond_1

    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    :cond_1
    const-wide/16 v6, 0x82

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/htc/widget/HtcGridView$9;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcGridView$9;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v6, v9

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v3, v6, v9

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private cancelPressAnimation()V
    .locals 5

    const/high16 v4, 0x3f80

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcGridView$CheckForPressAnimation;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Lcom/htc/widget/HtcGridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->layoutChildren()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_25

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_5

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v1, v3

    :goto_6
    goto :goto_1

    :cond_d
    move v1, v2

    goto :goto_6

    :cond_e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_7

    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->keyPressed()V

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_5
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_8

    :cond_14
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v1, v2

    goto :goto_9

    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_a

    :cond_19
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v1, v2

    goto :goto_b

    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v1, v2

    goto :goto_c

    :cond_1e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_20
    move v1, v2

    goto :goto_d

    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_22
    move v1, v2

    goto :goto_e

    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_f

    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v2, v3

    goto/16 :goto_0

    :cond_26
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mBottom:I

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    sub-int v0, v1, v4

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v0, :cond_3

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mBottom:I

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    sub-int v7, v2, v6

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    if-lez v7, :cond_3

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    :cond_0
    iget v8, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8

    const/4 v7, 0x1

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mRequestedHorizontalSpacing:I

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mRequestedColumnWidth:I

    const/4 v0, 0x0

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    if-lez v1, :cond_2

    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    :goto_0
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    if-gtz v5, :cond_0

    iput v7, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    :cond_0
    packed-switch v4, :pswitch_data_0

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    if-gez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    packed-switch v4, :pswitch_data_1

    :goto_1
    return v0

    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    iput v2, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_1
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    iput v2, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_2
    iput v1, p0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_3
    iput v1, p0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mBottom:I

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mTop:I

    sub-int v0, v3, v4

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/2addr p1, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    const/4 v6, -0x1

    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    rem-int v12, v9, v4

    sub-int v7, v9, v12

    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/htc/widget/HtcGridView;->getTopSelectionPixel(III)I

    move-result v10

    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/htc/widget/HtcGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    iput v7, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    invoke-direct {p0, v5, v10, v1}, Lcom/htc/widget/HtcGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    invoke-direct {p0, v5, v10, v1}, Lcom/htc/widget/HtcGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    iget-boolean v12, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    :goto_2
    return-object v8

    :cond_0
    iget v12, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    iget v12, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_0

    :cond_1
    move v12, v7

    goto :goto_1

    :cond_2
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->reconcileSelectedPosition()I

    move-result v10

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    iget v12, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    const/4 v7, -0x1

    iget-boolean v13, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    rem-int v13, v10, v4

    sub-int v8, v10, v13

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/htc/widget/HtcGridView;->getTopSelectionPixel(III)I

    move-result v11

    iget-boolean v13, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    iput v8, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    iget-boolean v13, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcGridView;->pinToBottom(I)V

    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    :goto_2
    return-object v9

    :cond_0
    iget v13, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    iget v13, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_0

    :cond_1
    move v13, v8

    goto :goto_1

    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/htc/widget/HtcGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcGridView;->pinToTop(I)V

    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12

    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    const/4 v4, -0x1

    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    rem-int v10, p1, v6

    sub-int v5, p1, v10

    :goto_0
    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    if-nez v7, :cond_3

    const/4 v8, 0x0

    :cond_0
    :goto_2
    return-object v8

    :cond_1
    iget v10, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_2
    move v10, v5

    goto :goto_1

    :cond_3
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-direct {p0, v6, v9, v2}, Lcom/htc/widget/HtcGridView;->correctTooHigh(III)V

    :cond_4
    :goto_3
    if-nez v8, :cond_0

    if-eqz v0, :cond_6

    move-object v8, v0

    goto :goto_2

    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-direct {p0, v6, v9, v2}, Lcom/htc/widget/HtcGridView;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    :cond_0
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    invoke-direct {p0, p1, p2, v5}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    :cond_3
    return-object v1
.end method

.method private get2DPressAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 4

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerX:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->pvhPressSmallerY:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/htc/widget/HtcGridView$7;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcGridView$7;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private get2DReleaseAnimation(Landroid/view/View;ZI)Landroid/animation/ObjectAnimator;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    :goto_0
    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz p2, :cond_1

    const-wide/16 v3, 0x64

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/htc/widget/HtcGridView$6;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcGridView$6;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    :cond_0
    const-string v3, "scaleX"

    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v3, "scaleY"

    new-array v4, v6, [F

    fill-array-data v4, :array_3

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0xa0

    goto :goto_1

    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3

    move v0, p1

    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1

    move v0, p1

    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    iget-boolean v6, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    sparse-switch p2, :sswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :sswitch_0
    if-ne p1, v3, :cond_2

    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    goto :goto_1

    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10

    iget-boolean v0, p0, Lcom/htc/widget/HtcGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    :goto_0
    return-object v9

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15

    iget v8, p0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v10

    :goto_0
    add-int v4, v2, v0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_0
    :goto_1
    const/4 v14, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->shouldShowSelector()Z

    move-result v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->touchModeDrawsInPressedState()Z

    move-result v11

    iget v13, p0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    const/4 v7, 0x0

    move/from16 v1, p1

    :goto_2
    if-ge v1, v12, :cond_8

    if-ne v1, v13, :cond_6

    const/4 v5, 0x1

    :goto_3
    if-eqz p3, :cond_7

    const/4 v6, -0x1

    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/HtcGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    add-int/2addr v4, v8

    add-int/lit8 v0, v12, -0x1

    if-ge v1, v0, :cond_1

    add-int/2addr v4, v10

    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    :cond_2
    move-object v14, v7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v12, p1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v0, v12, p1

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    sub-int v2, v12, p1

    sub-int/2addr v0, v2

    add-int v2, v8, v10

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    sub-int v6, v1, p1

    goto :goto_4

    :cond_8
    iput-object v7, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    if-eqz v14, :cond_9

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    rem-int v19, v16, v7

    sub-int v14, v16, v19

    :goto_0
    sub-int v12, v14, v9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/htc/widget/HtcGridView;->getTopSelectionPixel(III)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/htc/widget/HtcGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/htc/widget/HtcGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    :goto_4
    return-object v15

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    :cond_2
    move/from16 v19, v14

    goto/16 :goto_2

    :cond_3
    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/htc/widget/HtcGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    :cond_5
    move/from16 v19, v14

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/htc/widget/HtcGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcGridView;->mReferenceView:Landroid/view/View;

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    :cond_8
    move/from16 v19, v14

    goto :goto_8

    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v0, p1, v1

    if-gez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private setAlphaOfTheChild(I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    invoke-interface {v2, p1}, Lcom/htc/widget/HtcGridView$AdapterCheckListener;->IsChecked(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    const v2, 0x3ecccccd

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f80

    goto :goto_1
.end method

.method private setDelViewLocation()V
    .locals 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v11

    iput v11, p0, Lcom/htc/widget/HtcGridView;->mNowFirstPosition:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    iget v12, p0, Lcom/htc/widget/HtcGridView;->mNowFirstPosition:I

    sub-int v7, v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLastVisiblePosition()I

    move-result v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_1

    move v1, v9

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v11

    if-nez v11, :cond_2

    move v0, v9

    :goto_1
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_3

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-nez v11, :cond_3

    if-nez v1, :cond_3

    const-string v9, "RearrangeAnimation"

    const-string v10, "case 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "RearrangeAnimation"

    const-string v10, "do nothing with mDelOriViewTopList and mDelOriViewLeftList "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v5, v9, v10

    const-string v9, "RearrangeAnimation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mNowViewList.size()-LastTop.size()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v9, v10, :cond_23

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_23

    const-string v9, "RearrangeAnimation"

    const-string v10, "add from buttom"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    move v1, v10

    goto :goto_0

    :cond_2
    move v0, v10

    goto :goto_1

    :cond_3
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_5

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_5

    if-nez v1, :cond_5

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    if-lt v9, v11, :cond_4

    const-string v9, "RearrangeAnimation"

    const-string v11, "case 2"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 3"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_5
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-ge v6, v9, :cond_0

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_8

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-nez v11, :cond_8

    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    const-string v11, "RearrangeAnimation"

    const-string v12, "case 4"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "RearrangeAnimation"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mOriBelowLeftCount ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_6
    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v11, :cond_6

    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int v11, v2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v3, :cond_7

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v12

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    :cond_8
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_c

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_c

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-eqz v11, :cond_c

    if-eqz v1, :cond_c

    if-nez v0, :cond_c

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    iget v12, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    add-int/2addr v11, v12

    if-lt v9, v11, :cond_a

    const-string v9, "RearrangeAnimation"

    const-string v11, "case 5"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_8
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v9, :cond_9

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_9
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_a
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 6"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_a
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v9, :cond_b

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    :goto_b
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b

    :cond_c
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_11

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_11

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-eqz v11, :cond_11

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    if-lt v9, v11, :cond_e

    const-string v9, "RearrangeAnimation"

    const-string v11, "case 7"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_c
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v9, :cond_d

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_d
    const/4 v4, 0x0

    :goto_d
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_d

    :cond_e
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 8"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_e
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-ge v6, v9, :cond_f

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_f
    const/4 v6, 0x0

    :goto_f
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v9, :cond_10

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_10
    const/4 v4, 0x0

    :goto_10
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_10

    :cond_11
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_16

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_16

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-nez v11, :cond_16

    if-eqz v1, :cond_16

    if-nez v0, :cond_16

    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    if-lt v9, v11, :cond_13

    const-string v9, "RearrangeAnimation"

    const-string v11, "case 9"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v2, :cond_12

    :goto_11
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v9, v2, :cond_0

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_11

    :cond_12
    const-string v9, "RearrangeAnimation"

    const-string v10, "case 9 unhandle part"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_13
    const-string v9, "RearrangeAnimation"

    const-string v11, "case 10"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_12
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-ge v6, v9, :cond_14

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_14
    const/4 v6, 0x0

    :goto_13
    iget v9, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    if-ge v6, v9, :cond_15

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getBottom()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLeft()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_15
    const/4 v4, 0x0

    :goto_14
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_16
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-nez v11, :cond_17

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_17

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-nez v11, :cond_17

    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    const-string v9, "RearrangeAnimation"

    const-string v10, "case 11"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_17
    iget-boolean v11, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-eqz v11, :cond_1c

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-nez v11, :cond_1c

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v11, :cond_1c

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v12, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    if-lt v11, v12, :cond_19

    const-string v10, "RearrangeAnimation"

    const-string v11, "case 12"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_15
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_18

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_18
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    :cond_19
    const-string v11, "RearrangeAnimation"

    const-string v12, "case 13"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_16
    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-ge v6, v11, :cond_1a

    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v11, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1a
    const/4 v4, 0x0

    :goto_17
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_1b

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_1b
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    :cond_1c
    iget-boolean v10, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-eqz v10, :cond_1e

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-eqz v10, :cond_1e

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-nez v10, :cond_1e

    const-string v10, "RearrangeAnimation"

    const-string v11, "case 14"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_0

    const/4 v4, 0x0

    :goto_18
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_1d

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_1d
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    :cond_1e
    iget-boolean v10, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-eqz v10, :cond_21

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    if-eqz v10, :cond_21

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    if-eqz v10, :cond_21

    if-nez v0, :cond_21

    iget v10, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iget v11, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    if-lt v10, v11, :cond_1f

    const-string v10, "RearrangeAnimation"

    const-string v11, "case 15"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_19
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_20

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_1f
    const-string v10, "RearrangeAnimation"

    const-string v11, "case 16"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_1a
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_20

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_20
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    :cond_21
    iget-boolean v10, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    if-eqz v10, :cond_0

    if-eqz v0, :cond_0

    const-string v10, "RearrangeAnimation"

    const-string v11, "case 17"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_1b
    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v2, v10, :cond_22

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_22
    iput-boolean v9, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    goto/16 :goto_2

    :cond_23
    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    :goto_1c
    if-ltz v6, :cond_25

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const-string v9, "RearrangeAnimation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remove the same position i ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_24
    add-int/lit8 v6, v6, -0x1

    goto :goto_1c

    :cond_25
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 25

    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v14, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_8

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v16, v0

    if-lez v16, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/4 v13, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_a

    const/16 v19, 0x1

    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_0
    const/16 v17, 0x1

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    if-nez v18, :cond_1

    new-instance v18, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    if-eqz v20, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->requestFocus()Z

    :cond_2
    if-eqz v19, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v22, p1

    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_4
    :goto_6
    if-eqz v17, :cond_e

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-eqz p4, :cond_f

    move/from16 v10, p3

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getResolvedLayoutDirection()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_0

    :pswitch_0
    move/from16 v8, p5

    :goto_9
    if-eqz v17, :cond_10

    add-int v9, v8, v21

    add-int v6, v10, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_6
    return-void

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    :cond_f
    sub-int v10, p3, v12

    goto/16 :goto_8

    :pswitch_1
    move/from16 v8, p5

    goto/16 :goto_9

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    goto/16 :goto_9

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    goto/16 :goto_9

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public SetAdapterCheckListener(Lcom/htc/widget/HtcGridView$AdapterCheckListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    return-void
.end method

.method public StartIntroAnimation()V
    .locals 0

    return-void
.end method

.method arrowScroll(I)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x6

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    const/4 v2, 0x0

    iget-boolean v6, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    div-int v6, v4, v3

    mul-int v5, v6, v3

    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->awakenScrollBars()Z

    :cond_2
    return v2

    :cond_3
    iget v6, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    iget v6, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :sswitch_0
    if-lez v5, :cond_0

    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    iget v6, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    add-int v6, v4, v3

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    if-le v4, v5, :cond_0

    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    if-ge v4, v0, :cond_0

    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4

    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    mul-int/lit8 v2, v5, 0x64

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 10

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-ltz v7, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    div-int v5, v7, v1

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    div-int v2, v7, v1

    mul-int/lit8 v7, v5, 0x64

    mul-int/lit8 v8, v3, 0x64

    div-int/2addr v8, v0

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v2

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_0
    return v6
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/htc/widget/HtcGridView;->mAddAnimationEnable:Z

    if-eqz v4, :cond_5

    const-string v4, "AddAnimation"

    const-string v5, "start add amimation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/htc/widget/HtcGridView;->mAddAnimationEnable:Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v1

    if-ge v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-le v1, v0, :cond_2

    const-string v4, "AddAnimation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to mAddAnimateViewList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "AddAnimation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diff ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    sub-int v5, v1, v0

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    sub-int v5, v1, v0

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "AddAnimation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to mAppearAnimateViewList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->StartAddAnimation()V

    :cond_5
    iget-boolean v4, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimationEnabled:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isIntroAnimationEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "Animation"

    const-string v5, "mIntroAnimationEnabled = true , prepare introanimation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimationEnabled:Z

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->startIntroAnimation()V

    :cond_7
    iget-boolean v4, p0, Lcom/htc/widget/HtcGridView;->mDeleteflag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    iput-boolean v7, p0, Lcom/htc/widget/HtcGridView;->mDeleteflag:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcGridView;->mNowFirstPosition:I

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_8

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->StartRearrangeAnimation()V

    :cond_9
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method fillGap(Z)V
    .locals 9

    const/16 v8, 0x22

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    iget v6, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getListPaddingTop()I

    move-result v3

    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    :goto_0
    iget v7, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    add-int v4, v7, v0

    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/htc/widget/HtcGridView;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/htc/widget/HtcGridView;->correctTooHigh(III)V

    :goto_1
    return-void

    :cond_2
    move v5, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getListPaddingBottom()I

    move-result v2

    :cond_4
    if-lez v0, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    :goto_2
    iget v4, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    sub-int/2addr v4, v1

    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/htc/widget/HtcGridView;->correctTooLow(III)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method findMotionPosition(FF)I
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    const/4 v3, -0x1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v4

    add-int v3, v4, v2

    move v4, v3

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    :goto_1
    return v3

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->awakenScrollBars()Z

    :cond_1
    return v0

    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcGridView;->mBlockLayoutRequests:Z

    if-nez v3, :cond_0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mBlockLayoutRequests:Z

    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mBlockLayoutRequests:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v5

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    if-ltz v12, :cond_3

    if-ge v12, v5, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/widget/HtcGridView;->mDataChanged:Z

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->handleDataChanged()V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mBlockLayoutRequests:Z

    goto :goto_0

    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    if-ltz v12, :cond_4

    if-ge v12, v5, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v17, v0

    if-eqz v8, :cond_7

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v5, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->fillActiveViews(II)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->detachAllViewsFromParent()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_9
    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v18, :cond_18

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    :cond_a
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mDataChanged:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->updateScrollIndicators()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->checkSelectionChanged()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    :pswitch_3
    if-eqz v14, :cond_c

    :try_start_3
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Lcom/htc/widget/HtcGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/htc/widget/HtcGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    goto :goto_4

    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v19

    if-nez v3, :cond_d

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mBlockLayoutRequests:Z

    :cond_d
    throw v19

    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/htc/widget/HtcGridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mSyncPosition:I

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Lcom/htc/widget/HtcGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_4

    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_12

    :cond_11
    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/htc/widget/HtcGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_4

    :cond_12
    move/from16 v19, v13

    goto :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_14

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/htc/widget/HtcGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_16

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/htc/widget/HtcGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_4

    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_8

    :cond_17
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/htc/widget/HtcGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/HtcGridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    :cond_19
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    :cond_1
    :goto_0
    return p1

    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    if-eqz v1, :cond_1

    const-string v1, "Motion"

    const-string v2, "LAYER_TYPE_HARDWARE is enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mAdapterCheckListener:Lcom/htc/widget/HtcGridView$AdapterCheckListener;

    invoke-interface {v1, p1}, Lcom/htc/widget/HtcGridView$AdapterCheckListener;->IsChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_1
    return-object v0

    :cond_0
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mCheckForItemReleased:Lcom/htc/widget/HtcGridView$CheckForItemReleased;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mCheckForItemReleased:Lcom/htc/widget/HtcGridView$CheckForItemReleased;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget v7, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->mTempRect:Landroid/graphics/Rect;

    const v4, 0x7fffffff

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-direct {p0, v3, p2}, Lcom/htc/widget/HtcGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v6}, Lcom/htc/widget/HtcGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v6, p2}, Lcom/htc/widget/HtcGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    if-ge v2, v4, :cond_0

    move v4, v2

    move v1, v3

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_3

    iget v7, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcGridView;->setSelection(I)V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 23

    invoke-super/range {p0 .. p2}, Lcom/htc/widget/HtcAbsListView;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getVerticalScrollbarWidth()I

    move-result v20

    add-int v19, v19, v20

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/widget/HtcGridView;->determineColumns(I)Z

    move-result v11

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mItemCount:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    if-lez v10, :cond_2

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    if-nez v17, :cond_1

    new-instance v17, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/htc/widget/HtcGridView;->getChildMeasureSpec(III)I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/htc/widget/HtcGridView;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {v4, v9, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/htc/widget/HtcGridView;->combineMeasuredStates(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_2
    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getVerticalFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v13, v20, v21

    :cond_3
    const/high16 v20, -0x8000

    move/from16 v0, v20

    if-ne v12, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v10, :cond_5

    add-int v16, v16, v5

    add-int v20, v14, v15

    move/from16 v0, v20

    if-ge v0, v10, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    add-int v16, v16, v20

    :cond_4
    move/from16 v0, v16

    if-lt v0, v13, :cond_b

    move/from16 v16, v13

    :cond_5
    move/from16 v13, v16

    :cond_6
    const/high16 v20, -0x8000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mColumnWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mHorizontalSpacing:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v16, v20, v21

    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    if-eqz v11, :cond_8

    :cond_7
    const/high16 v20, 0x100

    or-int v19, v19, v20

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/htc/widget/HtcGridView;->setMeasuredDimension(II)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_1

    :cond_b
    add-int/2addr v14, v15

    goto/16 :goto_2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getCount()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->findMotionPosition(FF)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_2

    const/4 v15, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v24

    sub-int v24, v20, v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcGridView;->findMotionPosition(FF)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    :cond_1
    :goto_2
    return v13

    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->cancelPressAnimation()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->cancelBouncing()V

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/widget/HtcFastScroller;->getState()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcGridView$CheckForPressAnimation;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/htc/widget/HtcGridView;->releaseItem(Landroid/view/View;I)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->cancelBouncing()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isCLICKAnimationEnabled()Z

    move-result v24

    if-eqz v24, :cond_5

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/widget/HtcGridView;->mPressedView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcGridView$CheckForPressAnimation;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->setAnimatedView(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcGridView;->mPendingCheckForPressAnimation:Lcom/htc/widget/HtcGridView$CheckForPressAnimation;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isOverScrollAnimationEnabled()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getNumColumns()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mPre:F

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    move/from16 v14, v19

    :goto_3
    if-ge v14, v9, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    add-int v14, v14, v19

    goto :goto_3

    :cond_6
    sub-int v24, v9, v19

    add-int/lit8 v14, v24, -0x1

    :goto_4
    if-lez v14, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    sub-int v14, v14, v19

    goto :goto_4

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isCLICKAnimationEnabled()Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->cancelPressAnimation()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->isOverScrollAnimationEnabled()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mCurrent:F

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v12

    if-nez v12, :cond_8

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getPaddingTop()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const/4 v7, 0x1

    :cond_8
    if-nez v7, :cond_9

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_2

    :cond_9
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPre:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    const/high16 v25, 0x4120

    div-float v11, v24, v25

    :goto_5
    const/high16 v24, 0x4210

    cmpl-float v24, v11, v24

    if-lez v24, :cond_a

    const/high16 v11, 0x4210

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getNumColumns()I

    move-result v19

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v9, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_d

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcGridView;->mPre:F

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPre:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    const/high16 v25, 0x4120

    div-float v11, v24, v25

    goto :goto_5

    :cond_d
    move/from16 v0, v19

    if-lt v14, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    move/from16 v24, v0

    if-nez v24, :cond_f

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationY(F)V

    :cond_e
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    move/from16 v24, v0

    if-lez v24, :cond_10

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v11, v24

    div-int v25, v14, v19

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v10, v24, v25

    invoke-virtual {v8, v10}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_7

    :cond_10
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_e

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getLastVisiblePosition()I

    move-result v16

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    add-int/lit8 v24, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getHeight()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    const/4 v6, 0x1

    :cond_12
    if-nez v6, :cond_13

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_2

    :cond_13
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPre:F

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mCurrent:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    const/high16 v25, 0x4120

    div-float v11, v24, v25

    :goto_8
    const/high16 v24, 0x4210

    cmpl-float v24, v11, v24

    if-lez v24, :cond_14

    const/high16 v11, 0x4210

    :cond_14
    neg-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcGridView;->getNumColumns()I

    move-result v19

    rem-int v21, v9, v19

    sub-int v24, v9, v21

    add-int/lit8 v23, v24, -0x1

    if-nez v21, :cond_15

    sub-int v23, v23, v19

    :cond_15
    add-int/lit8 v14, v9, -0x1

    :goto_9
    if-ltz v14, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_b

    move/from16 v0, v23

    if-gt v14, v0, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    move/from16 v24, v0

    if-nez v24, :cond_18

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationY(F)V

    :cond_16
    :goto_a
    add-int/lit8 v14, v14, -0x1

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mPre:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    const/high16 v25, 0x4120

    div-float v11, v24, v25

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    move/from16 v24, v0

    if-lez v24, :cond_19

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mBreakRows2:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v11, v24

    sub-int v25, v23, v14

    div-int v25, v25, v19

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v10, v24, v25

    invoke-virtual {v8, v10}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_a

    :cond_19
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcGridView;->mStart:F

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_16

    invoke-virtual {v8, v11}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mCheckForItemReleased:Lcom/htc/widget/HtcGridView$CheckForItemReleased;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mCheckForItemReleased:Lcom/htc/widget/HtcGridView$CheckForItemReleased;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isCLICKAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->cancelPressAnimation()V

    :cond_1
    return-void
.end method

.method pageScroll(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->awakenScrollBars()Z

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3

    const/high16 v2, 0x3f80

    iget-boolean v1, p0, Lcom/htc/widget/HtcGridView;->mItemClickDelayed:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mCheckForItemReleased:Lcom/htc/widget/HtcGridView$CheckForItemReleased;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/widget/HtcGridView$CheckForItemReleased;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/HtcGridView$CheckForItemReleased;-><init>(Lcom/htc/widget/HtcGridView;Lcom/htc/widget/HtcGridView$1;)V

    iput-object v1, p0, Lcom/htc/widget/HtcGridView;->mCheckForItemReleased:Lcom/htc/widget/HtcGridView$CheckForItemReleased;

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcGridView;->mCheckForItemReleased:Lcom/htc/widget/HtcGridView$CheckForItemReleased;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->start(Landroid/view/View;IJ)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/htc/widget/HtcGridView;->setAlphaOfTheChild(I)V

    goto :goto_0
.end method

.method protected releaseItem(Landroid/view/View;I)V
    .locals 7

    const/high16 v6, 0x3f80

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, p2}, Lcom/htc/widget/HtcGridView;->get2DReleaseAnimation(Landroid/view/View;ZI)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/htc/widget/HtcGridView$8;

    invoke-direct {v4, p0, v0}, Lcom/htc/widget/HtcGridView$8;-><init>(Lcom/htc/widget/HtcGridView;Landroid/animation/Animator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mPressedView:Landroid/view/View;

    if-ne v4, p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, p2}, Lcom/htc/widget/HtcGridView;->get2DReleaseAnimation(Landroid/view/View;ZI)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public scrollToFirstAddedPosition(I)V
    .locals 4

    const/16 v3, 0x12c

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollToAddedPositionListener:Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$scrollToAddedPositionListener;->onScrollEnd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->scrollToFirstAddedPosition(I)V

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mFirstAddedPos:I

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    if-gt p1, v0, :cond_3

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    div-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->setSelection(I)V

    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/widget/HtcGridView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcGridView;->mResetToLastPos:Z

    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mFirstPosition:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    div-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    mul-int/lit8 v0, v0, 0x5

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->setSelection(I)V

    :cond_5
    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/widget/HtcGridView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0
.end method

.method sequenceScroll(I)Z
    .locals 13

    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    iget-boolean v10, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    div-int v10, v5, v4

    mul-int v7, v10, v4

    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcGridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->invokeOnItemScrollListener()V

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->awakenScrollBars()Z

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_0

    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    iput v12, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    :pswitch_1
    if-lez v5, :cond_0

    iput v12, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcGridView;->setSelectionInt(I)V

    const/4 v3, 0x1

    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->resetList()V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcGridView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcGridView;->mOldSelectedRowId:J

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcGridView;->mOldItemCount:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    iput-boolean v4, p0, Lcom/htc/widget/HtcGridView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->checkFocus()V

    new-instance v1, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->checkSelectionChanged()V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->checkFocus()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setAddPositionsList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method setAddPositionList received null argument!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mAddAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/widget/HtcGridView;->mAppearAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isAddAnimationEnabled()Z

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAddAnimationListener:Lcom/htc/widget/HtcAbsListView$AddAnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAbsListView$AddAnimationListener;->onAnimationStart()V

    :cond_4
    iput-object p1, p0, Lcom/htc/widget/HtcGridView;->mAddList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/htc/widget/HtcGridView;->mAddAnimationEnable:Z

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setColumnWidth(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mRequestedColumnWidth:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Method setDelPositionList received null argument!!!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    iput-boolean v5, p0, Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z

    iput-boolean v5, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    iput v5, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isDelAnimationEnabled()Z

    move-result v3

    if-eq v3, v6, :cond_4

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    invoke-interface {v3}, Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;->onAnimationStart()V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    add-int v1, v3, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget v4, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_8

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_8

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_9

    iput-boolean v6, p0, Lcom/htc/widget/HtcGridView;->mOriLastPage:Z

    :cond_9
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    if-ge v3, v4, :cond_a

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_e

    iget v3, p0, Lcom/htc/widget/HtcGridView;->mOriFirstPosition:I

    add-int v1, v3, v0

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    :goto_5
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getLastVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I

    iget-object v3, p0, Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I

    invoke-direct {p0}, Lcom/htc/widget/HtcGridView;->StartDisappearAnimation()V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I

    goto :goto_5
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mGravity:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mRequestedHorizontalSpacing:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setItemClickDelayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcGridView;->mItemClickDelayed:Z

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mRequestedNumColumns:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridView;->setNextSelectedPositionInt(I)V

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayout()V

    return-void

    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7

    iget v4, p0, Lcom/htc/widget/HtcGridView;->mNextSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcGridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->layoutChildren()V

    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcGridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    :goto_0
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    :goto_1
    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v1, v0, v5

    iget v5, p0, Lcom/htc/widget/HtcGridView;->mNumColumns:I

    div-int v3, v2, v5

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->awakenScrollBars()Z

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcGridView;->mNextSelectedPosition:I

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mStretchMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/widget/HtcGridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method skipScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcGridView;->mInBouncing:Z

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public startIntroAnimation()V
    .locals 10

    const v9, 0x3e99999a

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->isIntroAnimationEnabled()Z

    move-result v5

    if-eq v5, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcGridView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HtcGridView;->mIntroAnimateViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleY(F)V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->pvhBiggerA:Landroid/animation/PropertyValuesHolder;

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/htc/widget/HtcGridView;->pvhTabletBiggerX:Landroid/animation/PropertyValuesHolder;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/htc/widget/HtcGridView;->pvhTabletBiggerY:Landroid/animation/PropertyValuesHolder;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    mul-int/lit8 v5, v2, 0x1e

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v5, Lcom/htc/widget/HtcGridView$4;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcGridView$4;-><init>(Lcom/htc/widget/HtcGridView;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
