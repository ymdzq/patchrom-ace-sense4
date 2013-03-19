.class public Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;
.super Ljava/lang/Object;
.source "EventGridView.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$GridViewItemInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/EventGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventsScrollerItemInfoGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;


# direct methods
.method protected constructor <init>(Lcom/htc/sunny2/widget/gridview/EventGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBouncePosition()I
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2600(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingBottom:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2700(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #calls: Lcom/htc/sunny2/widget/gridview/EventGridView;->getExtraPaddingRear()I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2800(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    add-int v0, v1, v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingRight:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2900(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #calls: Lcom/htc/sunny2/widget/gridview/EventGridView;->getExtraPaddingRear()I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$3000(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2200(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    return v0
.end method

.method public getFirstVisibleItemOffset()I
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1700(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1600(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1800(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1900(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mFirstIdx:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2000(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingTop:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    neg-int v1, v1

    iget v2, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->onScrollerReachTop()V

    :cond_0
    :goto_0
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    :goto_1
    return v1

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->onScrollerLeaveTop()V

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    neg-int v1, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mListItemCount:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1500(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    return v0
.end method

.method public getItemLength(I)I
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1200(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1300(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1400(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v1

    goto :goto_0
.end method

.method public getItemSpacing()I
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$900(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mHorizontalSpacing:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1000(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mVerticalSpacing:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$1100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    goto :goto_0
.end method

.method public getItemsInASet()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$800(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    return v0
.end method

.method public getLastVisibleItemOffset()I
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$500(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mLastIdx:I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$400(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOnScreenItems:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$600(Lcom/htc/sunny2/widget/gridview/EventGridView;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$700(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    neg-int v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLayoutHeight()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$3100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$3200(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/EventGridView;->mPrototypeFactory:Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;->getLayoutHeight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getTopBouncePosition()I
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2300(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingTop:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2400(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mPaddingLeft:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$2500(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    goto :goto_0
.end method

.method public getViewPortLength()I
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mOrientation:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$100(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewHeight:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$200(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventsScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/EventGridView;->mGLViewWidth:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/EventGridView;->access$300(Lcom/htc/sunny2/widget/gridview/EventGridView;)I

    move-result v0

    goto :goto_0
.end method
