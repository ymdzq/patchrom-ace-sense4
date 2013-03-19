.class Lcom/htc/fragment/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/FastScroller$1;,
        Lcom/htc/fragment/widget/FastScroller$RecycleBin;,
        Lcom/htc/fragment/widget/FastScroller$FlingRunnable;,
        Lcom/htc/fragment/widget/FastScroller$CheckForTap;,
        Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;,
        Lcom/htc/fragment/widget/FastScroller$ScrollFade;,
        Lcom/htc/fragment/widget/FastScroller$CountObserver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final SCROLL_DEBUG:Z = false

.field public static final STATE_ANIMATION:I = 0x5

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_ENTER:I = 0x1

.field public static final STATE_EXIT:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_VISIBLE:I = 0x2

.field private static final THUMB_INVALID_POSITION:I = -0x2


# instance fields
.field private currentPosition:I

.field private isBlockLayout:Z

.field private isScaleAnimation:Z

.field private isSkipAnimation:Z

.field private mAnimationDuration:I

.field private mChangedBounds:Z

.field private mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

.field mContentWidth:I

.field mContext:Landroid/content/Context;

.field mCountObserver:Lcom/htc/fragment/widget/FastScroller$CountObserver;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCurrentTab:I

.field private mEditorMode:Z

.field private mEnableEditorMode:Z

.field private mFirstAdd:Z

.field private mFirstVisibleOffset:I

.field private mFirstVisiblePosition:I

.field private mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

.field private mGallery:Lcom/htc/fragment/widget/AbsSpinner;

.field private mGalleryHeight:I

.field private mGalleryWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mItemCount:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mOffset:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPendingCheckForLongPress:Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

.field private mPreviousPos:I

.field final mRecycler:Lcom/htc/fragment/widget/FastScroller$RecycleBin;

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/fragment/widget/FastScroller$ScrollFade;

.field private mShouldStopFling:Z

.field private mState:I

.field private mThumbBottom:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbLeft:I

.field private mThumbPadding:Landroid/graphics/Rect;

.field private mThumbRight:I

.field private mThumbTop:I

.field private mThumbW:I

.field private mTouchSlopSquare:I

.field private mView:Landroid/view/View;

.field private mVisibleItem:I

.field private msgAcc:Lcom/htc/fragment/app/MessageAccelerator;

.field private previousPosition:I

.field ptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resetScreen:Z

.field private scaleInAnimation:Landroid/view/animation/ScaleAnimation;

.field private scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

.field private final skipThumbView:Z

.field private widgetSpace:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "ScrollTrack"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/FastScroller;->SCROLL_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/fragment/widget/AbsSpinner;)V
    .locals 5
    .parameter "context"
    .parameter "gallery"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbPadding:Landroid/graphics/Rect;

    .line 92
    iput v3, p0, Lcom/htc/fragment/widget/FastScroller;->mItemCount:I

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;

    .line 111
    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    .line 126
    iput v1, p0, Lcom/htc/fragment/widget/FastScroller;->mCurrentTab:I

    .line 127
    iput v1, p0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisiblePosition:I

    .line 128
    iput v1, p0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisibleOffset:I

    .line 139
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/fragment/widget/FastScroller;->mAnimationDuration:I

    .line 142
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/fragment/widget/FastScroller;->mPreviousPos:I

    .line 144
    new-instance v0, Lcom/htc/fragment/widget/FastScroller$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/FastScroller$RecycleBin;-><init>(Lcom/htc/fragment/widget/FastScroller;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mRecycler:Lcom/htc/fragment/widget/FastScroller$RecycleBin;

    .line 151
    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    .line 155
    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->msgAcc:Lcom/htc/fragment/app/MessageAccelerator;

    .line 159
    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    .line 298
    iput v3, p0, Lcom/htc/fragment/widget/FastScroller;->widgetSpace:I

    .line 300
    iput-boolean v1, p0, Lcom/htc/fragment/widget/FastScroller;->isSkipAnimation:Z

    .line 301
    iput-boolean v1, p0, Lcom/htc/fragment/widget/FastScroller;->isScaleAnimation:Z

    .line 304
    iput-boolean v4, p0, Lcom/htc/fragment/widget/FastScroller;->skipThumbView:Z

    .line 306
    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;

    .line 307
    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

    .line 422
    new-instance v0, Lcom/htc/fragment/widget/FastScroller$CountObserver;

    invoke-direct {v0, p0, v2}, Lcom/htc/fragment/widget/FastScroller$CountObserver;-><init>(Lcom/htc/fragment/widget/FastScroller;Lcom/htc/fragment/widget/FastScroller$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mCountObserver:Lcom/htc/fragment/widget/FastScroller$CountObserver;

    .line 1067
    iput v3, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    .line 1782
    iput-boolean v1, p0, Lcom/htc/fragment/widget/FastScroller;->resetScreen:Z

    .line 1835
    iput v3, p0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    .line 1836
    iput v3, p0, Lcom/htc/fragment/widget/FastScroller;->previousPosition:I

    .line 2554
    iput-boolean v1, p0, Lcom/htc/fragment/widget/FastScroller;->isBlockLayout:Z

    .line 163
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    .line 166
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller;->ensureAdapter()V

    .line 167
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/FastScroller;->init(Landroid/content/Context;)V

    .line 168
    iput-boolean v4, p0, Lcom/htc/fragment/widget/FastScroller;->mFirstAdd:Z

    .line 169
    iput-boolean v1, p0, Lcom/htc/fragment/widget/FastScroller;->mEditorMode:Z

    .line 171
    new-instance v0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;-><init>(Lcom/htc/fragment/widget/FastScroller;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    .line 174
    iput v3, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    .line 179
    new-instance v0, Lcom/htc/fragment/app/MessageAccelerator;

    invoke-direct {v0}, Lcom/htc/fragment/app/MessageAccelerator;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->msgAcc:Lcom/htc/fragment/app/MessageAccelerator;

    .line 180
    return-void
.end method

.method static synthetic access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/fragment/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->isSkipAnimation:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/fragment/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/fragment/widget/FastScroller;->isSkipAnimation:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->isScaleAnimation:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/fragment/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/fragment/widget/FastScroller;->isScaleAnimation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller;->scaleOutAnimation:Landroid/view/animation/ScaleAnimation;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/FastScroller$FlingRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/fragment/widget/FastScroller;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/fragment/widget/FastScroller;Landroid/view/animation/ScaleAnimation;)Landroid/view/animation/ScaleAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller;->scaleInAnimation:Landroid/view/animation/ScaleAnimation;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/fragment/widget/FastScroller;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/FastScroller;->endAnimation(IZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/BinAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/CarouselContentGallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/app/MessageAccelerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->msgAcc:Lcom/htc/fragment/app/MessageAccelerator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/fragment/widget/FastScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbBottom:I

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbRight:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mItemCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/fragment/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/fragment/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/fragment/widget/FastScroller;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/fragment/widget/FastScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/fragment/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    return v0
.end method

.method private cancel()V
    .locals 26

    .prologue
    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 979
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    add-int v20, v22, v23

    .line 980
    .local v20, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v3, v22, v23

    .line 981
    .local v3, aX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    move/from16 v18, v0

    .line 983
    .local v18, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v22, v0

    div-int/lit8 v23, v18, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 985
    .local v12, pos:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    .line 986
    .local v11, itemWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    .line 988
    .local v9, galleryWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v17

    .line 989
    .local v17, totalItemCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    .line 990
    .local v16, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v22, v0

    sub-int v22, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v6, v22, v23

    .line 992
    .local v6, dataArea:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_0

    .line 993
    add-int/lit8 v12, v17, -0x1

    .line 995
    :cond_0
    int-to-float v0, v12

    move/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v5, v22, v23

    .line 996
    .local v5, alignment:F
    int-to-float v0, v3

    move/from16 v22, v0

    sub-float v14, v5, v22

    .line 998
    .local v14, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    if-gez v22, :cond_1

    .line 999
    const/4 v14, 0x0

    .line 1000
    const/4 v5, 0x0

    .line 1001
    const/4 v12, -0x1

    .line 1004
    :cond_1
    mul-int v22, v17, v11

    sub-int v22, v22, v6

    if-lez v22, :cond_2

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    float-to-int v0, v14

    move/from16 v23, v0

    float-to-int v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 1057
    .end local v3           #aX:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v14           #scrollX:F
    .end local v18           #viewHeight:I
    .end local v20           #x:I
    :goto_0
    return-void

    .line 1008
    .restart local v3       #aX:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v14       #scrollX:F
    .restart local v18       #viewHeight:I
    .restart local v20       #x:I
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 1009
    .local v13, previous:I
    mul-int v22, v12, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v7, v22, v23

    .line 1011
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    sub-int v23, v7, v13

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_0

    .line 1018
    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v12           #pos:I
    .end local v13           #previous:I
    .end local v14           #scrollX:F
    .end local v16           #thumbArea:I
    .end local v17           #totalItemCount:I
    .end local v18           #viewHeight:I
    .end local v20           #x:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    add-int v21, v22, v23

    .line 1019
    .local v21, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v4, v22, v23

    .line 1020
    .local v4, aY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    move/from16 v19, v0

    .line 1022
    .local v19, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v22, v0

    div-int/lit8 v23, v19, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 1024
    .restart local v12       #pos:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    .line 1025
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    .line 1027
    .local v8, galleryHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v17

    .line 1028
    .restart local v17       #totalItemCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v22, v0

    sub-int v22, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    .line 1029
    .restart local v16       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v22, v0

    sub-int v22, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v6, v22, v23

    .line 1031
    .restart local v6       #dataArea:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_4

    .line 1032
    add-int/lit8 v12, v17, -0x1

    .line 1034
    :cond_4
    int-to-float v0, v12

    move/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    sub-int v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v5, v22, v23

    .line 1035
    .restart local v5       #alignment:F
    int-to-float v0, v4

    move/from16 v22, v0

    sub-float v15, v5, v22

    .line 1037
    .local v15, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    if-gez v22, :cond_5

    .line 1038
    const/4 v15, 0x0

    .line 1039
    const/4 v5, 0x0

    .line 1040
    const/4 v12, -0x1

    .line 1043
    :cond_5
    mul-int v22, v17, v10

    sub-int v22, v22, v6

    if-lez v22, :cond_6

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    float-to-int v0, v15

    move/from16 v23, v0

    float-to-int v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto/16 :goto_0

    .line 1047
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 1048
    .restart local v13       #previous:I
    mul-int v22, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    add-int v7, v22, v23

    .line 1050
    .restart local v7       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    sub-int v23, v7, v13

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto/16 :goto_0
.end method

.method private endAnimation(IZ)V
    .locals 7
    .parameter "pos"
    .parameter "closeWindow"

    .prologue
    .line 1809
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 1812
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    check-cast v4, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->getFragment()Lcom/htc/fragment/widget/CarouselFragment;

    move-result-object v1

    .line 1813
    .local v1, carousel:Lcom/htc/fragment/widget/CarouselFragment;
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->executeQueuedActions()V

    .line 1815
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 1816
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 1817
    .local v0, adapter:Landroid/widget/SpinnerAdapter;
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v4

    sub-int v2, p1, v4

    .line 1818
    .local v2, selectedIndex:I
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v4, v2}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1819
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1820
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v4, v3, p1, v5, v6}, Lcom/htc/fragment/widget/AbsSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1831
    .end local v0           #adapter:Landroid/widget/SpinnerAdapter;
    .end local v2           #selectedIndex:I
    .end local v3           #v:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1822
    .restart local v0       #adapter:Landroid/widget/SpinnerAdapter;
    .restart local v2       #selectedIndex:I
    .restart local v3       #v:Landroid/view/View;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endAnimation:: Bad gallery view is null at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " firstVisiblePos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureAdapter()V
    .locals 1

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-nez v0, :cond_0

    .line 2031
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 2033
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 389
    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller;->mContext:Landroid/content/Context;

    const-string v4, "common_subnav_selector_tab"

    const v5, 0x208019b

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 392
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/fragment/widget/FastScroller;->mScrollCompleted:Z

    .line 394
    new-instance v2, Lcom/htc/fragment/widget/FastScroller$ScrollFade;

    invoke-direct {v2, p0}, Lcom/htc/fragment/widget/FastScroller$ScrollFade;-><init>(Lcom/htc/fragment/widget/FastScroller;)V

    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mScrollFade:Lcom/htc/fragment/widget/FastScroller$ScrollFade;

    .line 396
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 398
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 399
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 400
    .local v1, touchSlop:I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/htc/fragment/widget/FastScroller;->mTouchSlopSquare:I

    .line 403
    sget-boolean v2, Lcom/htc/fragment/widget/FastScroller;->SCROLL_DEBUG:Z

    if-eqz v2, :cond_0

    .line 404
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    .line 405
    :cond_0
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 2

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1750
    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1759
    :cond_0
    return-void
.end method

.method private resetScreenView(Z)V
    .locals 8
    .parameter "forceReset"

    .prologue
    const v7, 0x2020061

    .line 1868
    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    iput v3, p0, Lcom/htc/fragment/widget/FastScroller;->previousPosition:I

    .line 1871
    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v3, v3, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_3

    .line 1872
    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    iget v5, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    .line 1876
    :goto_0
    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    iput v4, v3, Lcom/htc/fragment/widget/AbsSpinner;->mSelectedPosition:I

    .line 1879
    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->previousPosition:I

    if-ne v3, v4, :cond_0

    if-eqz p1, :cond_2

    .line 1880
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v1

    .line 1882
    .local v1, firstPosition:I
    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1883
    .local v0, currentChildView:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->previousPosition:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1886
    .local v2, previousChildView:Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " previous:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->previousPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->i(Ljava/lang/String;)V

    .line 1890
    if-eqz v2, :cond_1

    .line 1891
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fragment/widget/CarouselTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/CarouselTextView;->enableBrightScreen(Z)V

    .line 1894
    :cond_1
    if-eqz v0, :cond_2

    .line 1895
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fragment/widget/CarouselTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/CarouselTextView;->enableBrightScreen(Z)V

    .line 1897
    .end local v0           #currentChildView:Landroid/view/View;
    .end local v1           #firstPosition:I
    .end local v2           #previousChildView:Landroid/view/View;
    :cond_2
    return-void

    .line 1874
    :cond_3
    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    goto/16 :goto_0
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 310
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 318
    :goto_1
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbRight:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method


# virtual methods
.method addSelectedView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1299
    return-void
.end method

.method adjustGallery(I)V
    .locals 9
    .parameter "xy"

    .prologue
    const/high16 v8, 0x3f80

    .line 1070
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v6, v6, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v6, :cond_2

    .line 1071
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    .line 1072
    .local v1, dataArea:I
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    sub-int v4, v6, v7

    .line 1073
    .local v4, thumbArea:I
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

    .line 1075
    .local v5, totalItemCount:I
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    mul-int/2addr v7, v5

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float v2, v6, v7

    .line 1077
    .local v2, scrollX:F
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int v6, v4, v6

    if-gez v6, :cond_0

    .line 1078
    const/4 v2, 0x0

    .line 1087
    :cond_0
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    if-gez v6, :cond_1

    .line 1088
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselContentGallery;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    .line 1090
    :cond_1
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    add-int/lit8 v8, v5, -0x1

    mul-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 1093
    .local v0, contentScrollX:I
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    check-cast v6, Lcom/htc/fragment/widget/Gallery;

    float-to-int v7, v2

    invoke-virtual {v6, v7}, Lcom/htc/fragment/widget/Gallery;->scrollTo(I)V

    .line 1096
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6, v0}, Lcom/htc/fragment/widget/CarouselContentGallery;->scrollTo(I)V

    .line 1126
    .end local v2           #scrollX:F
    :goto_0
    return-void

    .line 1099
    .end local v0           #contentScrollX:I
    .end local v1           #dataArea:I
    .end local v4           #thumbArea:I
    .end local v5           #totalItemCount:I
    :cond_2
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    .line 1100
    .restart local v1       #dataArea:I
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    sub-int v4, v6, v7

    .line 1101
    .restart local v4       #thumbArea:I
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

    .line 1103
    .restart local v5       #totalItemCount:I
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    mul-int/2addr v7, v5

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float v3, v6, v7

    .line 1105
    .local v3, scrollY:F
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int v6, v4, v6

    if-gez v6, :cond_3

    .line 1106
    const/4 v3, 0x0

    .line 1115
    :cond_3
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    if-gez v6, :cond_4

    .line 1116
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselContentGallery;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    .line 1117
    :cond_4
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    add-int/lit8 v8, v5, -0x1

    mul-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 1120
    .restart local v0       #contentScrollX:I
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    check-cast v6, Lcom/htc/fragment/widget/Gallery;

    float-to-int v7, v3

    invoke-virtual {v6, v7}, Lcom/htc/fragment/widget/Gallery;->scrollTo(I)V

    .line 1123
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6, v0}, Lcom/htc/fragment/widget/CarouselContentGallery;->scrollTo(I)V

    goto :goto_0
.end method

.method calibrateThumb(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2045
    iput p1, p0, Lcom/htc/fragment/widget/FastScroller;->mCurrentTab:I

    .line 2046
    return-void
.end method

.method cancelAnimation()V
    .locals 1

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mCountObserver:Lcom/htc/fragment/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_0

    .line 2549
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mCountObserver:Lcom/htc/fragment/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller$CountObserver;->onChanged()V

    .line 2550
    :cond_0
    return-void
.end method

.method clearCache()V
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mRecycler:Lcom/htc/fragment/widget/FastScroller$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller$RecycleBin;->clear()V

    .line 2050
    return-void
.end method

.method closeThumb()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1793
    iput-boolean v4, p0, Lcom/htc/fragment/widget/FastScroller;->mEditorMode:Z

    .line 1794
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 1795
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mScrollFade:Lcom/htc/fragment/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1796
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mScrollFade:Lcom/htc/fragment/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1797
    iput-boolean v4, p0, Lcom/htc/fragment/widget/FastScroller;->mFirstAdd:Z

    .line 1801
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 456
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    if-nez v6, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 460
    .local v4, x:I
    iget v5, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 462
    .local v5, y:I
    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    .line 463
    .local v3, viewWidth:I
    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    .line 464
    .local v2, viewHeight:I
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mScrollFade:Lcom/htc/fragment/widget/FastScroller$ScrollFade;

    .line 466
    .local v1, scrollFade:Lcom/htc/fragment/widget/FastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 467
    .local v0, alpha:I
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    if-ne v6, v11, :cond_2

    .line 468
    invoke-virtual {v1}, Lcom/htc/fragment/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 469
    int-to-float v6, v0

    const/high16 v7, 0x42ff

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 470
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 494
    :cond_2
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 495
    :cond_3
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v6, v6, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v6, :cond_6

    .line 497
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v6

    if-le v6, v9, :cond_4

    .line 499
    int-to-float v6, v4

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 500
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 501
    neg-int v6, v4

    int-to-float v6, v6

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 539
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/htc/fragment/widget/FastScroller;->resetScreen:Z

    if-ne v6, v9, :cond_5

    .line 540
    iput-boolean v10, p0, Lcom/htc/fragment/widget/FastScroller;->resetScreen:Z

    .line 541
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/FastScroller;->resetScreenView(Z)V

    .line 544
    :cond_5
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    if-ne v6, v11, :cond_0

    .line 545
    if-nez v0, :cond_7

    .line 546
    invoke-virtual {p0, v10}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    goto :goto_0

    .line 517
    :cond_6
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v6

    if-le v6, v9, :cond_4

    .line 519
    int-to-float v6, v5

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 520
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 521
    neg-int v6, v5

    int-to-float v6, v6

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 548
    :cond_7
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v6, v6, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v6, :cond_8

    .line 549
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    add-int/2addr v8, v4

    invoke-virtual {v6, v4, v7, v8, v2}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 551
    :cond_8
    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    add-int/2addr v8, v5

    invoke-virtual {v6, v7, v5, v3, v8}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_0
.end method

.method getFirstVisibleOffset()I
    .locals 1

    .prologue
    .line 2026
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisibleOffset:I

    return v0
.end method

.method getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 2022
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisiblePosition:I

    return v0
.end method

.method getOffset()I
    .locals 1

    .prologue
    .line 2018
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    return v0
.end method

.method isBlockLayout()Z
    .locals 1

    .prologue
    .line 2565
    iget-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->isBlockLayout:Z

    return v0
.end method

.method isBusy()Z
    .locals 1

    .prologue
    .line 2573
    invoke-virtual {p0}, Lcom/htc/fragment/widget/FastScroller;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    .line 294
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEditorMode()Z
    .locals 1

    .prologue
    .line 1804
    iget-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->mEditorMode:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1060
    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v2, v2, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_2

    .line 1061
    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1061
    goto :goto_0

    .line 1063
    :cond_2
    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeThumbView(Z)Landroid/view/View;
    .locals 1
    .parameter "reset"

    .prologue
    .line 1840
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller;->ensureAdapter()V

    .line 1841
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/FastScroller;->resetScreenView(Z)V

    .line 1845
    const/4 v0, 0x0

    return-object v0
.end method

.method measureThumbDrawable()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->widgetSpace:I

    if-gez v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/FastScroller;->widgetSpace:I

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    .line 339
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->widgetSpace:I

    :goto_2
    iput v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    .line 340
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->mChangedBounds:Z

    .line 342
    const-string v0, "CarouselWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "measureThumbDrawable, mThumbW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mThumbH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPortrait = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v2, v2, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_3
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->widgetSpace:I

    goto :goto_1

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v0

    goto :goto_2
.end method

.method final measureTmumbView(Lcom/htc/fragment/widget/AbsSpinner;Landroid/view/View;II)V
    .locals 16
    .parameter "parent"
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 1912
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    .line 1913
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    .line 1915
    const/4 v13, 0x0

    move/from16 v0, p3

    invoke-static {v13, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    .line 1916
    const/4 v13, 0x0

    move/from16 v0, p4

    invoke-static {v13, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    .line 1918
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    .line 1919
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    .line 1920
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    .line 1921
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    .line 1923
    const-string v13, "CarouselWidget"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "measureTmumbView, mItemWidth = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mItemHeight = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/fragment/widget/CarouselLog;->dv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    const-string v13, "CarouselWidget"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "measureTmumbView, mGalleryWidth = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mGalleryHeight = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/fragment/widget/CarouselLog;->dv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    const-string v13, "CarouselWidget"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "measureTmumbView, mPadding = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/fragment/widget/CarouselLog;->dv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v13, v13, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v13, :cond_6

    .line 1928
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    .line 1931
    .local v6, itemWidth:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    if-ge v13, v14, :cond_1

    .line 2014
    .end local v6           #itemWidth:I
    :cond_0
    :goto_0
    return-void

    .line 1934
    .restart local v6       #itemWidth:I
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    .line 1935
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 1936
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbBottom:I

    .line 1938
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    .line 1939
    .local v3, galleryWidth:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    sub-int v13, v3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    mul-int/lit8 v14, v14, 0x2

    sub-int v1, v13, v14

    .line 1940
    .local v1, dataArea:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    sub-int v13, v3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    sub-int v9, v13, v14

    .line 1941
    .local v9, thumbArea:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v13}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    invoke-interface {v13}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v12

    .line 1943
    .local v12, totalItemCount:I
    if-ltz v1, :cond_2

    if-gez v9, :cond_3

    .line 1944
    :cond_2
    const/4 v1, 0x0

    .line 1945
    const/4 v9, 0x0

    .line 1948
    :cond_3
    mul-int v13, v12, v6

    sub-int/2addr v13, v1

    if-lez v13, :cond_5

    .line 1949
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/FastScroller;->mCurrentTab:I

    .line 1950
    .local v4, index:I
    int-to-float v13, v4

    add-int/lit8 v14, v12, -0x1

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int v14, v9, v14

    int-to-float v14, v14

    mul-float v10, v13, v14

    .line 1951
    .local v10, thumbX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int v13, v9, v13

    int-to-float v13, v13

    div-float v13, v10, v13

    mul-int v14, v12, v6

    sub-int/2addr v14, v1

    int-to-float v14, v14

    mul-float v7, v13, v14

    .line 1954
    .local v7, scrollX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int v13, v9, v13

    if-gez v13, :cond_4

    .line 1955
    const/4 v10, 0x0

    .line 1956
    const/4 v7, 0x0

    .line 1959
    :cond_4
    int-to-float v13, v6

    div-float v13, v7, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1960
    neg-int v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisiblePosition:I

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v14, v6

    int-to-float v14, v14

    sub-float/2addr v14, v7

    float-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1961
    float-to-int v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 2013
    .end local v3           #galleryWidth:I
    .end local v6           #itemWidth:I
    .end local v7           #scrollX:F
    .end local v10           #thumbX:F
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->resetThumbPos()V

    goto/16 :goto_0

    .line 1963
    .end local v4           #index:I
    .restart local v3       #galleryWidth:I
    .restart local v6       #itemWidth:I
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1964
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1966
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/FastScroller;->mCurrentTab:I

    .line 1967
    .restart local v4       #index:I
    mul-int v13, v4, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    goto :goto_1

    .line 1970
    .end local v1           #dataArea:I
    .end local v3           #galleryWidth:I
    .end local v4           #index:I
    .end local v6           #itemWidth:I
    .end local v9           #thumbArea:I
    .end local v12           #totalItemCount:I
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    .line 1973
    .local v5, itemHeight:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    if-lt v13, v14, :cond_0

    .line 1976
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    .line 1977
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 1978
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbRight:I

    .line 1980
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    .line 1981
    .local v2, galleryHeight:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    sub-int v13, v2, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    mul-int/lit8 v14, v14, 0x2

    sub-int v1, v13, v14

    .line 1982
    .restart local v1       #dataArea:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    sub-int v13, v2, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    sub-int v9, v13, v14

    .line 1983
    .restart local v9       #thumbArea:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v13}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    invoke-interface {v13}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v12

    .line 1985
    .restart local v12       #totalItemCount:I
    if-ltz v1, :cond_7

    if-gez v9, :cond_8

    .line 1986
    :cond_7
    const/4 v1, 0x0

    .line 1987
    const/4 v9, 0x0

    .line 1990
    :cond_8
    mul-int v13, v12, v5

    sub-int/2addr v13, v1

    if-lez v13, :cond_a

    .line 1991
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/FastScroller;->mCurrentTab:I

    .line 1992
    .restart local v4       #index:I
    int-to-float v13, v4

    add-int/lit8 v14, v12, -0x1

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int v14, v9, v14

    int-to-float v14, v14

    mul-float v11, v13, v14

    .line 1993
    .local v11, thumbY:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int v13, v9, v13

    int-to-float v13, v13

    div-float v13, v11, v13

    mul-int v14, v12, v5

    sub-int/2addr v14, v1

    int-to-float v14, v14

    mul-float v8, v13, v14

    .line 1996
    .local v8, scrollY:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int v13, v9, v13

    if-gez v13, :cond_9

    .line 1997
    const/4 v11, 0x0

    .line 1998
    const/4 v8, 0x0

    .line 2001
    :cond_9
    int-to-float v13, v5

    div-float v13, v8, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisiblePosition:I

    .line 2002
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisiblePosition:I

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v14, v5

    int-to-float v14, v14

    sub-float/2addr v14, v8

    float-to-int v14, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisibleOffset:I

    .line 2003
    float-to-int v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    goto/16 :goto_1

    .line 2005
    .end local v4           #index:I
    .end local v8           #scrollY:F
    .end local v11           #thumbY:F
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisiblePosition:I

    .line 2006
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mFirstVisibleOffset:I

    .line 2008
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/FastScroller;->mCurrentTab:I

    .line 2009
    .restart local v4       #index:I
    mul-int v13, v4, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    goto/16 :goto_1
.end method

.method moveNext()Z
    .locals 27

    .prologue
    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2054
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v21, v23, v24

    .line 2055
    .local v21, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    move/from16 v19, v0

    .line 2057
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v19, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2058
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2060
    .local v18, totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_2

    add-int/lit8 v13, v12, 0x1

    .end local v12           #pos:I
    .local v13, pos:I
    add-int/lit8 v23, v18, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_1

    .line 2061
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 2063
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    .line 2064
    .local v11, itemWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    .line 2065
    .local v9, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2066
    .local v17, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2068
    .local v6, dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2069
    .local v5, alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    sub-int v3, v23, v24

    .line 2070
    .local v3, aX:I
    int-to-float v0, v3

    move/from16 v23, v0

    sub-float v15, v5, v23

    .line 2073
    .local v15, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_8

    .line 2074
    const/4 v15, 0x0

    .line 2075
    const/4 v5, 0x0

    .line 2076
    const/4 v12, -0x1

    .line 2079
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_0
    mul-int v23, v18, v11

    sub-int v23, v23, v6

    if-lez v23, :cond_0

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    float-to-int v0, v15

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2086
    :goto_1
    const/16 v23, 0x1

    .line 2124
    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :goto_2
    return v23

    .line 2082
    .restart local v3       #aX:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v15       #scrollX:F
    .restart local v17       #thumbArea:I
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 2083
    .local v14, previous:I
    mul-int v23, v12, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2084
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_1

    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_1
    move v12, v13

    .line 2088
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_2
    const/16 v23, 0x0

    goto :goto_2

    .line 2090
    .end local v12           #pos:I
    .end local v18           #totalItemCount:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 2091
    .local v22, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    move/from16 v20, v0

    .line 2093
    .local v20, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v20, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2094
    .restart local v12       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2096
    .restart local v18       #totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_6

    add-int/lit8 v13, v12, 0x1

    .end local v12           #pos:I
    .restart local v13       #pos:I
    add-int/lit8 v23, v18, -0x1

    move/from16 v0, v23

    if-ge v12, v0, :cond_5

    .line 2097
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 2099
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    .line 2100
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    .line 2101
    .local v8, galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2102
    .restart local v17       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2104
    .restart local v6       #dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2105
    .restart local v5       #alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    sub-int v4, v23, v24

    .line 2106
    .local v4, aY:I
    int-to-float v0, v4

    move/from16 v23, v0

    sub-float v16, v5, v23

    .line 2109
    .local v16, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_7

    .line 2110
    const/16 v16, 0x0

    .line 2111
    const/4 v5, 0x0

    .line 2112
    const/4 v12, -0x1

    .line 2115
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_3
    mul-int v23, v18, v10

    sub-int v23, v23, v6

    if-lez v23, :cond_4

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2122
    :goto_4
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 2118
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 2119
    .restart local v14       #previous:I
    mul-int v23, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2120
    .restart local v7       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_4

    .end local v4           #aY:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v16           #scrollY:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_5
    move v12, v13

    .line 2124
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_2

    .end local v12           #pos:I
    .restart local v4       #aY:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v8       #galleryHeight:I
    .restart local v10       #itemHeight:I
    .restart local v13       #pos:I
    .restart local v16       #scrollY:F
    .restart local v17       #thumbArea:I
    :cond_7
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto :goto_3

    .end local v4           #aY:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v16           #scrollY:F
    .end local v20           #viewWidth:I
    .end local v22           #y:I
    .restart local v3       #aX:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v13       #pos:I
    .restart local v15       #scrollX:F
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_8
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto/16 :goto_0
.end method

.method movePrevious()Z
    .locals 27

    .prologue
    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v21, v23, v24

    .line 2131
    .local v21, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    move/from16 v19, v0

    .line 2133
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v19, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2134
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2136
    .local v18, totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_2

    add-int/lit8 v13, v12, -0x1

    .end local v12           #pos:I
    .local v13, pos:I
    if-lez v12, :cond_1

    .line 2137
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 2139
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    .line 2140
    .local v11, itemWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    .line 2141
    .local v9, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2142
    .local v17, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v9, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2144
    .local v6, dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2145
    .local v5, alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    sub-int v3, v23, v24

    .line 2146
    .local v3, aX:I
    int-to-float v0, v3

    move/from16 v23, v0

    sub-float v15, v5, v23

    .line 2149
    .local v15, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_8

    .line 2150
    const/4 v15, 0x0

    .line 2151
    const/4 v5, 0x0

    .line 2152
    const/4 v12, -0x1

    .line 2155
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_0
    mul-int v23, v18, v11

    sub-int v23, v23, v6

    if-lez v23, :cond_0

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    float-to-int v0, v15

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2162
    :goto_1
    const/16 v23, 0x1

    .line 2200
    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :goto_2
    return v23

    .line 2158
    .restart local v3       #aX:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v15       #scrollX:F
    .restart local v17       #thumbArea:I
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 2159
    .local v14, previous:I
    mul-int v23, v12, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2160
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_1

    .end local v3           #aX:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v9           #galleryWidth:I
    .end local v11           #itemWidth:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v15           #scrollX:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_1
    move v12, v13

    .line 2164
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_2
    const/16 v23, 0x0

    goto :goto_2

    .line 2166
    .end local v12           #pos:I
    .end local v18           #totalItemCount:I
    .end local v19           #viewHeight:I
    .end local v21           #x:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 2167
    .local v22, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    move/from16 v20, v0

    .line 2169
    .local v20, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v23, v0

    div-int/lit8 v24, v20, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v12

    .line 2170
    .restart local v12       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v18

    .line 2172
    .restart local v18       #totalItemCount:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_6

    add-int/lit8 v13, v12, -0x1

    .end local v12           #pos:I
    .restart local v13       #pos:I
    if-lez v12, :cond_5

    .line 2173
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 2175
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    .line 2176
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    .line 2177
    .local v8, galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v17, v23, v24

    .line 2178
    .restart local v17       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v8, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v6, v23, v24

    .line 2180
    .restart local v6       #dataArea:I
    int-to-float v0, v13

    move/from16 v23, v0

    add-int/lit8 v24, v18, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v5, v23, v24

    .line 2181
    .restart local v5       #alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    sub-int v4, v23, v24

    .line 2182
    .local v4, aY:I
    int-to-float v0, v4

    move/from16 v23, v0

    sub-float v16, v5, v23

    .line 2185
    .local v16, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    if-gez v23, :cond_7

    .line 2186
    const/16 v16, 0x0

    .line 2187
    const/4 v5, 0x0

    .line 2188
    const/4 v12, -0x1

    .line 2191
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :goto_3
    mul-int v23, v18, v10

    sub-int v23, v23, v6

    if-lez v23, :cond_4

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 2198
    :goto_4
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 2194
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 2195
    .restart local v14       #previous:I
    mul-int v23, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    add-int v7, v23, v24

    .line 2196
    .restart local v7       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v23, v0

    sub-int v24, v7, v14

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7, v12}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_4

    .end local v4           #aY:I
    .end local v5           #alignment:F
    .end local v6           #dataArea:I
    .end local v7           #end:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v14           #previous:I
    .end local v16           #scrollY:F
    .end local v17           #thumbArea:I
    .restart local v13       #pos:I
    :cond_5
    move v12, v13

    .line 2200
    .end local v13           #pos:I
    .restart local v12       #pos:I
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_2

    .end local v12           #pos:I
    .restart local v4       #aY:I
    .restart local v5       #alignment:F
    .restart local v6       #dataArea:I
    .restart local v8       #galleryHeight:I
    .restart local v10       #itemHeight:I
    .restart local v13       #pos:I
    .restart local v16       #scrollY:F
    .restart local v17       #thumbArea:I
    :cond_7
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto :goto_3

    .end local v4           #aY:I
    .end local v8           #galleryHeight:I
    .end local v10           #itemHeight:I
    .end local v12           #pos:I
    .end local v16           #scrollY:F
    .end local v20           #viewWidth:I
    .end local v22           #y:I
    .restart local v3       #aX:I
    .restart local v9       #galleryWidth:I
    .restart local v11       #itemWidth:I
    .restart local v13       #pos:I
    .restart local v15       #scrollX:F
    .restart local v19       #viewHeight:I
    .restart local v21       #x:I
    :cond_8
    move v12, v13

    .end local v13           #pos:I
    .restart local v12       #pos:I
    goto/16 :goto_0
.end method

.method needsMeasureTmumbView(Lcom/htc/fragment/widget/AbsSpinner;Landroid/view/View;II)Z
    .locals 3
    .parameter "parent"
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v0, 0x0

    .line 1901
    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    invoke-static {v0, p3}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    invoke-static {v0, p4}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    iget-object v2, p1, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    iget-object v2, p1, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    iget-object v2, p1, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    iget-object v2, p1, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1303
    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 1319
    iput-boolean v1, p0, Lcom/htc/fragment/widget/FastScroller;->isSkipAnimation:Z

    .line 1321
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 1328
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/fragment/widget/FastScroller;->mPreviousPos:I

    .line 1335
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    .line 1337
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mCountObserver:Lcom/htc/fragment/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mCountObserver:Lcom/htc/fragment/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller$CountObserver;->onChanged()V

    .line 1342
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/FastScroller;->measureThumbDrawable()V

    .line 1343
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller;->removeLongPressCallback()V

    .line 1307
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller;->removeTapCallback()V

    .line 1314
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 1315
    return-void
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 627
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const-string v0, "ani"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch inside(intercept), isUsingDragAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingDragAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->isDefineDragAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->enableAnimation(Z)V

    .line 631
    const-string v0, "ani"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch inside(intercept), isUsingDragAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingDragAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "ani"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch inside(intercept), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->animationStateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 634
    const/4 v0, 0x1

    .line 637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/htc/fragment/widget/AbsSpinner;III)V
    .locals 12
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 572
    sub-int v9, p4, p3

    if-ltz v9, :cond_1

    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    .line 573
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 575
    .local v1, firstItem:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v9, v9, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v9, :cond_4

    .line 576
    iget v7, p0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    .line 577
    .local v7, itemWidth:I
    iget v5, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    .line 578
    .local v5, galleryWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 580
    .local v3, firstVisibleItemRight:I
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v5, v9

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    sub-int v8, v9, v10

    .line 581
    .local v8, thumbArea:I
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v5, v9

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v0, v9, v10

    .line 583
    .local v0, dataArea:I
    mul-int v9, p4, v7

    sub-int/2addr v9, v0

    if-lez v9, :cond_0

    .line 584
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int v9, v8, v9

    add-int/lit8 v10, p2, 0x1

    mul-int/2addr v10, v7

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    mul-int v10, p4, v7

    sub-int/2addr v10, v0

    div-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 588
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 589
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    if-ge v9, v10, :cond_2

    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    :goto_0
    iput v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 590
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int v10, v5, v10

    iget v11, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_3

    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    sub-int v9, v5, v9

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v9, v10

    :goto_1
    iput v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 611
    .end local v3           #firstVisibleItemRight:I
    .end local v5           #galleryWidth:I
    .end local v7           #itemWidth:I
    :cond_0
    :goto_2
    iget-boolean v9, p0, Lcom/htc/fragment/widget/FastScroller;->mChangedBounds:Z

    if-eqz v9, :cond_1

    .line 612
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller;->resetThumbPos()V

    .line 613
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/fragment/widget/FastScroller;->mChangedBounds:Z

    .line 617
    .end local v0           #dataArea:I
    .end local v1           #firstItem:Landroid/view/View;
    .end local v8           #thumbArea:I
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/fragment/widget/FastScroller;->mScrollCompleted:Z

    .line 619
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mVisibleItem:I

    if-ne p2, v9, :cond_7

    .line 623
    :goto_3
    return-void

    .line 589
    .restart local v0       #dataArea:I
    .restart local v1       #firstItem:Landroid/view/View;
    .restart local v3       #firstVisibleItemRight:I
    .restart local v5       #galleryWidth:I
    .restart local v7       #itemWidth:I
    .restart local v8       #thumbArea:I
    :cond_2
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    goto :goto_0

    .line 590
    :cond_3
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    goto :goto_1

    .line 593
    .end local v0           #dataArea:I
    .end local v3           #firstVisibleItemRight:I
    .end local v5           #galleryWidth:I
    .end local v7           #itemWidth:I
    .end local v8           #thumbArea:I
    :cond_4
    iget v6, p0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    .line 594
    .local v6, itemHeight:I
    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    .line 595
    .local v4, galleryHeight:I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 597
    .local v2, firstVisibleItemBottom:I
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    sub-int v8, v9, v10

    .line 598
    .restart local v8       #thumbArea:I
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v0, v9, v10

    .line 600
    .restart local v0       #dataArea:I
    mul-int v9, p4, v6

    sub-int/2addr v9, v0

    if-lez v9, :cond_0

    .line 601
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int v9, v8, v9

    add-int/lit8 v10, p2, 0x1

    mul-int/2addr v10, v6

    sub-int/2addr v10, v2

    iget v11, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    mul-int v10, p4, v6

    sub-int/2addr v10, v0

    div-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 605
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 606
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    if-ge v9, v10, :cond_5

    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    :goto_4
    iput v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 607
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int v10, v4, v10

    iget v11, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_6

    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v9, v10

    :goto_5
    iput v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    goto :goto_2

    .line 606
    :cond_5
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    goto :goto_4

    .line 607
    :cond_6
    iget v9, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    goto :goto_5

    .line 622
    .end local v0           #dataArea:I
    .end local v1           #firstItem:Landroid/view/View;
    .end local v2           #firstVisibleItemBottom:I
    .end local v4           #galleryHeight:I
    .end local v6           #itemHeight:I
    .end local v8           #thumbArea:I
    :cond_7
    iput p2, p0, Lcom/htc/fragment/widget/FastScroller;->mVisibleItem:I

    goto :goto_3
.end method

.method onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 557
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mCountObserver:Lcom/htc/fragment/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mCountObserver:Lcom/htc/fragment/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller$CountObserver;->onChanged()V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 568
    :cond_1
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    .line 569
    return-void

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbRight:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 43
    .parameter "me"

    .prologue
    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    move/from16 v37, v0

    if-eqz v37, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    move/from16 v37, v0

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/fragment/widget/FastScroller;->mEditorMode:Z

    move/from16 v37, v0

    if-nez v37, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/htc/fragment/widget/BinAdapter;->isDataValid()Z

    move-result v37

    if-nez v37, :cond_1

    .line 661
    :cond_0
    const/16 v37, 0x0

    .line 972
    :goto_0
    return v37

    .line 664
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 665
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 666
    .local v10, currentX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 668
    .local v11, currentY:F
    and-int/lit16 v0, v7, 0xff

    move/from16 v37, v0

    packed-switch v37, :pswitch_data_0

    .line 972
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v37, 0x1

    goto :goto_0

    .line 670
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->cancel()V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v37

    if-eqz v37, :cond_2

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_1

    .line 680
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    if-eqz v37, :cond_3

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/MotionEvent;->recycle()V

    .line 683
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 685
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/fragment/widget/FastScroller;->mLastMotionX:F

    .line 686
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/fragment/widget/FastScroller;->mLastMotionY:F

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v37

    if-eqz v37, :cond_4

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 691
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/FastScroller;->isPointInside(FF)Z

    move-result v37

    if-eqz v37, :cond_7

    .line 693
    const-string v37, "ani"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "touch inside, isUsingDragAnimation = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingDragAnimation()Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/htc/fragment/widget/CarouselContentGallery;->isDefineDragAnimation()Z

    move-result v38

    invoke-virtual/range {v37 .. v38}, Lcom/htc/fragment/widget/CarouselContentGallery;->enableAnimation(Z)V

    .line 695
    const-string v37, "ani"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "touch inside, isUsingDragAnimation = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingDragAnimation()Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v37, "ani"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "touch inside, "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/htc/fragment/widget/CarouselContentGallery;->animationStateToString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/16 v37, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    if-eqz v37, :cond_5

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/htc/fragment/widget/AbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    .line 706
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;

    move-object/from16 v37, v0

    if-nez v37, :cond_6

    .line 707
    new-instance v37, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;-><init>(Lcom/htc/fragment/widget/FastScroller;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;

    .line 709
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->removeLongPressCallback()V

    .line 710
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->removeTapCallback()V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;->rememberSelectedTab()V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;

    move-object/from16 v38, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v39

    shl-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    invoke-virtual/range {v37 .. v40}, Lcom/htc/fragment/widget/AbsSpinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 715
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 718
    :cond_7
    const-string v37, "ani"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "touch outside, isUsingClickAnimation = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingClickAnimation()Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/htc/fragment/widget/CarouselContentGallery;->isDefineClickAnimation()Z

    move-result v38

    invoke-virtual/range {v37 .. v38}, Lcom/htc/fragment/widget/CarouselContentGallery;->enableAnimation(Z)V

    .line 724
    const-string v37, "ani"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "touch outside, isUsingClickAnimation = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingClickAnimation()Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v37, "ani"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "touch outside, "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/htc/fragment/widget/CarouselContentGallery;->animationStateToString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    move-object/from16 v37, v0

    if-nez v37, :cond_8

    .line 728
    new-instance v37, Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;-><init>(Lcom/htc/fragment/widget/FastScroller;Lcom/htc/fragment/widget/FastScroller$1;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    .line 730
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    move-object/from16 v38, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    invoke-virtual/range {v37 .. v40}, Lcom/htc/fragment/widget/AbsSpinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 731
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 734
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->removeLongPressCallback()V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    if-nez v37, :cond_9

    .line 737
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 740
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    if-eqz v37, :cond_a

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/htc/fragment/widget/AbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    .line 750
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    move/from16 v37, v0

    if-eqz v37, :cond_e

    .line 751
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    add-int v35, v37, v38

    .line 752
    .local v35, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v38, v0

    sub-int v5, v37, v38

    .line 753
    .local v5, aX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    move/from16 v33, v0

    .line 755
    .local v33, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    div-int/lit8 v38, v33, 0x2

    move-object/from16 v0, v37

    move/from16 v1, v35

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v25

    .line 756
    .local v25, pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    move/from16 v19, v0

    .line 757
    .local v19, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    move/from16 v22, v0

    .line 759
    .local v22, itemWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v37, v0

    sub-int v37, v19, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v38, v0

    sub-int v31, v37, v38

    .line 760
    .local v31, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v37, v0

    sub-int v37, v19, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    move/from16 v38, v0

    mul-int/lit8 v38, v38, 0x2

    sub-int v12, v37, v38

    .line 761
    .local v12, dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v32

    .line 763
    .local v32, totalItemCount:I
    const/16 v37, -0x1

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    .line 764
    add-int/lit8 v25, v32, -0x1

    .line 766
    :cond_b
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v37, v0

    add-int/lit8 v38, v32, -0x1

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v38, v0

    sub-int v38, v31, v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v8, v37, v38

    .line 767
    .local v8, alignment:F
    int-to-float v0, v5

    move/from16 v37, v0

    sub-float v29, v8, v37

    .line 769
    .local v29, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v37, v0

    sub-int v37, v31, v37

    if-gez v37, :cond_c

    .line 770
    const/16 v29, 0x0

    .line 771
    const/4 v8, 0x0

    .line 772
    const/16 v25, -0x1

    .line 775
    :cond_c
    mul-int v37, v32, v22

    sub-int v37, v37, v12

    if-lez v37, :cond_d

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v37, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v38, v0

    float-to-int v0, v8

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v40, v0

    add-int v39, v39, v40

    const/16 v40, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v25

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    .line 815
    .end local v5           #aX:I
    .end local v19           #galleryWidth:I
    .end local v22           #itemWidth:I
    .end local v29           #scrollX:F
    .end local v33           #viewHeight:I
    .end local v35           #x:I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->removeLongPressCallback()V

    .line 818
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 778
    .restart local v5       #aX:I
    .restart local v19       #galleryWidth:I
    .restart local v22       #itemWidth:I
    .restart local v29       #scrollX:F
    .restart local v33       #viewHeight:I
    .restart local v35       #x:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v28, v0

    .line 779
    .local v28, previous:I
    mul-int v37, v25, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v38, v0

    add-int v17, v37, v38

    .line 780
    .local v17, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v37, v0

    sub-int v38, v17, v28

    const/16 v39, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v17

    move/from16 v3, v25

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    goto :goto_2

    .line 783
    .end local v5           #aX:I
    .end local v8           #alignment:F
    .end local v12           #dataArea:I
    .end local v17           #end:I
    .end local v19           #galleryWidth:I
    .end local v22           #itemWidth:I
    .end local v25           #pos:I
    .end local v28           #previous:I
    .end local v29           #scrollX:F
    .end local v31           #thumbArea:I
    .end local v32           #totalItemCount:I
    .end local v33           #viewHeight:I
    .end local v35           #x:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    add-int v36, v37, v38

    .line 784
    .local v36, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v38, v0

    sub-int v6, v37, v38

    .line 785
    .local v6, aY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    move/from16 v34, v0

    .line 787
    .local v34, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    div-int/lit8 v38, v34, 0x2

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/AbsSpinner;->pointToPosition(II)I

    move-result v25

    .line 788
    .restart local v25       #pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    move/from16 v18, v0

    .line 789
    .local v18, galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    move/from16 v21, v0

    .line 791
    .local v21, itemHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v37, v0

    sub-int v37, v18, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v38, v0

    sub-int v31, v37, v38

    .line 792
    .restart local v31       #thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v37, v0

    sub-int v37, v18, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    move/from16 v38, v0

    mul-int/lit8 v38, v38, 0x2

    sub-int v12, v37, v38

    .line 793
    .restart local v12       #dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v32

    .line 795
    .restart local v32       #totalItemCount:I
    const/16 v37, -0x1

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_f

    .line 796
    add-int/lit8 v25, v32, -0x1

    .line 798
    :cond_f
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v37, v0

    add-int/lit8 v38, v32, -0x1

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v38, v0

    sub-int v38, v31, v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v8, v37, v38

    .line 799
    .restart local v8       #alignment:F
    int-to-float v0, v6

    move/from16 v37, v0

    sub-float v30, v8, v37

    .line 801
    .local v30, scrollY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v37, v0

    sub-int v37, v31, v37

    if-gez v37, :cond_10

    .line 802
    const/16 v30, 0x0

    .line 803
    const/4 v8, 0x0

    .line 804
    const/16 v25, -0x1

    .line 807
    :cond_10
    mul-int v37, v32, v21

    sub-int v37, v37, v12

    if-lez v37, :cond_11

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v37, v0

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v38, v0

    float-to-int v0, v8

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v40, v0

    add-int v39, v39, v40

    const/16 v40, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v25

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    goto/16 :goto_2

    .line 810
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v28, v0

    .line 811
    .restart local v28       #previous:I
    mul-int v37, v25, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v38, v0

    add-int v17, v37, v38

    .line 812
    .restart local v17       #end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-object/from16 v37, v0

    sub-int v38, v17, v28

    const/16 v39, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v17

    move/from16 v3, v25

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    goto/16 :goto_2

    .line 822
    .end local v6           #aY:I
    .end local v8           #alignment:F
    .end local v12           #dataArea:I
    .end local v17           #end:I
    .end local v18           #galleryHeight:I
    .end local v21           #itemHeight:I
    .end local v25           #pos:I
    .end local v28           #previous:I
    .end local v30           #scrollY:F
    .end local v31           #thumbArea:I
    .end local v32           #totalItemCount:I
    .end local v34           #viewWidth:I
    .end local v36           #y:I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_2

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    if-nez v37, :cond_12

    .line 828
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 831
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/MotionEvent;->getX()F

    move-result v37

    sub-float v37, v10, v37

    move/from16 v0, v37

    float-to-int v14, v0

    .line 832
    .local v14, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/MotionEvent;->getY()F

    move-result v37

    sub-float v37, v11, v37

    move/from16 v0, v37

    float-to-int v15, v0

    .line 833
    .local v15, deltaY:I
    mul-int v37, v14, v14

    mul-int v38, v15, v15

    add-int v16, v37, v38

    .line 835
    .local v16, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_27

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mLastMotionX:F

    move/from16 v37, v0

    sub-float v29, v37, v10

    .line 837
    .restart local v29       #scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mLastMotionY:F

    move/from16 v37, v0

    sub-float v30, v37, v11

    .line 839
    .restart local v30       #scrollY:F
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v37

    const/high16 v38, 0x3f80

    cmpl-float v37, v37, v38

    if-gez v37, :cond_13

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v37

    const/high16 v38, 0x3f80

    cmpl-float v37, v37, v38

    if-ltz v37, :cond_18

    .line 841
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/fragment/widget/FastScroller;->mScrollCompleted:Z

    move/from16 v37, v0

    if-eqz v37, :cond_18

    .line 842
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v37, v0

    move/from16 v0, v16

    move/from16 v1, v37

    if-le v0, v1, :cond_14

    .line 843
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/fragment/widget/FastScroller;->mLastMotionX:F

    .line 844
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/fragment/widget/FastScroller;->mLastMotionY:F

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->removeTapCallback()V

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->removeLongPressCallback()V

    .line 850
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    move/from16 v37, v0

    if-eqz v37, :cond_1f

    .line 851
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    move/from16 v22, v0

    .line 852
    .restart local v22       #itemWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I

    move/from16 v19, v0

    .line 854
    .restart local v19       #galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v37, v0

    sub-int v37, v19, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    move/from16 v38, v0

    mul-int/lit8 v38, v38, 0x2

    sub-int v12, v37, v38

    .line 855
    .restart local v12       #dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v32

    .line 857
    .restart local v32       #totalItemCount:I
    mul-int v37, v32, v22

    sub-int v37, v37, v12

    if-lez v37, :cond_1b

    .line 858
    float-to-int v0, v10

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    sub-int v23, v37, v38

    .line 860
    .local v23, newThumbX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v37, v0

    move/from16 v0, v23

    move/from16 v1, v37

    if-ge v0, v1, :cond_16

    .line 861
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v23, v0

    .line 865
    :cond_15
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v37, v0

    sub-int v37, v37, v23

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(I)I

    move-result v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_17

    .line 866
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 862
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v37, v0

    add-int v37, v37, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    .line 863
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v37, v0

    sub-int v37, v19, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v38, v0

    sub-int v23, v37, v38

    goto :goto_3

    .line 868
    :cond_17
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 869
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->adjustGallery(I)V

    .line 938
    .end local v12           #dataArea:I
    .end local v19           #galleryWidth:I
    .end local v22           #itemWidth:I
    .end local v23           #newThumbX:I
    .end local v32           #totalItemCount:I
    :cond_18
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/fragment/widget/FastScroller$CheckForLongPress;

    move-object/from16 v37, v0

    if-eqz v37, :cond_19

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v37, v0

    move/from16 v0, v16

    move/from16 v1, v37

    if-le v0, v1, :cond_19

    .line 940
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->removeLongPressCallback()V

    .line 949
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/htc/fragment/widget/CarouselContentGallery;->ANIMODE:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x2

    if-eqz v37, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/htc/fragment/widget/CarouselContentGallery;->ANITYPE_DEFINED:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->previousPosition:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1a

    .line 952
    const-string v37, "ani"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "move, show tab = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    check-cast v37, Lcom/htc/fragment/widget/CarouselWidget;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    move-object/from16 v20, v0

    .line 954
    .local v20, host:Lcom/htc/fragment/widget/CarouselHost;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    .line 956
    .local v9, current:Lcom/htc/fragment/widget/CarouselHost$TabContainer;
    if-eqz v9, :cond_1a

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->currentPosition:I

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-virtual {v9, v0}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchFakeViewTitleTo(I)V

    .line 959
    .end local v9           #current:Lcom/htc/fragment/widget/CarouselHost$TabContainer;
    .end local v20           #host:Lcom/htc/fragment/widget/CarouselHost;
    :cond_1a
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 871
    .restart local v12       #dataArea:I
    .restart local v19       #galleryWidth:I
    .restart local v22       #itemWidth:I
    .restart local v32       #totalItemCount:I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v26, v0

    .line 872
    .local v26, preThumbLeft:I
    float-to-int v0, v10

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 874
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1c

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 877
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v38, v0

    sub-int v38, v19, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_1d

    .line 878
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v37, v0

    sub-int v37, v19, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    .line 880
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    check-cast v37, Lcom/htc/fragment/widget/Gallery;

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/htc/fragment/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 882
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v37, v0

    sub-int v13, v37, v26

    .line 883
    .local v13, delta:I
    if-lez v13, :cond_1e

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v38, v0

    sub-int v38, v38, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v41, v0

    add-int v40, v40, v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbBottom:I

    move/from16 v41, v0

    invoke-virtual/range {v37 .. v41}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    .line 888
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->scrollContentFromThumb(I)V

    goto/16 :goto_4

    .line 886
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    move/from16 v41, v0

    add-int v40, v40, v41

    sub-int v40, v40, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbBottom:I

    move/from16 v41, v0

    invoke-virtual/range {v37 .. v41}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_5

    .line 892
    .end local v12           #dataArea:I
    .end local v13           #delta:I
    .end local v19           #galleryWidth:I
    .end local v22           #itemWidth:I
    .end local v26           #preThumbLeft:I
    .end local v32           #totalItemCount:I
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    move/from16 v21, v0

    .line 893
    .restart local v21       #itemHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I

    move/from16 v18, v0

    .line 895
    .restart local v18       #galleryHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v37, v0

    sub-int v37, v18, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mOffset:I

    move/from16 v38, v0

    mul-int/lit8 v38, v38, 0x2

    sub-int v12, v37, v38

    .line 896
    .restart local v12       #dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v32

    .line 898
    .restart local v32       #totalItemCount:I
    mul-int v37, v32, v21

    sub-int v37, v37, v12

    if-lez v37, :cond_23

    .line 899
    float-to-int v0, v11

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    sub-int v24, v37, v38

    .line 901
    .local v24, newThumbY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v37, v0

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_21

    .line 902
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v24, v0

    .line 906
    :cond_20
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    sub-int v37, v37, v24

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(I)I

    move-result v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_22

    .line 907
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 903
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v37, v0

    add-int v37, v37, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move/from16 v1, v18

    if-le v0, v1, :cond_20

    .line 904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v37, v0

    sub-int v37, v18, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v38, v0

    sub-int v24, v37, v38

    goto :goto_6

    .line 909
    :cond_22
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 910
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->adjustGallery(I)V

    goto/16 :goto_4

    .line 912
    .end local v24           #newThumbY:I
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v27, v0

    .line 913
    .local v27, preThumbTop:I
    float-to-int v0, v11

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_24

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 918
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v38, v0

    sub-int v38, v18, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_25

    .line 919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v37, v0

    sub-int v37, v18, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    .line 921
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    check-cast v37, Lcom/htc/fragment/widget/Gallery;

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/htc/fragment/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 923
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    sub-int v13, v37, v27

    .line 924
    .restart local v13       #delta:I
    if-lez v13, :cond_26

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v39, v0

    sub-int v39, v39, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbRight:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v42, v0

    add-int v41, v41, v42

    invoke-virtual/range {v37 .. v41}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    .line 929
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->scrollContentFromThumb(I)V

    goto/16 :goto_4

    .line 927
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbRight:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    move/from16 v42, v0

    add-int v41, v41, v42

    sub-int v41, v41, v13

    invoke-virtual/range {v37 .. v41}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_7

    .line 961
    .end local v12           #dataArea:I
    .end local v13           #delta:I
    .end local v18           #galleryHeight:I
    .end local v21           #itemHeight:I
    .end local v27           #preThumbTop:I
    .end local v29           #scrollX:F
    .end local v30           #scrollY:F
    .end local v32           #totalItemCount:I
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2

    .line 962
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v37, v0

    move/from16 v0, v16

    move/from16 v1, v37

    if-le v0, v1, :cond_2

    .line 963
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->removeTapCallback()V

    goto/16 :goto_1

    .line 969
    .end local v14           #deltaX:I
    .end local v15           #deltaY:I
    .end local v16           #distance:I
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/FastScroller;->cancel()V

    goto/16 :goto_1

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method performLongClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1764
    iget-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->mEnableEditorMode:Z

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Lcom/htc/fragment/widget/CarouselUtil;->isDataStorageFull(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/fragment/widget/CarouselSkinUtil;->isDefaultNoEditorMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1766
    :cond_0
    const/4 v0, 0x0

    .line 1777
    :goto_0
    return v0

    .line 1768
    :cond_1
    iput-boolean v1, p0, Lcom/htc/fragment/widget/FastScroller;->mEditorMode:Z

    .line 1769
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0, v1, v1}, Lcom/htc/fragment/widget/AbsSpinner;->performHapticFeedback(II)Z

    .line 1771
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->onStartTemporaryDetach()V

    .line 1775
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/fragment/widget/FastScroller;->mPreviousPos:I

    .line 1776
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    check-cast v0, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->openDrawer()V

    move v0, v1

    .line 1777
    goto :goto_0
.end method

.method scrollContentFromThumb(I)V
    .locals 3
    .parameter "thumbLeft"

    .prologue
    const/high16 v2, 0x3f80

    .line 643
    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    if-gez v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v1, v1, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_1

    .line 647
    int-to-float v1, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 653
    .local v0, delta:I
    :goto_0
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselContentGallery;->scrollTo(I)V

    .line 654
    return-void

    .line 650
    .end local v0           #delta:I
    :cond_1
    int-to-float v1, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mContentWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .restart local v0       #delta:I
    goto :goto_0
.end method

.method setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 409
    instance-of v0, p1, Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mCountObserver:Lcom/htc/fragment/widget/FastScroller$CountObserver;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/BinAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 413
    :cond_0
    check-cast p1, Lcom/htc/fragment/widget/BinAdapter;

    .end local p1
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 414
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mCountObserver:Lcom/htc/fragment/widget/FastScroller$CountObserver;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/BinAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 420
    :goto_0
    return-void

    .line 419
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    goto :goto_0
.end method

.method setAnimationMode(ZZ)V
    .locals 5
    .parameter "isAnimating"
    .parameter "disableGc"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/htc/fragment/widget/FastScroller;->isBlockLayout:Z

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    check-cast v2, Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v2, v2, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->pauseCurrentTab()V

    .line 256
    const-string v2, "ani"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@setAnimationMode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselContentGallery;->animationStateToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v2, "ani"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@setAnimationMode, isUsingAnimationByCurrnetState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingAnimationByCurrnetState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingFakeView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingAnimationByCurrnetState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    check-cast v2, Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v2, v2, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 260
    .local v1, currentTab:Landroid/app/Fragment;
    if-nez v1, :cond_3

    .line 274
    .end local v1           #currentTab:Landroid/app/Fragment;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/FastScroller;->setBlockLayout(Z)V

    .line 275
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    .line 276
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableGcForExternalAlloc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselLog;->w(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 279
    :cond_2
    return-void

    .line 263
    .restart local v1       #currentTab:Landroid/app/Fragment;
    :cond_3
    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 264
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 268
    const-string v2, "ani"

    const-string v3, "@setAnimationMode, to fake"

    invoke-static {v2, v3}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToFakeView()V

    goto :goto_0
.end method

.method setBlockLayout(Z)V
    .locals 2
    .parameter "block"

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    if-nez v0, :cond_0

    .line 2562
    :goto_0
    return-void

    .line 2558
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->isBlockLayout:Z

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBlockLayout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->w(Ljava/lang/String;)V

    .line 2559
    :cond_1
    iput-boolean p1, p0, Lcom/htc/fragment/widget/FastScroller;->isBlockLayout:Z

    .line 2561
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    iput-boolean p1, v0, Lcom/htc/fragment/widget/CarouselContentGallery;->mBlockLayoutRequests:Z

    goto :goto_0
.end method

.method setContentGallery(Lcom/htc/fragment/widget/CarouselContentGallery;)V
    .locals 0
    .parameter "gallery"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;

    .line 185
    return-void
.end method

.method setCurrentThumb(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2037
    iput p1, p0, Lcom/htc/fragment/widget/FastScroller;->mCurrentTab:I

    .line 2038
    return-void
.end method

.method setEditorMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2041
    iput-boolean p1, p0, Lcom/htc/fragment/widget/FastScroller;->mEnableEditorMode:Z

    .line 2042
    return-void
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 195
    iget-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->mEditorMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->isDataValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iput p1, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    .line 202
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 205
    :pswitch_1
    const-string v0, "ani"

    const-string v1, "setState = STATE_NONE"

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v2, v2}, Lcom/htc/fragment/widget/FastScroller;->setAnimationMode(ZZ)V

    .line 208
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mScrollFade:Lcom/htc/fragment/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate()V

    goto :goto_0

    .line 213
    :pswitch_2
    const-string v0, "ani"

    const-string v1, "setState = STATE_VISIBLE"

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v2, v2}, Lcom/htc/fragment/widget/FastScroller;->setAnimationMode(ZZ)V

    .line 216
    iget v0, p0, Lcom/htc/fragment/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller;->resetThumbPos()V

    .line 219
    :cond_2
    iget-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->mEditorMode:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mScrollFade:Lcom/htc/fragment/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 225
    :pswitch_3
    const-string v0, "ani"

    const-string v1, "setState = STATE_DRAGGING"

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, v3, v2}, Lcom/htc/fragment/widget/FastScroller;->setAnimationMode(ZZ)V

    .line 228
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller;->mScrollFade:Lcom/htc/fragment/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 233
    :pswitch_4
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbW:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbRight:I

    iget v4, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I

    iget v5, p0, Lcom/htc/fragment/widget/FastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 241
    :pswitch_5
    const-string v0, "ani"

    const-string v1, "setState = STATE_ANIMATION"

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v3, v3}, Lcom/htc/fragment/widget/FastScroller;->setAnimationMode(ZZ)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method showThumb()V
    .locals 1

    .prologue
    .line 1785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->resetScreen:Z

    .line 1786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller;->mEditorMode:Z

    .line 1787
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 1788
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->postInvalidate()V

    .line 1789
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 445
    return-void
.end method
