.class Lcom/htc/fragment/widget/FastScroller$CountObserver;
.super Landroid/database/DataSetObserver;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/FastScroller;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller$CountObserver;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/FastScroller;Lcom/htc/fragment/widget/FastScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/FastScroller$CountObserver;-><init>(Lcom/htc/fragment/widget/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CountObserver;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mGallery:Lcom/htc/fragment/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/AbsSpinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setDragBinGridView(Z)V

    .line 433
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method
