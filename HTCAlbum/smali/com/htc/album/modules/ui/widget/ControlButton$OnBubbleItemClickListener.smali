.class Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;
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
    name = "OnBubbleItemClickListener"
.end annotation


# instance fields
.field private mBobbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

.field private mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcPopupWindowWrapper;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->mBobbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    invoke-interface {v1, v0}, Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;->onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->mBobbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->mBobbleHost:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    :cond_1
    return-void
.end method

.method public setControlBubbleListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnBubbleItemClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    return-void
.end method
