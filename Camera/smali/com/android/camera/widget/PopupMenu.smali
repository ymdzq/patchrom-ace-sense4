.class public Lcom/android/camera/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# static fields
.field public static final QUALITY_MENU:I = 0x2

.field public static final SCENE_MENU:I = 0x3

.field public static final SETTING_MENU:I = 0x0

.field public static final SWITCH_MENU:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PopupMenu"


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field private m_Anchor:Landroid/view/View;

.field private m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_Context:Landroid/content/Context;

.field private m_Height:I

.field private m_Menu:Lcom/htc/widget/PopupBubbleWindow;

.field private m_NeedReopen:Z

.field private m_Rotation:Lcom/android/camera/rotate/UIRotation;

.field private m_Type:I

.field private m_View:Landroid/view/View;

.field private m_Width:I

.field private m_menuPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    iput v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    iput v2, p0, Lcom/android/camera/widget/PopupMenu;->m_menuPadding:I

    iput-boolean v2, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    new-instance v1, Lcom/android/camera/widget/PopupMenu$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/PopupMenu$1;-><init>(Lcom/android/camera/widget/PopupMenu;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->closingMenuItemClickedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/widget/PopupMenu$2;

    invoke-direct {v3, p0}, Lcom/android/camera/widget/PopupMenu$2;-><init>(Lcom/android/camera/widget/PopupMenu;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/widget/PopupMenu;->m_menuPadding:I

    iput p2, p0, Lcom/android/camera/widget/PopupMenu;->m_Type:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/widget/PopupMenu;Lcom/htc/widget/PopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/PopupMenu;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/widget/PopupMenu;Lcom/android/camera/rotate/RotateRelativeLayout;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/widget/PopupMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/widget/PopupMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    return p1
.end method

.method private convertToWindowLayoutSize(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    :pswitch_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getViewHeight()I
    .locals 4

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v1, v2, v3

    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v2, Lcom/android/camera/widget/IPopupMenuView;

    invoke-interface {v2}, Lcom/android/camera/widget/IPopupMenuView;->getViewHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/camera/widget/PopupMenu;->m_menuPadding:I

    add-int/2addr v2, v3

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 4

    const/4 v2, -0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    new-instance v1, Lcom/android/camera/widget/PopupMenu$3;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/PopupMenu$3;-><init>(Lcom/android/camera/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    new-instance v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v3}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Type:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(Lcom/android/camera/rotate/UIRotation;I)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/PopupMenu;->convertToWindowLayoutSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    invoke-direct {p0, v2}, Lcom/android/camera/widget/PopupMenu;->convertToWindowLayoutSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    iget v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    :cond_0
    iget v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v3}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v3}, Lcom/htc/widget/PopupBubbleWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v3}, Lcom/htc/widget/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v3}, Lcom/htc/widget/PopupBubbleWindow;->setExpandDirection(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setExpandDirection(I)V

    goto :goto_0
.end method

.method public setMenuSize(II)V
    .locals 0

    iput p2, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    iput p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    return-void
.end method

.method public setMenuSizeByType(I)V
    .locals 1

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(Lcom/android/camera/rotate/UIRotation;I)V

    return-void
.end method

.method public setMenuSizeByType(Lcom/android/camera/rotate/UIRotation;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v7

    if-eqz v7, :cond_3

    packed-switch p2, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v6, v0}, Lcom/android/camera/widget/PopupMenu;->setMenuSize(II)V

    goto :goto_0

    :pswitch_0
    const v7, 0x7f0b003f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v7, 0x7f0b0040

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v3

    if-le v3, v1, :cond_1

    move v0, v1

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    :cond_1
    move v0, v3

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    :pswitch_1
    const/4 v0, -0x2

    const v7, 0x7f0b0044

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_1

    :pswitch_2
    const v7, 0x7f0b004b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v7, 0x7f0b004c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v1

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    :cond_2
    move v0, v3

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    :pswitch_3
    const v7, 0x7f0b0047

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v7, 0x7f0b0048

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_1

    :cond_3
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    const v7, 0x7f0b0041

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v7, 0x7f0b0042

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v4

    if-le v4, v2, :cond_4

    move v6, v2

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :cond_4
    move v6, v4

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :pswitch_5
    const v7, 0x7f0b0045

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v6, -0x2

    goto/16 :goto_1

    :pswitch_6
    const v7, 0x7f0b004d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v7, 0x7f0b004e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v4

    if-le v4, v2, :cond_5

    move v6, v2

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    move v6, v4

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :pswitch_7
    const v7, 0x7f0b0049

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v7, 0x7f0b004a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setRotation(Lcom/android/camera/rotate/UIRotation;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(Lcom/android/camera/rotate/UIRotation;I)V

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->close()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/PopupMenu;->toggle(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public toggle(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->open()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->close()V

    goto :goto_0
.end method

.method public updatePopMenuSize()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Type:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(Lcom/android/camera/rotate/UIRotation;I)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    iget v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->update(II)V

    :cond_0
    return-void
.end method
