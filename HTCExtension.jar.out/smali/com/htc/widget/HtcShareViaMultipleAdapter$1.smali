.class Lcom/htc/widget/HtcShareViaMultipleAdapter$1;
.super Landroid/database/DataSetObserver;
.source "HtcShareViaMultipleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcShareViaMultipleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcShareViaMultipleAdapter;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcShareViaMultipleAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcShareViaMultipleAdapter$1;->this$0:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultipleAdapter$1;->this$0:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/HtcShareViaMultipleAdapter;->mIsDataReady:Z
    invoke-static {v0, v1}, Lcom/htc/widget/HtcShareViaMultipleAdapter;->access$002(Lcom/htc/widget/HtcShareViaMultipleAdapter;Z)Z

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultipleAdapter$1;->this$0:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcShareViaMultipleAdapter;->notifyDataSetChanged()V

    return-void
.end method
