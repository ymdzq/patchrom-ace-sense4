.class Lcom/htc/fragment/widget/FastScroller$FlingRunnable;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mEndPostionXY:I

.field private mIsCloseWindow:Z

.field private mIsRunning:Z

.field private mLastFlingXY:I

.field private mLongMode:Z

.field private mPos:I

.field private mScrollAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/fragment/widget/FastScroller;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/FastScroller;)V
    .locals 4
    .parameter

    .prologue
    .line 2235
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2236
    new-instance v0, Landroid/widget/Scroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {p1}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fragment/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 2239
    const/4 v0, 0x1

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {p1}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    const/16 v2, 0x5dd

    const-string v3, "CAROUSEL_SCROLL_ITEM"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mScrollAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 2240
    return-void
.end method

.method private endFling()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2379
    iput-boolean v3, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 2380
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2382
    sget-boolean v1, Lcom/htc/fragment/widget/FastScroller;->SCROLL_DEBUG:Z

    if-eqz v1, :cond_0

    .line 2383
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v1, v1, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2385
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v1, :cond_4

    .line 2386
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    #setter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v1, v2}, Lcom/htc/fragment/widget/FastScroller;->access$302(Lcom/htc/fragment/widget/FastScroller;I)I

    .line 2388
    iget v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int v0, v1, v2

    .line 2389
    .local v0, delta:I
    if-eqz v0, :cond_1

    .line 2390
    iget-boolean v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v1, :cond_3

    .line 2391
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/FastScroller;->adjustGallery(I)V

    .line 2400
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mPos:I

    iget-boolean v3, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mIsCloseWindow:Z

    #calls: Lcom/htc/fragment/widget/FastScroller;->endAnimation(IZ)V
    invoke-static {v1, v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$2600(Lcom/htc/fragment/widget/FastScroller;IZ)V

    .line 2419
    :goto_1
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mScrollAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v1, :cond_2

    .line 2420
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mScrollAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v1}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 2422
    :cond_2
    return-void

    .line 2393
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/Gallery;

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 2394
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbW:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbBottom:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$3100(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    .line 2396
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/FastScroller;->scrollContentFromThumb(I)V

    goto :goto_0

    .line 2402
    .end local v0           #delta:I
    :cond_4
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    #setter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v1, v2}, Lcom/htc/fragment/widget/FastScroller;->access$702(Lcom/htc/fragment/widget/FastScroller;I)I

    .line 2404
    iget v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int v0, v1, v2

    .line 2405
    .restart local v0       #delta:I
    if-eqz v0, :cond_5

    .line 2406
    iget-boolean v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v1, :cond_6

    .line 2407
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/FastScroller;->adjustGallery(I)V

    .line 2416
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mPos:I

    iget-boolean v3, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mIsCloseWindow:Z

    #calls: Lcom/htc/fragment/widget/FastScroller;->endAnimation(IZ)V
    invoke-static {v1, v2, v3}, Lcom/htc/fragment/widget/FastScroller;->access$2600(Lcom/htc/fragment/widget/FastScroller;IZ)V

    goto :goto_1

    .line 2409
    :cond_6
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/Gallery;

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 2410
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v3}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbRight:I
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$3200(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbH:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    .line 2412
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/FastScroller;->scrollContentFromThumb(I)V

    goto :goto_2
.end method

.method private startCommon()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2244
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/htc/fragment/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2246
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v4

    iget-boolean v4, v4, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v4, :cond_1

    .line 2247
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$1800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$1900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mOffset:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$2000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 2248
    .local v0, dataArea:I
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 2249
    .local v3, totalItemCount:I
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mItemWidth:I
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$1700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    .line 2251
    .local v2, itemWidth:I
    mul-int v4, v3, v2

    sub-int/2addr v4, v0

    if-lez v4, :cond_0

    .line 2252
    iput-boolean v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLongMode:Z

    .line 2265
    .end local v2           #itemWidth:I
    :goto_0
    iput-boolean v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 2266
    return-void

    .line 2254
    .restart local v2       #itemWidth:I
    :cond_0
    iput-boolean v7, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLongMode:Z

    goto :goto_0

    .line 2256
    .end local v0           #dataArea:I
    .end local v2           #itemWidth:I
    .end local v3           #totalItemCount:I
    :cond_1
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$2400(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$2500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mOffset:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$2000(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 2257
    .restart local v0       #dataArea:I
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 2258
    .restart local v3       #totalItemCount:I
    iget-object v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mItemHeight:I
    invoke-static {v4}, Lcom/htc/fragment/widget/FastScroller;->access$2300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v1

    .line 2260
    .local v1, itemHeight:I
    mul-int v4, v3, v1

    sub-int/2addr v4, v0

    if-lez v4, :cond_2

    .line 2261
    iput-boolean v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLongMode:Z

    goto :goto_0

    .line 2263
    :cond_2
    iput-boolean v7, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLongMode:Z

    goto :goto_0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 2374
    iget-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2429
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mItemCount:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$3300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2430
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->endFling()V

    .line 2512
    :goto_0
    return-void

    .line 2433
    :cond_0
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #setter for: Lcom/htc/fragment/widget/FastScroller;->mShouldStopFling:Z
    invoke-static {v5, v7}, Lcom/htc/fragment/widget/FastScroller;->access$3402(Lcom/htc/fragment/widget/FastScroller;Z)Z

    .line 2435
    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2436
    .local v2, scroller:Landroid/widget/Scroller;
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 2438
    .local v1, more:Z
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v5

    iget-boolean v5, v5, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v5, :cond_6

    .line 2439
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 2442
    .local v3, x:I
    iget v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLastFlingXY:I

    sub-int v0, v5, v3

    .line 2443
    .local v0, delta:I
    if-lez v0, :cond_2

    .line 2444
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$1800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$1900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2448
    :goto_1
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    add-int/2addr v6, v0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v5, v6}, Lcom/htc/fragment/widget/FastScroller;->access$302(Lcom/htc/fragment/widget/FastScroller;I)I

    .line 2450
    sget-boolean v5, Lcom/htc/fragment/widget/FastScroller;->SCROLL_DEBUG:Z

    if-eqz v5, :cond_1

    .line 2451
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v5, v5, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2453
    :cond_1
    iget-boolean v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v5, :cond_3

    .line 2454
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/fragment/widget/FastScroller;->adjustGallery(I)V

    .line 2465
    :goto_2
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$3400(Lcom/htc/fragment/widget/FastScroller;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2466
    iput v3, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLastFlingXY:I

    .line 2469
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->msgAcc:Lcom/htc/fragment/app/MessageAccelerator;
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$3000(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/app/MessageAccelerator;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/fragment/app/MessageAccelerator;->accelerate(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2446
    :cond_2
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$1900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$1800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 2456
    :cond_3
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v5

    check-cast v5, Lcom/htc/fragment/widget/Gallery;

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v6, v7}, Lcom/htc/fragment/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fragment/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 2457
    if-lez v0, :cond_4

    .line 2458
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v6, v0

    iget-object v7, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v8}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbW:I
    invoke-static {v9}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbBottom:I
    invoke-static {v9}, Lcom/htc/fragment/widget/FastScroller;->access$3100(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    .line 2462
    :goto_3
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/fragment/widget/FastScroller;->scrollContentFromThumb(I)V

    goto :goto_2

    .line 2460
    :cond_4
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v8}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbW:I
    invoke-static {v9}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbBottom:I
    invoke-static {v9}, Lcom/htc/fragment/widget/FastScroller;->access$3100(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_3

    .line 2473
    :cond_5
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 2475
    .end local v0           #delta:I
    .end local v3           #x:I
    :cond_6
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 2478
    .local v4, y:I
    iget v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLastFlingXY:I

    sub-int v0, v5, v4

    .line 2479
    .restart local v0       #delta:I
    if-lez v0, :cond_8

    .line 2480
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$2400(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$2500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2484
    :goto_4
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    add-int/2addr v6, v0

    #setter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v5, v6}, Lcom/htc/fragment/widget/FastScroller;->access$702(Lcom/htc/fragment/widget/FastScroller;I)I

    .line 2486
    sget-boolean v5, Lcom/htc/fragment/widget/FastScroller;->SCROLL_DEBUG:Z

    if-eqz v5, :cond_7

    .line 2487
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v5, v5, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2489
    :cond_7
    iget-boolean v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v5, :cond_9

    .line 2490
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/fragment/widget/FastScroller;->adjustGallery(I)V

    .line 2502
    :goto_5
    if-eqz v1, :cond_b

    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$3400(Lcom/htc/fragment/widget/FastScroller;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2503
    iput v4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLastFlingXY:I

    .line 2506
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->msgAcc:Lcom/htc/fragment/app/MessageAccelerator;
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$3000(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/app/MessageAccelerator;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/fragment/app/MessageAccelerator;->accelerate(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2482
    :cond_8
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$2400(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$2500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4

    .line 2492
    :cond_9
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v5

    check-cast v5, Lcom/htc/fragment/widget/Gallery;

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v6, v7}, Lcom/htc/fragment/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/fragment/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 2493
    if-lez v0, :cond_a

    .line 2494
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v7

    sub-int/2addr v7, v0

    iget-object v8, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbRight:I
    invoke-static {v8}, Lcom/htc/fragment/widget/FastScroller;->access$3200(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v9}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbH:I
    invoke-static {v10}, Lcom/htc/fragment/widget/FastScroller;->access$800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    .line 2498
    :goto_6
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/fragment/widget/FastScroller;->scrollContentFromThumb(I)V

    goto :goto_5

    .line 2496
    :cond_a
    iget-object v5, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/fragment/widget/FastScroller;->access$300(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbRight:I
    invoke-static {v8}, Lcom/htc/fragment/widget/FastScroller;->access$3200(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbTop:I
    invoke-static {v9}, Lcom/htc/fragment/widget/FastScroller;->access$700(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbH:I
    invoke-static {v10}, Lcom/htc/fragment/widget/FastScroller;->access$800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/fragment/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_6

    .line 2510
    :cond_b
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public startUsingDistance(III)V
    .locals 1
    .parameter "distance"
    .parameter "end"
    .parameter "pos"

    .prologue
    .line 2273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    .line 2274
    return-void
.end method

.method public startUsingDistance(IIIZ)V
    .locals 9
    .parameter "distance"
    .parameter "end"
    .parameter "pos"
    .parameter "closeWindow"

    .prologue
    const/4 v1, 0x0

    .line 2281
    iput-boolean p4, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mIsCloseWindow:Z

    .line 2283
    if-nez p1, :cond_1

    .line 2284
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #calls: Lcom/htc/fragment/widget/FastScroller;->endAnimation(IZ)V
    invoke-static {v0, p3, p4}, Lcom/htc/fragment/widget/FastScroller;->access$2600(Lcom/htc/fragment/widget/FastScroller;IZ)V

    .line 2354
    :cond_0
    :goto_0
    return-void

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mScrollAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_2

    .line 2290
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mScrollAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 2293
    :cond_2
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startCommon()V

    .line 2295
    iput p3, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mPos:I

    .line 2296
    iput v1, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mLastFlingXY:I

    .line 2297
    iput p2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mEndPostionXY:I

    .line 2300
    const v7, 0x3f2ac083

    .line 2303
    .local v7, d:F
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$2700(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/BinAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v6, 0x1

    .line 2304
    .local v6, count:I
    :goto_1
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$600(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v0

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingRight:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$1900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbW:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$400(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v2, v6, -0x1

    div-int v8, v0, v2

    .line 2312
    .local v8, size:I
    :goto_2
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mContentGallery:Lcom/htc/fragment/widget/CarouselContentGallery;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$2800(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/CarouselContentGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingClickAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$2700(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/BinAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2313
    if-lez p1, :cond_6

    move v0, p1

    :goto_3
    div-int/2addr v0, v8

    packed-switch v0, :pswitch_data_0

    .line 2331
    const v7, 0x40156042

    .line 2339
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_7

    .line 2340
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v5, v2

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2346
    :goto_5
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->msgAcc:Lcom/htc/fragment/app/MessageAccelerator;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$3000(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/app/MessageAccelerator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/fragment/app/MessageAccelerator;->accelerate(Ljava/lang/Runnable;)V

    .line 2350
    sget-boolean v0, Lcom/htc/fragment/widget/FastScroller;->SCROLL_DEBUG:Z

    if-eqz v0, :cond_0

    .line 2351
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2352
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2303
    .end local v6           #count:I
    .end local v8           #size:I
    :cond_4
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mListAdapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$2700(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/BinAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCount()I

    move-result v6

    goto/16 :goto_1

    .line 2304
    .restart local v6       #count:I
    :cond_5
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v0

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingTop:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2400(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mPaddingBottom:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2500(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbH:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$800(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v2, v6, -0x1

    div-int v8, v0, v2

    goto/16 :goto_2

    .line 2313
    .restart local v8       #size:I
    :cond_6
    neg-int v0, p1

    goto :goto_3

    .line 2316
    :pswitch_0
    const/high16 v7, 0x3f80

    .line 2317
    goto :goto_4

    .line 2319
    :pswitch_1
    const v7, 0x3fb33333

    .line 2320
    goto :goto_4

    .line 2322
    :pswitch_2
    const v7, 0x3fddf3b6

    .line 2323
    goto :goto_4

    .line 2325
    :pswitch_3
    const/high16 v7, 0x4000

    .line 2326
    goto :goto_4

    .line 2328
    :pswitch_4
    const v7, 0x400ccccd

    .line 2329
    goto :goto_4

    .line 2342
    :cond_7
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v4, p1

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$2900(Lcom/htc/fragment/widget/FastScroller;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v5, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_5

    .line 2313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    .line 2364
    if-eqz p1, :cond_0

    .line 2365
    invoke-direct {p0}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->endFling()V

    .line 2367
    :cond_0
    return-void
.end method
