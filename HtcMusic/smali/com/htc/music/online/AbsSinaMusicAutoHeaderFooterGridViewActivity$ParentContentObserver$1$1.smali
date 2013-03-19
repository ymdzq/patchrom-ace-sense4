.class Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;
.super Ljava/lang/Object;
.source "AbsSinaMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->onCollapseChildViewEndIRT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 711
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 712
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    iget-object v2, v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v2, v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v2, v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 713
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    #calls: Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->updateGridView()V
    invoke-static {v1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->access$300(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V

    .line 714
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 715
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1$1;->this$1:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mResetFlag:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 716
    return-void
.end method
