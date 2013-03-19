.class public Lcom/htc/album/modules/ui/widget/ControlBarContainer;
.super Landroid/widget/RelativeLayout;
.source "ControlBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;
    }
.end annotation


# instance fields
.field private mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

.field private mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

.field private mControlBars:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/album/modules/ui/widget/BaseControlBar",
            "<**>;>;"
        }
    .end annotation
.end field

.field private mFocusedBarId:I

.field private mOnButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mOnButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    invoke-virtual {p0, p2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setId(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mOnButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$1;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mOnButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    new-instance v0, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;

    invoke-direct {v0, p0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer$2;-><init>(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/modules/ui/widget/ControlBarContainer;)Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    return-object v0
.end method


# virtual methods
.method public addControlBar(ILcom/htc/album/modules/ui/widget/BaseControlBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/album/modules/ui/widget/BaseControlBar",
            "<**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setId(I)V

    invoke-virtual {p2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->addView(Landroid/view/View;)V

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mOnButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    return-void
.end method

.method public addRule(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public detach()V
    .locals 5

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/htc/album/modules/ui/widget/BaseControlBar",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getFocusedBarId()I
    .locals 1

    iget v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    return v0
.end method

.method public getFocusedControlBar()Lcom/htc/album/modules/ui/widget/BaseControlBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/album/modules/ui/widget/BaseControlBar",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    iget v1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    return-object v0
.end method

.method public setOnControlBarClickListener(Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBarClickListener:Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;

    return-void
.end method

.method public switchControlBar(I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mControlBars:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setVisibility(I)V

    iput p1, p0, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->mFocusedBarId:I

    :cond_1
    return-void
.end method
