.class Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;
.super Ljava/lang/Object;
.source "ControlButton.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/widget/ControlButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnShareItemClickListener"
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

.field private mBubbleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/modules/ui/widget/BubbleButton;",
            ">;",
            "Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mBubbleList:Ljava/util/List;

    iput-object p2, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    iget-object v8, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mBubbleList:Ljava/util/List;

    iget-object v6, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mAdapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-static {p3, v6}, Lcom/htc/album/helper/ShareMenuManager;->getShareItemIndex(ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)I

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/album/modules/ui/widget/BubbleButton;

    invoke-static {}, Lcom/htc/album/modules/ui/widget/ControlButton;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnShareItemClickListener][onItemClick] bID "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/htc/album/modules/ui/widget/BubbleButton;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public setBubbleItemClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnShareItemClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;

    return-void
.end method
