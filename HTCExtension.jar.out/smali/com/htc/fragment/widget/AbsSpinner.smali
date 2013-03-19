.class public abstract Lcom/htc/fragment/widget/AbsSpinner;
.super Lcom/htc/fragment/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/AbsSpinner$1;,
        Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;,
        Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;,
        Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;,
        Lcom/htc/fragment/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fragment/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LAND_FACTOR:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PORT_FACTOR:F = 0.0f

.field private static final P_LAND_FACTOR:F = 0.08f

.field private static final P_PORT_FACTOR:F = 0.22f

.field private static final P_PORT_FACTOR_S:F = 0.285f

.field private static final T_LAND_FACTOR:F = 0.105f

.field private static final T_PORT_FACTOR:F = 0.08f


# instance fields
.field private CONTAINER_SIZE:I

.field private ITEM_COUNT:I

.field private ITEM_SIZE:I

.field private ITEM_SIZE_INVALED:Z

.field private MAX_CAPACITY:I

.field private display:Landroid/view/Display;

.field protected isPortrait:Z

.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mAnimationWidthHeight:I

.field mBlockLayoutRequests:Z

.field private mChangeWidthHeightAnimation:Z

.field private mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpandedHeight:I

.field mExpandedPos:I

.field private mExpandedWidth:I

.field mFastScrollEnabled:Z

.field protected mFastScroller:Lcom/htc/fragment/widget/FastScroller;

.field mFirstItemX:I

.field mFirstItemY:I

.field mHeightMeasureSpec:I

.field mHighBorder:I

.field private mIndicatorIndex:I

.field private mIsDragBinGridView:Z

.field private mLastIndicatorIndex:I

.field private mLateShrinkedFlag:Z

.field mLowBorder:I

.field final mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

.field private mReducedHeight:I

.field mReducedPos:I

.field private mReducedWidth:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mShrinkedHeight:I

.field mShrinkedPos:I

.field private mShrinkedWidth:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

.field private mWaveRunnableRunning:Z

.field mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x3da3d70a

    .line 867
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput v0, Lcom/htc/fragment/widget/AbsSpinner;->PORT_FACTOR:F

    .line 868
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const v1, 0x3dd70a3d

    :cond_0
    sput v1, Lcom/htc/fragment/widget/AbsSpinner;->LAND_FACTOR:F

    return-void

    .line 867
    :cond_1
    const v0, 0x3e6147ae

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 59
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 60
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 61
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 62
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/fragment/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    .line 93
    iput-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    .line 95
    iput-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 837
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 839
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    .line 844
    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedHeight:I

    .line 852
    iput-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    .line 853
    const/16 v0, 0xa0

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 854
    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    .line 855
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_COUNT:I

    .line 856
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->CONTAINER_SIZE:I

    .line 917
    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedWidth:I

    .line 920
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    .line 921
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    .line 922
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 924
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    .line 925
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 995
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-direct {v0, p0, v4}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    .line 1109
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    .line 1111
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v0, p0, v4}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    .line 1373
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 121
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setOrientation()V

    .line 122
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner;->initAbsSpinner()V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 60
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 61
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 62
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 63
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 65
    new-instance v3, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/fragment/widget/AbsSpinner;)V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    .line 93
    iput-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    .line 95
    iput-object v7, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 837
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 839
    iput-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    .line 844
    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedHeight:I

    .line 852
    iput-boolean v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    .line 853
    const/16 v3, 0xa0

    iput v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 854
    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    .line 855
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_COUNT:I

    .line 856
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->CONTAINER_SIZE:I

    .line 917
    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedWidth:I

    .line 920
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    .line 921
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    .line 922
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 924
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    .line 925
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 995
    new-instance v3, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-direct {v3, p0, v7}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    .line 1109
    iput-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    .line 1111
    new-instance v3, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v3, p0, v7}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    .line 1373
    iput-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 132
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setOrientation()V

    .line 133
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner;->initAbsSpinner()V

    .line 135
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 139
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 140
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 143
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/htc/fragment/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/htc/fragment/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/fragment/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/fragment/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/fragment/widget/AbsSpinner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->onAnimationEnd()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/fragment/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/fragment/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/fragment/widget/AbsSpinner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/fragment/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I

    return p1
.end method

.method private checkContainerSize(IIZ)V
    .locals 9
    .parameter "measuredWidthAndState"
    .parameter "measuredHeightAndState"
    .parameter "isPortraitMode"

    .prologue
    const/high16 v7, 0x4000

    .line 1265
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-ne v6, v7, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-eq v6, v7, :cond_1

    .line 1266
    :cond_0
    const-string v6, "CarouselWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v6, "CarouselWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size: w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :cond_1
    if-eqz p3, :cond_6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1271
    .local v5, size:I
    :goto_0
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    if-nez v6, :cond_2

    .line 1272
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 1273
    :cond_2
    if-lez v5, :cond_c

    .line 1274
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    .line 1275
    .local v0, capacityOld:I
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getItemCount()I

    move-result v1

    .line 1276
    .local v1, count:I
    const/16 v3, 0x64

    .line 1278
    .local v3, itemSizeMin:I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1279
    .local v4, p:Landroid/graphics/Point;
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v6, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1280
    if-eqz p3, :cond_7

    iget v2, v4, Landroid/graphics/Point;->x:I

    .line 1282
    .local v2, displaySize:I
    :goto_1
    if-eqz p3, :cond_9

    .line 1284
    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 1285
    :cond_3
    sget v6, Lcom/htc/fragment/widget/AbsSpinner;->PORT_FACTOR:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 1295
    :goto_2
    div-int v6, v5, v3

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    .line 1297
    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->CONTAINER_SIZE:I

    if-ne v5, v6, :cond_4

    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    if-ne v0, v6, :cond_4

    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_COUNT:I

    if-eq v1, v6, :cond_5

    .line 1300
    :cond_4
    const-string v6, "CarouselWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "display size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v6, "CarouselWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rotation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isPortrait = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", max capacity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iput v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->CONTAINER_SIZE:I

    iget v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_COUNT:I

    invoke-direct {p0, v5, v6, v1}, Lcom/htc/fragment/widget/AbsSpinner;->checkItemSize(III)V

    .line 1311
    .end local v0           #capacityOld:I
    .end local v1           #count:I
    .end local v2           #displaySize:I
    .end local v3           #itemSizeMin:I
    .end local v4           #p:Landroid/graphics/Point;
    :cond_5
    :goto_3
    return-void

    .line 1269
    .end local v5           #size:I
    :cond_6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    goto/16 :goto_0

    .line 1280
    .restart local v0       #capacityOld:I
    .restart local v1       #count:I
    .restart local v3       #itemSizeMin:I
    .restart local v4       #p:Landroid/graphics/Point;
    .restart local v5       #size:I
    :cond_7
    iget v2, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 1287
    .restart local v2       #displaySize:I
    :cond_8
    sget v6, Lcom/htc/fragment/widget/AbsSpinner;->LAND_FACTOR:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_2

    .line 1290
    :cond_9
    const/16 v6, 0x140

    if-eq v2, v6, :cond_a

    const/16 v6, 0x1e0

    if-ne v2, v6, :cond_b

    .line 1291
    :cond_a
    const v6, 0x3e91eb85

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v3, v6

    goto/16 :goto_2

    .line 1293
    :cond_b
    sget v6, Lcom/htc/fragment/widget/AbsSpinner;->PORT_FACTOR:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v3, v6

    goto/16 :goto_2

    .line 1307
    .end local v0           #capacityOld:I
    .end local v1           #count:I
    .end local v2           #displaySize:I
    .end local v3           #itemSizeMin:I
    .end local v4           #p:Landroid/graphics/Point;
    :cond_c
    const/4 v6, 0x1

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    .line 1308
    const/16 v6, 0x64

    iput v6, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 1309
    const-string v6, "CarouselWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARING: rotation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isPortrait = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", max capacity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private checkItemSize(III)V
    .locals 4
    .parameter "size"
    .parameter "max"
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 1314
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    .line 1316
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_4

    if-lez p1, :cond_4

    .line 1318
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 1320
    .local v0, oldValue:I
    if-gtz p3, :cond_0

    .line 1322
    const-string v1, "CarouselWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARING: size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", icon count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    div-int/lit8 v1, p1, 0x3

    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 1334
    :goto_0
    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    if-eq v1, v0, :cond_3

    .line 1335
    const-string v1, "CarouselWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string v1, "CarouselWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", icon count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const-string v2, "CarouselWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon size {before measure, after measure} = {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}, state = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    if-eqz v1, :cond_2

    const-string v1, "UNSPECIFIED"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    .end local v0           #oldValue:I
    :goto_2
    return-void

    .line 1325
    .restart local v0       #oldValue:I
    :cond_0
    if-le p3, p2, :cond_1

    .line 1326
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    div-int v1, p1, v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 1327
    iput-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    goto/16 :goto_0

    .line 1330
    :cond_1
    div-int v1, p1, p3

    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    .line 1331
    iput-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    goto/16 :goto_0

    .line 1337
    :cond_2
    const-string v1, "EXACTLY"

    goto :goto_1

    .line 1339
    :cond_3
    const-string v1, "CarouselWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", icon count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->dv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string v1, "CarouselWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item size no change. item size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->dv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1343
    .end local v0           #oldValue:I
    :cond_4
    if-gtz p1, :cond_5

    .line 1344
    const-string v1, "CarouselWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", icon count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1346
    :cond_5
    const-string v1, "CarouselWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter = null, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", icon count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private checkOrientation()V
    .locals 5

    .prologue
    .line 110
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 111
    .local v1, orientation:I
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    .line 112
    .local v0, isPortraitPreStat:Z
    sget-boolean v2, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    .line 114
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eq v0, v2, :cond_1

    .line 115
    const-string v2, "CarouselWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR! AbsSpinner.isPortrait = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but current state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    return-void

    .line 112
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getItemCount()I
    .locals 3

    .prologue
    .line 1255
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1256
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 1257
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 1259
    .end local v0           #count:I
    :goto_0
    return v0

    .restart local v0       #count:I
    :cond_0
    move v1, v0

    .line 1257
    .end local v0           #count:I
    .local v1, count:I
    goto :goto_0

    .line 1259
    .end local v1           #count:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setFocusable(Z)V

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 156
    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    #calls: Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->end()V
    invoke-static {v0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->access$1400(Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;)V

    .line 1370
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    #calls: Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V
    invoke-static {v0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->access$1500(Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;)V

    .line 1371
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 714
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 715
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method getDragBinGridView()Z
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method getExpandedHeight()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    return v0
.end method

.method getExpandedPosition()I
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    return v0
.end method

.method getExpandedWidth()I
    .locals 1

    .prologue
    .line 967
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method getIndicatorIndex()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    return v0
.end method

.method protected getItemSize()I
    .locals 3

    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getItemCount()I

    move-result v0

    .line 1353
    .local v0, count:I
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_COUNT:I

    if-eq v1, v0, :cond_1

    .line 1354
    :cond_0
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    if-eqz v1, :cond_2

    .line 1355
    const-string v1, "CarouselWidget"

    const-string v2, "invaled icon size, checking..."

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    :goto_0
    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->CONTAINER_SIZE:I

    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_COUNT:I

    invoke-direct {p0, v1, v2, v0}, Lcom/htc/fragment/widget/AbsSpinner;->checkItemSize(III)V

    .line 1360
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    if-eqz v1, :cond_1

    .line 1361
    const-string v1, "CarouselWidget"

    const-string v2, "adapter is empty?... please try again after adapter ready!"

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v1, "CarouselWidget"

    const-string v2, "CarouselWidget: must getItemSize when adapter reaady"

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->stackTraceE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    :cond_1
    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    return v1

    .line 1357
    :cond_2
    const-string v1, "CarouselWidget"

    const-string v2, "invaled icon size (adapter changed), checking..."

    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getLastIndicatorIndex()I
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    return v0
.end method

.method getLayoutParamsHeight()I
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    if-eqz v0, :cond_0

    .line 792
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 794
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeightWithNoAnimation()I

    move-result v0

    goto :goto_0
.end method

.method getLayoutParamsHeightWithNoAnimation()I
    .locals 3

    .prologue
    .line 814
    instance-of v0, p0, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-nez v0, :cond_1

    .line 815
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    if-eqz v0, :cond_0

    .line 816
    const-string v0, "CarouselWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invaled icon size, return getMeasuredHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v0, "CarouselWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLayoutParamsHeightWithNoAnimation, current icon size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v0

    .line 822
    :goto_0
    return v0

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getItemSize()I

    move-result v0

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method getLayoutParamsWidth()I
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z

    if-eqz v0, :cond_0

    .line 880
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I

    .line 883
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    goto :goto_0
.end method

.method getLayoutParamsWidthWithNoAnimation()I
    .locals 3

    .prologue
    .line 903
    instance-of v0, p0, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 904
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE_INVALED:Z

    if-eqz v0, :cond_0

    .line 905
    const-string v0, "CarouselWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invaled icon size, return getMeasuredWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v0, "CarouselWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLayoutParamsWidthWithNoAnimation, current icon size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->ITEM_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v0

    .line 911
    :goto_0
    return v0

    .line 909
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getItemSize()I

    move-result v0

    goto :goto_0

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method getMaxCapacity()I
    .locals 1

    .prologue
    .line 1380
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->MAX_CAPACITY:I

    return v0
.end method

.method getReducedHeight()I
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I

    return v0
.end method

.method getReducedPosition()I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    return v0
.end method

.method getReducedWidth()I
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 452
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 453
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getShrinkedHeight()I
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedHeight:I

    return v0
.end method

.method getShrinkedPosition()I
    .locals 1

    .prologue
    .line 959
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    return v0
.end method

.method getShrinkedWidth()I
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedWidth:I

    return v0
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 737
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/fragment/widget/FastScroller;->onScroll(Lcom/htc/fragment/widget/AbsSpinner;III)V

    .line 740
    :cond_0
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScrollEnabled:Z

    return v0
.end method

.method isWaveRunnableRunning()Z
    .locals 1

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 748
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->onAttachedToWindow()V

    .line 749
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->onAttachedToWindow()V

    .line 752
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 774
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 776
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->setOrientation()V

    .line 779
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 781
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->onDetachedFromWindow()V

    .line 764
    :cond_0
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->onDetachedFromWindow()V

    .line 765
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 723
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/fragment/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 725
    .local v0, intercepted:Z
    if-eqz v0, :cond_0

    .line 726
    const/4 v1, 0x1

    .line 730
    .end local v0           #intercepted:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AdapterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 17
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 242
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 243
    .local v12, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 244
    .local v3, heightMode:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v14, :cond_0

    const/high16 v14, 0x4000

    if-ne v12, v14, :cond_0

    const/high16 v14, 0x4000

    if-eq v3, v14, :cond_1

    .line 246
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v14

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/htc/fragment/widget/AbsSpinner;->getDefaultSize(II)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v15

    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/htc/fragment/widget/AbsSpinner;->getDefaultSize(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/htc/fragment/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 379
    :goto_0
    return-void

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v14, v0, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingLeft:I

    :goto_1
    iput v14, v15, Landroid/graphics/Rect;->left:I

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v14, v0, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingTop:I

    :goto_2
    iput v14, v15, Landroid/graphics/Rect;->top:I

    .line 259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v14, v0, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingRight:I

    :goto_3
    iput v14, v15, Landroid/graphics/Rect;->right:I

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v14, v0, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mPaddingBottom:I

    :goto_4
    iput v14, v15, Landroid/graphics/Rect;->bottom:I

    .line 264
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v14, :cond_2

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/AbsSpinner;->handleDataChanged()V

    .line 268
    :cond_2
    const/4 v8, 0x0

    .line 269
    .local v8, preferredHeight:I
    const/4 v9, 0x0

    .line 270
    .local v9, preferredWidth:I
    const/4 v7, 0x1

    .line 272
    .local v7, needsMeasuring:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v10

    .line 273
    .local v10, selectedPosition:I
    if-ltz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v14

    if-ge v10, v14, :cond_7

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v14, v10}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v11

    .line 276
    .local v11, view:Landroid/view/View;
    if-nez v11, :cond_3

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v14, v10, v15, v0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 281
    :cond_3
    if-eqz v11, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v14, v10, v11}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 286
    :cond_4
    if-eqz v11, :cond_7

    .line 289
    const/4 v5, 0x0

    .line 290
    .local v5, isItemSizeChanged:Z
    move-object/from16 v0, p0

    instance-of v14, v0, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v14, :cond_d

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v14

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/htc/fragment/widget/AbsSpinner;->getDefaultSize(II)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v15

    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/htc/fragment/widget/AbsSpinner;->getDefaultSize(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/htc/fragment/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkOrientation()V

    .line 298
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v14}, Lcom/htc/fragment/widget/AbsSpinner;->checkContainerSize(IIZ)V

    .line 300
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v14, p0

    .line 314
    check-cast v14, Lcom/htc/fragment/widget/CarouselWidget;

    move-object v15, v6

    check-cast v15, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {v14, v15}, Lcom/htc/fragment/widget/CarouselWidget;->generateDefaultLayoutParams(Lcom/htc/fragment/widget/Gallery$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 316
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 317
    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 327
    .end local v6           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v11, v1, v2}, Lcom/htc/fragment/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 329
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    add-int v8, v14, v15

    .line 330
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int v9, v14, v15

    .line 332
    const/4 v7, 0x0

    .line 335
    move-object/from16 v0, p0

    instance-of v14, v0, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v14, :cond_7

    .line 337
    if-eqz v5, :cond_6

    .line 338
    const-string v14, "CarouselWidget"

    const-string v15, "onMeasure -> measureThumbDrawable"

    invoke-static {v14, v15}, Lcom/htc/fragment/widget/CarouselLog;->dv(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v14}, Lcom/htc/fragment/widget/FastScroller;->measureThumbDrawable()V

    .line 343
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v14, v0, v11, v1, v2}, Lcom/htc/fragment/widget/FastScroller;->measureTmumbView(Lcom/htc/fragment/widget/AbsSpinner;Landroid/view/View;II)V

    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v14}, Lcom/htc/fragment/widget/FastScroller;->getOffset()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mHighBorder:I

    .line 346
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v14, :cond_e

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v15}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemX:I

    .line 355
    .end local v5           #isItemSizeChanged:Z
    .end local v11           #view:Landroid/view/View;
    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    .line 357
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v14, :cond_f

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    add-int v8, v14, v15

    .line 359
    if-nez v12, :cond_8

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int v9, v14, v15

    .line 370
    :cond_8
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 373
    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-static {v8, v0, v14}, Lcom/htc/fragment/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v4

    .line 374
    .local v4, heightSize:I
    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-static {v9, v0, v14}, Lcom/htc/fragment/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v13

    .line 376
    .local v13, widthSize:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lcom/htc/fragment/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 377
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 378
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/AbsSpinner;->mWidthMeasureSpec:I

    goto/16 :goto_0

    .line 255
    .end local v4           #heightSize:I
    .end local v7           #needsMeasuring:Z
    .end local v8           #preferredHeight:I
    .end local v9           #preferredWidth:I
    .end local v10           #selectedPosition:I
    .end local v13           #widthSize:I
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_1

    .line 257
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_2

    .line 259
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_3

    .line 261
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_4

    .line 322
    .restart local v5       #isItemSizeChanged:Z
    .restart local v7       #needsMeasuring:Z
    .restart local v8       #preferredHeight:I
    .restart local v9       #preferredWidth:I
    .restart local v10       #selectedPosition:I
    .restart local v11       #view:Landroid/view/View;
    :cond_d
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    if-nez v14, :cond_5

    .line 323
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    goto/16 :goto_5

    .line 349
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v15}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstItemY:I

    goto/16 :goto_6

    .line 363
    .end local v5           #isItemSizeChanged:Z
    .end local v11           #view:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int v9, v14, v15

    .line 364
    if-nez v3, :cond_8

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/fragment/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    add-int v8, v14, v15

    goto/16 :goto_7
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 608
    move-object v0, p1

    check-cast v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;

    .line 610
    .local v0, ss:Lcom/htc/fragment/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/fragment/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 612
    iget-wide v1, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 613
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataChanged:Z

    .line 614
    iput-boolean v5, p0, Lcom/htc/fragment/widget/AbsSpinner;->mNeedSync:Z

    .line 615
    iget-wide v1, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSyncRowId:J

    .line 616
    iget v1, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSyncPosition:I

    .line 617
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSyncMode:I

    .line 618
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 620
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 591
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 592
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 593
    .local v0, ss:Lcom/htc/fragment/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    .line 594
    iget-wide v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->position:I

    .line 599
    :goto_0
    return-object v0

    .line 597
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/fragment/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/FastScroller;->onSizeChanged(IIII)V

    .line 705
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->onMeasure(II)V

    .line 706
    return-void
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 507
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 508
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 509
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 510
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 514
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 515
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 516
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 517
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 518
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 519
    iget v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 523
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 514
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 523
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 391
    .local v0, childCount:I
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    .line 392
    .local v4, recycleBin:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstPosition:I

    .line 395
    .local v3, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 396
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 397
    .local v5, v:Landroid/view/View;
    add-int v2, v3, v1

    .line 398
    .local v2, index:I
    invoke-virtual {v4, v2, v5}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v2           #index:I
    .end local v5           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 472
    invoke-super {p0}, Lcom/htc/fragment/widget/AdapterView;->requestLayout()V

    .line 474
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 215
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataChanged:Z

    .line 216
    iput-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mNeedSync:Z

    .line 218
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 219
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 220
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 222
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 223
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 224
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate()V

    .line 225
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v0, -0x1

    .line 170
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 172
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->resetList()V

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/fragment/widget/FastScroller;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 180
    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 181
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 183
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4

    .line 184
    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mItemCount:I

    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mOldItemCount:I

    .line 185
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mItemCount:I

    .line 186
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkFocus()V

    .line 188
    new-instance v1, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/fragment/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/fragment/widget/AdapterView;)V

    iput-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 189
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 191
    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 193
    .local v0, position:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 196
    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkSelectionChanged()V

    .line 208
    .end local v0           #position:I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 209
    return-void

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkFocus()V

    .line 203
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->resetList()V

    .line 205
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method setContentGallery(Lcom/htc/fragment/widget/CarouselContentGallery;)V
    .locals 1
    .parameter "gallery"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->setContentGallery(Lcom/htc/fragment/widget/CarouselContentGallery;)V

    .line 787
    return-void
.end method

.method setDragBinGridView(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIsDragBinGridView:Z

    .line 872
    return-void
.end method

.method setExpandedPosition(I)V
    .locals 2
    .parameter "expos"

    .prologue
    .line 929
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 930
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I

    .line 935
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedPos:I

    .line 936
    return-void

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I

    goto :goto_0
.end method

.method setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScrollEnabled:Z

    .line 669
    if-eqz p1, :cond_1

    .line 670
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/fragment/widget/FastScroller;-><init>(Landroid/content/Context;Lcom/htc/fragment/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->stop()V

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    goto :goto_0
.end method

.method setIndicatorIndex(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 979
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mIndicatorIndex:I

    .line 980
    return-void
.end method

.method setLastIndicatorIndex(I)V
    .locals 0
    .parameter "lastin"

    .prologue
    .line 987
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 988
    return-void
.end method

.method setLateShrinkedFlag()V
    .locals 1

    .prologue
    .line 1375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 1376
    return-void
.end method

.method protected setOrientation()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 105
    .local v0, orientation:I
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    .line 106
    return-void

    .line 105
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 423
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 424
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate()V

    .line 425
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 411
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 413
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 414
    return-void

    .line 411
    .end local v0           #shouldAnimate:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 435
    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 436
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 437
    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 438
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 439
    invoke-virtual {p0, v0, p2}, Lcom/htc/fragment/widget/AbsSpinner;->layout(IZ)V

    .line 440
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 442
    .end local v0           #delta:I
    :cond_0
    return-void
.end method

.method setShrinkedPosition(I)V
    .locals 2
    .parameter "shpos"

    .prologue
    const/4 v1, -0x1

    .line 950
    iput p1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mShrinkedPos:I

    .line 951
    if-eq p1, v1, :cond_0

    .line 952
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setIndicatorIndex(I)V

    .line 953
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner;->setLastIndicatorIndex(I)V

    .line 955
    :cond_0
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 956
    return-void
.end method

.method setShrinkedPosition(IZ)V
    .locals 0
    .parameter "shpos"
    .parameter "isRequestLayout"

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 944
    if-eqz p2, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 947
    :cond_0
    return-void
.end method

.method startWaveRunnable()V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->start()V

    .line 1103
    return-void
.end method

.method startWidthHeightAnimation(II)V
    .locals 1
    .parameter "orgWidthHeight"
    .parameter "targetWidthHeight"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightRunnable:Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->start(II)V

    .line 998
    return-void
.end method
