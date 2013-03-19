.class Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AbsSinaMusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentDataSetObserver"
.end annotation


# instance fields
.field mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

.field mUiRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 764
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 768
    new-instance v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;-><init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;)V

    iput-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mUiRunnable:Ljava/lang/Runnable;

    .line 765
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    .line 766
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 786
    sget-object v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onChanged+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 788
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 792
    sget-object v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onInvalidated+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    sget-object v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onInvalidated-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    return-void
.end method
