.class public Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;
.super Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
.source "PlaybackFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/GalleryFooterBar",
        "<",
        "Lcom/htc/widget/HtcFooter;",
        "Lcom/htc/album/modules/ui/widget/PlayerControllerButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f090032

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    const v2, 0x7f030011

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/htc/album/modules/ui/widget/IconButton;

    const/16 v3, 0x11

    const/4 v4, 0x3

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/htc/album/modules/ui/widget/IconButton;-><init>(Lcom/htc/widget/HtcIconButton;III)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    const v3, 0x7f0a0131

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/IconButton;->setTextResource(I)V

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    iget-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/IconButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    iget-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/IconButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/IconButton;->getButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    invoke-virtual {v2, v6}, Lcom/htc/album/modules/ui/widget/IconButton;->lockBubbleExpandDirection(I)V

    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v0

    return-object v0
.end method

.method public addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->getMaxButtonCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    goto :goto_0
.end method

.method public doCenterControlPanel()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v4, Lcom/htc/widget/HtcFooter;

    const v5, 0x7f09002f

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v4, Lcom/htc/widget/HtcFooter;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v4, 0x6

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public findRimButton(I)Lcom/htc/widget/HtcRimButton;
    .locals 3

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMaxButtonCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getMoreButton()Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    return-object v0
.end method

.method public bridge synthetic onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v0

    return-object v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;
    .locals 4

    const/4 v0, 0x0

    sparse-switch p3, :sswitch_data_0

    :goto_0
    invoke-virtual {v0, p4}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    new-instance v1, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;-><init>(Lcom/htc/widget/HtcRimButton;III)V

    return-object v1

    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/IconButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/IconButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public setControlPanelEnabled(Z)V
    .locals 2

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    :cond_0
    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    :cond_1
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method
