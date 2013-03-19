.class public Lcom/htc/fragment/widget/CarouselWidget;
.super Lcom/htc/fragment/widget/Gallery;
.source "CarouselWidget.java"

# interfaces
.implements Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;
.implements Lcom/htc/fragment/widget/DragSource;
.implements Lcom/htc/fragment/widget/DropTarget;
.implements Lcom/htc/fragment/widget/DragScroller;


# static fields
.field private static final LOCAL_LOGV:Z


# instance fields
.field final BOTTOM_SCROLL_SPEED:F

.field final LEFT_SCROLL_SPEED:F

.field final RIGHT_SCROLL_SPEED:F

.field final SCROLL_REGION:I

.field final TOP_SCROLL_SPEED:F

.field carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

.field private dividerPadding:I

.field private focusRect:Landroid/graphics/RectF;

.field private insertIndicator:Landroid/graphics/drawable/Drawable;

.field private isDrawIndicator:Z

.field private isDrawRect:Z

.field private isPortraitPreviousTime:Z

.field mAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mCancelAnimation:Z

.field mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

.field private mColor:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field mDragId:J

.field private mDragItemPos:I

.field private mDragItemView:Landroid/view/View;

.field private mDragMode:I

.field private mDragMode3layout:Z

.field mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

.field private mHandler:Landroid/os/Handler;

.field private mIsDrop:Z

.field private mIsInit:Z

.field private mIsRemove:Z

.field private mIsSuccessful:Z

.field private mLayoutRequester:Ljava/lang/Runnable;

.field private mMemoryMode:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPoolFocusWidth:I

.field private mRectLeft:I

.field private mRectTop:I

.field mReorderUri:Landroid/net/Uri;

.field private mShowIndicator:Z

.field mTarget:Lcom/htc/fragment/widget/DropTarget;

.field mToPos:I

.field skipAnimationEnd:Z

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->SCROLL_REGION:I

    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->TOP_SCROLL_SPEED:F

    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->LEFT_SCROLL_SPEED:F

    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:F

    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->BOTTOM_SCROLL_SPEED:F

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/fragment/widget/CarouselWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselWidget$1;-><init>(Lcom/htc/fragment/widget/CarouselWidget;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mLayoutRequester:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->SCROLL_REGION:I

    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->TOP_SCROLL_SPEED:F

    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->LEFT_SCROLL_SPEED:F

    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:F

    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->BOTTOM_SCROLL_SPEED:F

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/fragment/widget/CarouselWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselWidget$1;-><init>(Lcom/htc/fragment/widget/CarouselWidget;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mLayoutRequester:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    return-void
.end method

.method private createGreenIndicator()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawPortraitDivider(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawLandscapeDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawLandscapeDivider(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-gtz v10, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getReducedPosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v10

    if-gt v0, v10, :cond_5

    const/4 v9, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_0

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    int-to-float v10, v9

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v4, v4, 0x1

    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    move v3, v2

    :goto_1
    if-gt v3, v5, :cond_6

    if-eq v3, v7, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_7

    sub-int v10, v3, v2

    invoke-virtual {p0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_7

    :cond_6
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    :goto_2
    if-ltz v9, :cond_8

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_0

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_9

    int-to-float v10, v9

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    :cond_a
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_3
.end method

.method private drawPortraitDivider(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-gtz v10, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getReducedPosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v10

    if-gt v0, v10, :cond_5

    const/4 v9, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    int-to-float v10, v9

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v4, v4, 0x1

    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    move v3, v2

    :goto_1
    if-gt v3, v5, :cond_6

    if-eq v3, v7, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_7

    sub-int v10, v3, v2

    invoke-virtual {p0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_7

    :cond_6
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    :goto_2
    if-ltz v9, :cond_8

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-eq v9, v10, :cond_9

    int-to-float v10, v9

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    :cond_a
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_3
.end method

.method private drawRect(Landroid/graphics/Canvas;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    :cond_0
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    if-gez v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const-string v4, "app_selection_highlight"

    const v5, 0x2060033

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    :cond_1
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    :cond_3
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    :cond_4
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    const v4, 0x208019c

    const-string v5, "common_subnav_tab_rearrange"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/fragment/widget/CarouselSkinUtil;->getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_6
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    sub-int v3, p2, v1

    add-int v4, p2, v1

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    :cond_7
    return-void

    :cond_8
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    sub-int v3, p2, v0

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    add-int v5, p2, v0

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private findInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselWidget;->findPortraitInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselWidget;->findLandscapeInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v0

    goto :goto_0
.end method

.method private findLandscapeInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v14

    add-int v12, p3, v14

    if-gtz v2, :cond_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    const/4 v7, 0x1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v4

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-le v13, v3, :cond_3

    const/4 v8, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    if-lt v12, v14, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v10

    move v6, v5

    :goto_2
    if-gt v6, v10, :cond_f

    sub-int v14, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v14

    if-gt v12, v14, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    if-eqz v8, :cond_8

    if-ne v6, v4, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    if-le v6, v4, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    if-ne v6, v4, :cond_9

    if-ge v4, v13, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_9
    if-ne v6, v4, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-gt v12, v14, :cond_0

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_a
    if-ge v6, v4, :cond_b

    if-le v6, v13, :cond_b

    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_b
    if-ge v6, v4, :cond_c

    if-lt v6, v13, :cond_0

    :cond_c
    if-le v6, v4, :cond_d

    if-gt v6, v13, :cond_0

    :cond_d
    if-le v6, v4, :cond_0

    if-ge v6, v13, :cond_0

    if-ge v7, v3, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v8, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto/16 :goto_0
.end method

.method private findPortraitInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v14

    add-int v12, p2, v14

    if-gtz v2, :cond_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    const/4 v7, 0x1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v4

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-le v13, v3, :cond_3

    const/4 v8, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    if-lt v12, v14, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v10

    move v6, v5

    :goto_2
    if-gt v6, v10, :cond_f

    sub-int v14, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    if-gt v12, v14, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    if-eqz v8, :cond_8

    if-ne v6, v4, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    if-le v6, v4, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    if-ne v6, v4, :cond_9

    if-ge v4, v13, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_9
    if-ne v6, v4, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-gt v12, v14, :cond_0

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_a
    if-ge v6, v4, :cond_b

    if-le v6, v13, :cond_b

    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_b
    if-ge v6, v4, :cond_c

    if-lt v6, v13, :cond_0

    :cond_c
    if-le v6, v4, :cond_d

    if-gt v6, v13, :cond_0

    :cond_d
    if-le v6, v4, :cond_0

    if-ge v6, v13, :cond_0

    if-ge v7, v3, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v8, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto/16 :goto_0
.end method

.method private gInit(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    iput-boolean v6, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    const/16 v1, 0x3e9

    iput v1, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v1, :cond_0

    const v1, 0x205006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_0
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_2

    const v1, 0x2080036

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    if-gez v1, :cond_1

    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    :cond_1
    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    return-void

    :cond_2
    const v1, 0x2080041

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private getLocationFromPos(I[I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    aget v0, p2, v3

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    aput v0, p2, v3

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    aget v1, p2, v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p2, v0

    goto :goto_0
.end method

.method private initMember()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "There should be AT LEAST ONE element in the TAB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    goto :goto_0
.end method

.method private isDrawRect(I)Z
    .locals 4

    const/4 v0, 0x1

    const/high16 v3, 0x3f00

    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iput p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_3
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iput p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveIndicator(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v1

    if-gt p2, v1, :cond_1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v1

    if-gt p2, v1, :cond_3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_2
.end method

.method private removeIndicator()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    return-void
.end method

.method private startReduceCountAnimation()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method cancelAnimation()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->cancelAnimation()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchSetSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->dispatchSetSelected(Z)V

    return-void
.end method

.method doAnimationForDifferentTarget(Lcom/htc/fragment/widget/DropTarget;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v3, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    :cond_0
    sget-boolean v3, Lcom/htc/fragment/widget/FastScroller;->SCROLL_DEBUG:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget-object v3, v3, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    neg-int v4, v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget-object v3, v3, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    neg-int v3, v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public enableSecondBackground(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic forceStopPartialFling()V
    .locals 0

    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->forceStopPartialFling()V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/fragment/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method getFragment()Lcom/htc/fragment/widget/CarouselFragment;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

    return-object v0
.end method

.method getStateWidget()I
    .locals 1

    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    return v0
.end method

.method public getWidgetHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getWidgetWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method initFlags()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    return-void
.end method

.method initLayout()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientation()V

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x205006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x50

    :goto_1
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    :cond_3
    const/high16 v1, 0x300

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setScrollBarStyle(I)V

    iget-object v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_6

    const-string v1, "common_app_bkg_down_src"

    :goto_2
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_7

    const v2, 0x2080039

    :goto_3
    invoke-static {v3, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setBackgroundResource(I)V

    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/fragment/widget/CarouselWidget;->setPadding(IIII)V

    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/CarouselWidget;->setSpacing(I)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->forceLayout()V

    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselWidget;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/CarouselWidget;->setFocusableInTouchMode(Z)V

    return-void

    :cond_4
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    goto :goto_1

    :cond_6
    const-string v1, "common_app_bkg_down_land_src"

    goto :goto_2

    :cond_7
    const v2, 0x2080148

    goto :goto_3
.end method

.method isBusy()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isBusy()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDragging()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isDragging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startReduceCountAnimation()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;->layout(IZ)V

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    :cond_1
    return-void
.end method

.method public bridge synthetic offsetChildrenTopAndBottom(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->offsetChildrenTopAndBottom(I)V

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 15

    const/4 v5, 0x0

    const/4 v14, 0x1

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    const-string v1, "enable skipAnimationEnd"

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    check-cast v13, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v13}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v1, v14, :cond_3

    if-eqz v0, :cond_2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->realign()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "task_order"

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v0, :cond_4

    const/16 v7, 0x3ea

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v0

    move-object v10, v4

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    instance-of v1, v1, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTab()I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->setNextTab()V

    :cond_6
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    check-cast v1, Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/BinGridView;->addtoDB()V

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    if-nez v1, :cond_1

    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    goto/16 :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const v5, 0x205006b

    const/4 v3, -0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    iget-boolean v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eq v2, v4, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_1
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x50

    :goto_1
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mLayoutRequester:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mLayoutRequester:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_8

    const-string v2, "common_app_bkg_down_src"

    :goto_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_9

    const v3, 0x2080039

    :goto_3
    invoke-static {v4, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setBackgroundResource(I)V

    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/htc/fragment/widget/CarouselWidget;->setPadding(IIII)V

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_4

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    :cond_4
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_a

    const v2, 0x2080036

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    if-gez v2, :cond_5

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    :cond_5
    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v6, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    return-void

    :cond_6
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x5

    goto :goto_1

    :cond_8
    const-string v2, "common_app_bkg_down_land_src"

    goto :goto_2

    :cond_9
    const v3, 0x2080148

    goto :goto_3

    :cond_a
    const v2, 0x2080041

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5
.end method

.method public bridge synthetic onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDragEnter(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initMember()V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->createGreenIndicator()V

    return-void
.end method

.method public onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->removeIndicator()V

    return-void
.end method

.method public onDragOver(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 11

    move-object v0, p0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    iget-boolean v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getScrollX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, v0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->moveIndicator(II)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollRight()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollLeft()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getScrollY()I

    move-result v0

    add-int/2addr v0, p3

    invoke-direct {p0, v0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->moveIndicator(II)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p3, v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBottom()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getBottom()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollTop()V

    goto/16 :goto_0
.end method

.method public onDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 14

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    move-object v0, p0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    move-object/from16 v8, p6

    check-cast v8, Lcom/htc/fragment/widget/TaskInfo;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/fragment/widget/BinAdapter;->getUri()Landroid/net/Uri;

    move-result-object v11

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselWidget;->mAdapter:Lcom/htc/fragment/widget/BinAdapter;

    const/4 v1, 0x2

    new-array v9, v1, [I

    check-cast p1, Lcom/htc/fragment/widget/DropTarget;

    if-eq p0, p1, :cond_1

    iput-object v11, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    iput v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    iget-wide v1, v8, Lcom/htc/fragment/widget/TaskInfo;->_id:J

    iput-wide v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragId:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    invoke-direct {p0, v10, v9}, Lcom/htc/fragment/widget/CarouselWidget;->getLocationFromPos(I[I)V

    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->onAnimationEnd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "reorder_task"

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v8, Lcom/htc/fragment/widget/TaskInfo;->_id:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "from"

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "to"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "gId"

    const-string v5, "gId"

    invoke-virtual {v11, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    iput v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    if-eq v1, v10, :cond_2

    invoke-direct {p0, v10, v9}, Lcom/htc/fragment/widget/CarouselWidget;->getLocationFromPos(I[I)V

    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->onAnimationEnd()V

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    if-ne v1, v10, :cond_0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_host"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v1, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    goto/16 :goto_0

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDropAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 5

    const/4 v4, 0x0

    iput-boolean p2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    if-nez p2, :cond_2

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    aget v2, v0, v4

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x20401d4

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast p1, Lcom/htc/fragment/widget/DragSource;

    if-eq p1, p0, :cond_3

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOnItemLongClickListener(Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOnItemClickListener(Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fragment/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    const-string v2, "system_server"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tab_index"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tab_index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fragment/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->openDrawer()V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    iget v0, v0, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    iput-object p2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    iget v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    iget v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, p2, p0, v3, v1}, Lcom/htc/fragment/widget/DragController;->startDrag(Landroid/view/View;Lcom/htc/fragment/widget/DragSource;Ljava/lang/Object;I)V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initMember()V

    move v0, v2

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v2, :cond_3

    sparse-switch p1, :sswitch_data_0

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    move-result v1

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->movePrevious()Z

    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->moveNext()Z

    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    :cond_3
    sparse-switch p1, :sswitch_data_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    move-result v1

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->movePrevious()Z

    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->moveNext()Z

    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method openDrawer()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->open()V

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic partialFling(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/Gallery;->partialFling(III)V

    return-void
.end method

.method public bridge synthetic partialFling(IIIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->partialFling(IIIZ)V

    return-void
.end method

.method realign()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v3, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v8, :cond_3

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_4

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v7, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_a

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v8, :cond_8

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_9

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_9

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v7, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    :cond_a
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_b

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0
.end method

.method public scrollBottom()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    return-void
.end method

.method public bridge synthetic scrollBy(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    return-void
.end method

.method public scrollLeft()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    return-void
.end method

.method public scrollRight()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    return-void
.end method

.method public scrollTop()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    return-void
.end method

.method public bridge synthetic setAnimationDuration(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setAnimationDuration(I)V

    return-void
.end method

.method public bridge synthetic setCallbackDuringFling(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setCallbackDuringFling(Z)V

    return-void
.end method

.method public bridge synthetic setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setCallbackOnUnselectedItemClick(Z)V

    return-void
.end method

.method setCarouselHost(Lcom/htc/fragment/widget/CarouselHost;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    return-void
.end method

.method setCountText(ILjava/lang/String;)V
    .locals 3

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v2, 0x2020062

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setCountTextVisibility(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setCountTextVisibility(II)V
    .locals 4

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v2, 0x2020062

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method setCurrentTabUtil(I)V
    .locals 0

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->calibrateThumb(I)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    goto :goto_0
.end method

.method setDragger(Lcom/htc/fragment/widget/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fragment/widget/Gallery;->mDragger:Lcom/htc/fragment/widget/DragController;

    return-void
.end method

.method setDrawer(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    return-void
.end method

.method setEditorMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->setEditorMode(Z)V

    :cond_0
    return-void
.end method

.method setFragment(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

    return-void
.end method

.method public bridge synthetic setGravity(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setGravity(I)V

    return-void
.end method

.method setMemoryMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    return-void
.end method

.method public bridge synthetic setSpacing(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setSpacing(I)V

    return-void
.end method

.method setStateMode(I)V
    .locals 1

    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/BinAdapter;->setStateMode(I)V

    return-void
.end method

.method public bridge synthetic setUnselectedAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setUnselectedAlpha(F)V

    return-void
.end method

.method public bridge synthetic showContextMenu()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
