.class public Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.super Lcom/htc/album/AlbumMain/MainActivityBase;
.source "ActivityAlbumFolderSelector.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DecodeThread;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$DataUpdateNotifier;,
        Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$BitmapDecodeNotifier;
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_PICKER_VIEW:I = 0x14

.field private static final LOG_TAG:Ljava/lang/String; = "ActivityAlbumFolderSelector"

.field private static final MSG_INVISIBLE_LOADING_ICON:I = 0x5

.field private static final MSG_REFRESH_ADAPTER:I = 0x1

.field private static final MSG_REFRESH_CHKBOX:I = 0x3

.field private static final MSG_REFRESH_SELECTALL:I = 0x4

.field private static final MSG_SET_BITMAP:I = 0x2


# instance fields
.field private SELECT_ALL_ITEM:Ljava/lang/String;

.field private mBroadcastReceiver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;

.field private mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

.field private mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

.field private mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerUI:Landroid/os/Handler;

.field private mHtcListView:Lcom/htc/widget/HtcListView;

.field private mMediaType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mMediaType:I

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SELECT_ALL_ITEM:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$4;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$4;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SELECT_ALL_ITEM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onUpdateProgressVisibility(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onCancel()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onConfirm()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->finish()V

    return-void
.end method

.method private onConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getDeSelectedItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doSave(Ljava/util/ArrayList;)V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->setResult(I)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->finish()V

    return-void
.end method

.method private onUpdateProgressVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    return-void
.end method


# virtual methods
.method public enableActionBarUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableRightFooter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandlerUI:Landroid/os/Handler;

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
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onHandleActionBarBarLayoutChange()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
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
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onConfirm()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onCancel()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v12, 0x7f0a003b

    const v8, 0x7f030018

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MainActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x204014f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SELECT_ALL_ITEM:Ljava/lang/String;

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x2090004

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->setContentView(I)V

    invoke-static {p0, v8}, Lcom/htc/album/picker/PickerConstants;->addBodyToEWL(Landroid/app/Activity;I)Lcom/htc/widget/EditWindowLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v6, v11}, Lcom/htc/widget/EditWindowLayout;->setupFooterButtons(I)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v7, 0x20401ee

    invoke-virtual {v6, v7}, Lcom/htc/widget/EditWindowLayout;->setLeftButtonLabel(I)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v7, 0x2020004

    new-instance v8, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v7, 0x7f0a0001

    invoke-virtual {v6, v7}, Lcom/htc/widget/EditWindowLayout;->setRightButtonLabel(I)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v7, 0x2020007

    new-instance v8, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$3;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$3;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v6}, Lcom/htc/widget/EditWindowLayout;->initEditTitleBarStyle()V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v6, v12}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(I)V

    :goto_0
    const v6, 0x7f090042

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListView;

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-static {p0, v6, v9}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;Z)V

    new-instance v6, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-direct {v6, p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    new-instance v6, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mBroadcastReceiver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {v2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaConnect(Landroid/content/IntentFilter;)V

    invoke-static {v2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaDisconnect(Landroid/content/IntentFilter;)V

    invoke-static {v2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->addToMonitorMediaScan(Landroid/content/IntentFilter;)V

    const-string v6, "file"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mBroadcastReceiver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;-><init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorageUri()Z

    move-result v0

    iget v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mMediaType:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mMediaType:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneVideosUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mMediaType:I

    and-int/lit8 v6, v6, 0xe

    if-eqz v6, :cond_2

    sget-object v6, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    iget v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mMediaType:I

    and-int/lit16 v6, v6, 0xe0

    if-eqz v6, :cond_3

    sget-object v6, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v4, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onHandleActionBarBarLayoutChange()V

    sget-object v6, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SHOW_HIDE_ITEM:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v7, "local_album"

    invoke-static {v6, v7}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->setContentView(I)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v6, :cond_5

    new-instance v6, Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getUIHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-direct {v6, v7, v8, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v6

    invoke-interface {v6, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v6

    invoke-interface {v6, v12}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    :cond_5
    const v6, 0x7f090040

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f090043

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v6, v5, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v7, 0x14

    invoke-virtual {v6, v11, v7}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    const v6, 0x7f090041

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v3, v9, v9, v6, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v3, v9, v9, v9, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0001

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ActivityAlbumFolderSelector"

    const-string v1, "[onDestroy] +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mBroadcastReceiver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mContentObserver:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->release()V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onDestroy()V

    const-string v0, "ActivityAlbumFolderSelector"

    const-string v1, "[onDestroy] -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    const-string v1, "ActivityAlbumFolderSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityAlbumFolderSelector][onOptionsItemSelected]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onConfirm()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onCancel()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onResume()V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->enableSourceContentPadding(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setFullscreen(Z)V
    .locals 0

    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method
