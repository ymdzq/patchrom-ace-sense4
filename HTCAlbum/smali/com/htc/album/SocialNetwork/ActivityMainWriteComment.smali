.class public Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "ActivityMainWriteComment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainWriteComment"


# instance fields
.field private final FOOTER_BAR_ONLINE_WRITE_COMMENTS:I

.field private mEditText:Lcom/htc/widget/HtcEditText;

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

.field private mEnableCommentBtn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->FOOTER_BAR_ONLINE_WRITE_COMMENTS:I

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Lcom/htc/widget/HtcEditText;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onWriteComment()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    return v0
.end method

.method private initPageComponents()V
    .locals 5

    const v1, 0x7f030005

    const v4, 0x2020005

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x2090004

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setContentView(I)V

    invoke-static {p0, v1}, Lcom/htc/album/picker/PickerConstants;->addBodyToEWL(Landroid/app/Activity;I)Lcom/htc/widget/EditWindowLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    :goto_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setupFooterButtons(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020004

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020007

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, v4, v2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    new-instance v1, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V

    invoke-virtual {v0, v4, v1}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x20402e5

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setCenterButtonLabel(I)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    :goto_1
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcEditText;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Lcom/htc/widget/HtcEditText;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setMode(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Lcom/htc/widget/HtcEditText;

    new-instance v1, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setContentView(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v3, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onHandleActionBarBarLayoutChange()V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onWriteComment()V
    .locals 4

    const-string v2, "ActivityMainWriteComment"

    const-string v3, "[HTCAlbum][ActivitymainWriteComment][onClick]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "comment_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->finish()V

    return-void
.end method

.method private setEditPadding(II)V
    .locals 3

    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public RelayoutPageView()V
    .locals 0

    return-void
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableCommentBtn(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v1, 0x2020005

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    goto :goto_0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x204020b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBubbleDismissed()V
    .locals 0

    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onHandleActionBarBarLayoutChange()V

    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onWriteComment()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->initPageComponents()V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onHandleActionBarBarLayoutChange()V

    return-void
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->enableRightFooter()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Note_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20402e5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    return-object v0
.end method

.method protected onHandleActionBarBarLayoutChange()V
    .locals 5

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v2

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setEditPadding(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 2

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->RelayoutPageView()V

    return-void
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestFooterBar()Z
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
