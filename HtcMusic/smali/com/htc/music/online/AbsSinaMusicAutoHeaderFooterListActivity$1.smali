.class Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity$1;
.super Ljava/lang/Object;
.source "AbsSinaMusicAutoHeaderFooterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity$1;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 47
    return-void
.end method
