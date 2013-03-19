.class final Lcom/htc/widget/HtcGridView$CheckForPressAnimation;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForPressAnimation"
.end annotation


# instance fields
.field private mAnimatedPos:I

.field private mAnimatedView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcGridView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcGridView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcGridView;

    iget v1, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcGridView;

    iget v1, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcGridView;

    iget v1, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcGridView;

    iget v1, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mPressedViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcGridView;->access$2500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v2, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->mAnimatedPos:I

    #calls: Lcom/htc/widget/HtcGridView;->get2DPressAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    invoke-static {v1, v2, v3}, Lcom/htc/widget/HtcGridView;->access$2600(Lcom/htc/widget/HtcGridView;Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mPressAnimators:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/widget/HtcGridView;->access$2700(Lcom/htc/widget/HtcGridView;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mPressAnimators:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/widget/HtcGridView;->access$2700(Lcom/htc/widget/HtcGridView;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public setAnimatedView(Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    iput p2, p0, Lcom/htc/widget/HtcGridView$CheckForPressAnimation;->mAnimatedPos:I

    return-void
.end method
