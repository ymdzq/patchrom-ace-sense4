.class Lcom/htc/widget/HtcShareViaAdapter$1;
.super Landroid/database/DataSetObserver;
.source "HtcShareViaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcShareViaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcShareViaAdapter;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcShareViaAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcShareViaAdapter$1;->this$0:Lcom/htc/widget/HtcShareViaAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter$1;->this$0:Lcom/htc/widget/HtcShareViaAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/HtcShareViaAdapter;->mIsDataReady:Z
    invoke-static {v0, v1}, Lcom/htc/widget/HtcShareViaAdapter;->access$002(Lcom/htc/widget/HtcShareViaAdapter;Z)Z

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter$1;->this$0:Lcom/htc/widget/HtcShareViaAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcShareViaAdapter;->notifyDataSetChanged()V

    return-void
.end method
