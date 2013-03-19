.class Lcom/htc/widget/HtcGridView$CheckForItemReleased;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForItemReleased"
.end annotation


# instance fields
.field mId:J

.field mPosition:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcGridView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcGridView;Lcom/htc/widget/HtcGridView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcGridView$CheckForItemReleased;-><init>(Lcom/htc/widget/HtcGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/high16 v1, 0x3f80

    iget-object v0, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcGridView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcGridView;

    iget-object v1, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->mPosition:I

    iget-wide v3, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->mId:J

    #calls: Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcGridView;->access$3001(Lcom/htc/widget/HtcGridView;Landroid/view/View;IJ)Z

    iget-object v0, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcGridView;

    iget v1, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->mPosition:I

    #calls: Lcom/htc/widget/HtcGridView;->setAlphaOfTheChild(I)V
    invoke-static {v0, v1}, Lcom/htc/widget/HtcGridView;->access$3100(Lcom/htc/widget/HtcGridView;I)V

    goto :goto_0
.end method

.method public start(Landroid/view/View;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->mView:Landroid/view/View;

    iput p2, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->mPosition:I

    iput-wide p3, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->mId:J

    iget-object v0, p0, Lcom/htc/widget/HtcGridView$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcGridView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
