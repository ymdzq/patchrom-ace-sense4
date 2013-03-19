.class Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;
.super Landroid/database/ContentObserver;
.source "AbsSinaMusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentContentObserver"
.end annotation


# instance fields
.field mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

.field mIsProcessing:Z

.field private mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field mRequery:Ljava/lang/Runnable;

.field mResetFlag:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V
    .locals 1
    .parameter "handler"
    .parameter "activity"

    .prologue
    .line 743
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    .line 705
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$1;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 722
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mResetFlag:Ljava/lang/Runnable;

    .line 728
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$3;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$3;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mRequery:Ljava/lang/Runnable;

    .line 744
    iput-object p2, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    .line 745
    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    return-object v0
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 752
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "ParentContentObserver.onChange+"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-boolean v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    if-eqz v1, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-boolean v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    if-nez v1, :cond_0

    .line 755
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    .line 756
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 757
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mRequery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    sget-object v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "ParentContentObserver.onChange-"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
