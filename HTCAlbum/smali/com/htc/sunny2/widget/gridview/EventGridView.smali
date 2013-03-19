.class public Lcom/htc/sunny2/widget/gridview/EventGridView;
.super Lcom/htc/sunnyCore/widget/gridview/GridView;
.source "EventGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;,
        Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "EventGridView"


# instance fields
.field private final LOOP_BREAK_COUNT:I

.field private final mLock:Ljava/lang/Object;

.field protected mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

.field private mRecycler:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->LOOP_BREAK_COUNT:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mRecycler:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mVerticalSpacing:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mListItemCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->getExtraPaddingRear()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->getExtraPaddingRear()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/widget/gridview/EventGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I

    return v0
.end method

.method private cleanCellRecycler()V
    .locals 5

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mRecycler:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mRecycler:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Queue;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->unlink()V

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->recycle()V

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mRecycler:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_4
    return-void
.end method

.method private isFreeToFitNextItem(II)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    if-nez v4, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v4, p2}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getPrototypeByIndex(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    if-nez v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getWidth()I

    move-result v4

    add-int v2, p1, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I

    if-ge v2, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V
    .locals 8

    :try_start_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mRecycler:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    instance-of v5, p1, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    invoke-virtual {p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->recycle()V

    const-string v5, "EventGridView"

    const-string v6, "cell isn\'t EventCell in EventGridView."

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->getViewItem()Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->getRenderOrder()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setRenderOrder(I)V

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;

    move-object v3, v0

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->prototypeIdentifier:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->access$000(Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mRecycler:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected calMaxDistanceToTop(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)I
    .locals 7

    iget v5, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    neg-int v5, v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingTop:I

    sub-int v0, v5, v6

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_0

    if-gez v3, :cond_1

    :cond_0
    return v0

    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    const/4 v6, 0x1

    invoke-interface {v5, v6, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->findRowFirstItemIndex(II)I

    move-result v1

    :goto_1
    if-eq v2, v1, :cond_2

    move v2, v1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v5, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getPrototypeByIndex(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I

    add-int/2addr v5, v6

    sub-int/2addr v0, v5

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    const/4 v6, 0x2

    invoke-interface {v5, v6, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->findRowFirstItemIndex(II)I

    move-result v1

    goto :goto_1
.end method

.method protected calculateLayoutBestFit()Z
    .locals 9

    const/4 v0, 0x0

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mListItemCount:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I

    if-ge v5, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v6, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->findMaxRowQuota(I)I

    move-result v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v7}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->findLeastItemQuota()I

    move-result v7

    div-int v2, v6, v7

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v6}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->findSmallestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getWidth()I

    move-result v6

    mul-int v1, v2, v6

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingLeft:I

    sub-int v6, v5, v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingRight:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v1

    add-int/lit8 v7, v2, -0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mVerticalSpacing:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mExtraPaddingLeft:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mExtraPaddingLeft:I

    if-gez v6, :cond_0

    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mExtraPaddingLeft:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method protected checkNewMediaListOnLayout(III)Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;
    .locals 6

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->cleanCellRecycler()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getFactorySize()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-le v1, v0, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mRecycler:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->checkNewMediaListOnLayout(III)Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;

    move-result-object v2

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected createScrollerItemInfoGetter()Lcom/htc/sunnyCore/view/IViewScroller$ItemInfoGetter;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;-><init>(Lcom/htc/sunny2/widget/gridview/EventGridView;)V

    return-object v0
.end method

.method protected enableSingleItemPrototype()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected fillDown()V
    .locals 8

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mListItemCount:I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    if-nez v1, :cond_1

    const-string v6, "EventGridView"

    const-string v7, "[HTCAlbum][EventGridView][fillDown]: skip 1..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I

    sub-int v4, v6, v7

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v0, v2, 0xa

    const/4 v3, 0x0

    :cond_2
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I

    neg-int v6, v6

    if-le v4, v6, :cond_0

    if-ge v5, v2, :cond_0

    if-lt v5, v2, :cond_3

    const-string v6, "EventGridView"

    const-string v7, "[HTCAlbum][EventGridView][fillDown]: skip 2..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v4, v7}, Lcom/htc/sunny2/widget/gridview/EventGridView;->makeItemRow(IIIZ)I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget v6, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I

    sub-int v4, v6, v7

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    if-le v3, v0, :cond_2

    const-string v6, "EventGridView"

    const-string v7, "[HTCAlbum][EventGridView][fillDown]: leave while loop."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected fillUp()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    if-nez v0, :cond_1

    const-string v5, "EventGridView"

    const-string v6, "[HTCAlbum][EventGridView][fillUp]: skip 1..."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/EventGridView;->resetLastIdxInOnLayout(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    const/4 v1, 0x0

    iget v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    const/4 v4, 0x0

    if-ge v7, v3, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v5, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getPrototypeByIndex(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v1

    add-int v5, v2, v1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I

    add-int v2, v5, v6

    :goto_2
    if-ge v7, v3, :cond_0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I

    rsub-int/lit8 v6, v6, 0x0

    if-ge v5, v6, :cond_0

    if-gez v3, :cond_3

    const-string v5, "EventGridView"

    const-string v6, "[HTCAlbum][EventGridView][fillUp]: skip 2..."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    invoke-interface {v5, v6}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getPrototypeByIndex(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3, v8, v2, v8}, Lcom/htc/sunny2/widget/gridview/EventGridView;->makeItemRow(IIIZ)I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/EventGridView;->resetLastIdxInOnLayout(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v5, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getPrototypeByIndex(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    add-int v5, v2, v1

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I

    add-int v2, v5, v6

    goto :goto_2
.end method

.method public freeResource()V
    .locals 4

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->cleanCellRecycler()V

    :try_start_0
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->freeResource()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EventGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][EventGridView][freeResource]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected makeItemRow(IIIZ)I
    .locals 18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mListItemCount:I

    move/from16 v16, v0

    const/4 v14, 0x0

    const/4 v13, 0x0

    move/from16 v6, p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    if-eqz v4, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->isSeparable(I)Z

    move-result v8

    if-nez v8, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mExtraPaddingLeft:I

    add-int/2addr v4, v5

    add-int p2, p2, v4

    :cond_2
    const/4 v2, 0x0

    move/from16 v3, p1

    :goto_1
    move/from16 v0, v16

    if-le v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;

    if-eqz v2, :cond_5

    if-nez v3, :cond_4

    :cond_3
    :goto_2
    sub-int/2addr v6, v13

    goto :goto_0

    :cond_4
    const-string v4, "EventGridView"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v17, "[HTCAlbum][EventGridView][makeItemRow]: should be recycled: "

    aput-object v17, v5, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v7

    const/4 v7, 0x2

    const-string v17, " : "

    aput-object v17, v5, v7

    const/4 v7, 0x3

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->height()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v7

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->unlink()V

    iget-object v10, v2, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const v4, 0x7f7fffff

    const v5, 0x7f7fffff

    const/4 v7, 0x0

    invoke-virtual {v10, v4, v5, v7}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v4, v3}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getPrototypeByIndex(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;

    if-nez v15, :cond_6

    const-string v4, "EventGridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][EventGridView][makeItemRow]: skip1 : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mRecycler:Ljava/util/HashMap;

    invoke-interface {v15}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getIdentifier()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Queue;

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v9}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-nez v2, :cond_7

    invoke-interface {v15}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->create()Lcom/htc/sunnyCore/ViewItem;

    move-result-object v10

    check-cast v10, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    invoke-virtual {v10, v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V

    new-instance v2, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;

    invoke-interface {v15}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;->getIdentifier()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10, v4}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;-><init>(Lcom/htc/sunny2/widget/gridview/EventGridView;Lcom/htc/sunnyCore/ViewItem;Ljava/lang/Integer;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    const/4 v7, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->width()I

    move-result v12

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->height()I

    move-result v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mVerticalSpacing:I

    add-int/2addr v4, v12

    add-int p2, p2, v4

    if-nez v13, :cond_8

    move v13, v11

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    if-ge v3, v4, :cond_9

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    if-le v3, v4, :cond_a

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    :cond_a
    add-int/lit8 v4, v3, 0x1

    move/from16 v0, v16

    if-le v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->isSeparable(I)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v14, v3, 0x1

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/widget/gridview/EventGridView;->isFreeToFitNextItem(II)Z

    move-result v4

    if-nez v4, :cond_c

    add-int/lit8 v14, v3, 0x1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v4

    goto/16 :goto_3
.end method

.method protected onLayoutFreeAndCacheScreenItem()V
    .locals 6

    const/high16 v5, -0x8000

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I

    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->unlink()V

    invoke-virtual {v0, v5, v5, v5}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->setPosition(III)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mRecycler:Ljava/util/HashMap;

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mRecycler:Ljava/util/HashMap;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->prototypeIdentifier:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->access$000(Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected onScrollMotionIRT(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    return-void
.end method

.method protected onScrollerLeaveTop()V
    .locals 0

    return-void
.end method

.method protected onScrollerReachTop()V
    .locals 0

    return-void
.end method

.method protected resetLastIdxInOnLayout(I)I
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    if-nez v2, :cond_0

    :goto_0
    return p1

    :cond_0
    move v1, p1

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->findRowFirstItemIndex(II)I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    move p1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->findRowFirstItemIndex(II)I

    move-result v0

    goto :goto_1
.end method

.method public setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
