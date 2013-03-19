.class Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;
.super Ljava/lang/Object;
.source "AbsSinaMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->showMessageView(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    sget-object v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "showMessageView"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->hideEmptyErrorView()V

    .line 778
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    goto :goto_0
.end method
