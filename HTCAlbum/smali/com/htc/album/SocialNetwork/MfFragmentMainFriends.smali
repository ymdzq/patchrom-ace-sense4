.class public Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;
.super Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;
.source "MfFragmentMainFriends.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfFragmentMainFriends"


# instance fields
.field private mButtonLogin:Lcom/htc/widget/HtcRimButton;

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

.field private mIsInRefresh:Z

.field private mLayoutEmptyView:Landroid/widget/RelativeLayout;

.field private mLayoutLoginView:Landroid/view/View;

.field private mLayoutMainView:Landroid/widget/RelativeLayout;

.field private mTextViewLogin:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mIsInRefresh:Z

    return-void
.end method

.method private setButtonOnClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    new-instance v1, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends$1;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends$1;-><init>(Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public RelayoutPageView(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;)V
    .locals 8

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v2, "MfFragmentMainFriends"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MfFragmentMainFriends][RelayoutPageView]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOGIN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v2, p1, :cond_c

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const-string v2, "social_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :cond_7
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->setButtonOnClickListener()V

    :cond_9
    :goto_2
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    invoke-virtual {p0, v7}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->enableSourceContentPadding(Z)V

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    if-eqz v1, :cond_8

    const-string v2, "opensense_tab"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    const-string v3, "login_btn_text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_c
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LIST:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v2, p1, :cond_d

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    :cond_d
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOADING:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v2, p1, :cond_9

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLoadingText:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->enablePageLoading(Z)V

    goto :goto_2
.end method

.method protected createAdapter()V
    .locals 8

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "MfFragmentMainFriends"

    const-string v6, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    if-nez v2, :cond_2

    const-string v5, "MfFragmentMainFriends"

    const-string v6, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: failed: getOpenSenseTabPlugin..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v5, "MfFragmentMainFriends"

    const-string v6, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: failed: onCreateFriendListPlugin..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "MfFragmentMainFriends"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: OS Plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v4, v5}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createFriendListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-nez v5, :cond_4

    const-string v5, "MfFragmentMainFriends"

    const-string v6, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: failed: unable to create plugin..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    check-cast v5, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v5, v6}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->setDataPlugin(Lcom/htc/opensense/album/plugin/FriendListPluginBase;)V

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onEnableSignInProcedure()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "MfFragmentMainFriends"

    const-string v6, "[HTCAlbum][MfFragmentMainFriends][createAdapter]: enable SignIn... "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v3, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    goto/16 :goto_0
.end method

.method protected createListView()V
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewFriends;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewFriends;-><init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onCreate()V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->setActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V

    goto :goto_0
.end method

.method public enable2Pane()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected enablePageLoading(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090061

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_4

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-eqz v0, :cond_5

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_5
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public enableSourceContentPadding(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LIST:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-super {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->enableSourceContentPadding(Z)V

    return-void
.end method

.method protected getContentView()I
    .locals 1

    const v0, 0x7f030030

    return v0
.end method

.method public initPageComponents()V
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->initPageComponents()V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutMainView:Landroid/widget/RelativeLayout;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutLoginView:Landroid/view/View;

    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mButtonLogin:Lcom/htc/widget/HtcRimButton;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mTextViewLogin:Landroid/widget/TextView;

    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][onActivityResult]: Begin"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x4e2a

    if-ne v1, p1, :cond_1

    if-eqz p3, :cond_1

    const-string v1, "contact_update"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][onActivityResult]: update contact list."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v2, 0x4e28

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    :cond_0
    :goto_0
    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][onActivityResult]: End"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v1, :cond_0

    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][onActivityResult]: pass to data plugin"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onUIActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onButtonClickLogin()V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MfFragmentMainFriends"

    const-string v1, "[HTCAlbum][MfFragmentMainFriends][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onDestroy()V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    :cond_0
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onDestroy()V

    :cond_1
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    const-string v0, "MfFragmentMainFriends"

    const-string v1, "[HTCAlbum][MfFragmentMainFriends][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onMenuContactPicker()V
    .locals 5

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getActiveUser()Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "service_name"

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "user_id"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.SocialNetwork.ActivityMainFriendsPicker"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x4e2a

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onMenuRefresh(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x274c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v2, 0x4e28

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mIsInRefresh:Z

    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_1
    const-string v1, "MfFragmentMainFriends"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onMenuRefresh] Unknow message ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_0
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOGIN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->RelayoutPageView(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOADING:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->RelayoutPageView(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->enablePageLoading(Z)V

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onSyncListComplete(Landroid/os/Message;)V

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LIST:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->RelayoutPageView(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;)V

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mIsInRefresh:Z

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onMenuRefresh(I)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->enablePageLoading(Z)V

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mIsInRefresh:Z

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_1
        0x2728 -> :sswitch_2
        0x274c -> :sswitch_5
        0x274f -> :sswitch_0
        0x2767 -> :sswitch_5
        0x4e84 -> :sswitch_1
        0x4e88 -> :sswitch_3
        0x10200001 -> :sswitch_4
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, -0x1

    const-string v1, "MfFragmentMainFriends"

    const-string v2, "[HTCAlbum][MfFragmentMainFriends][onOptionsItemSelected]:... "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onOptionsItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    const-string v1, "MfFragmentMainFriends"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onOptionsItemSelected]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onMenuContactPicker()V

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onMenuRefresh(I)V

    const/4 v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "MfFragmentMainFriends"

    const-string v1, "[HTCAlbum][MfFragmentMainFriends][onPause]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onPause()V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const-string v2, "MfFragmentMainFriends"

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onPrepareOptionsMenu]:"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mIsInRefresh:Z

    if-eqz v2, :cond_1

    const-string v2, "MfFragmentMainFriends"

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onPrepareOptionsMenu]: updating... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;->LOGIN:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mLayoutState:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$LAYOUT_STATE;

    if-ne v2, v3, :cond_3

    :cond_2
    const-string v2, "MfFragmentMainFriends"

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onPrepareOptionsMenu]: not ready... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->onPrepareOptionsMenu(Landroid/view/Menu;ILjava/lang/String;)Z

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    const v3, 0x7f0a0036

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x5

    const v3, 0x204021a

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v0, :cond_5

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    if-eqz v1, :cond_0

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->getCount()I

    move-result v2

    if-ltz v2, :cond_7

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getFriendsCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_8
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "MfFragmentMainFriends"

    const-string v3, "[HTCAlbum][MfFragmentMainFriends][onResume]:... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onResume()V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v2

    if-ne v4, v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mAdapter:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->enableSourceContentPadding(Z)V

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onResume()V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onSyncListComplete(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v3, "MfFragmentMainFriends"

    const-string v4, "[HTCAlbum][MfFragmentMainFriends][onSyncListComplete]:... "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "listviewPos"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    instance-of v3, v3, Lcom/htc/album/SocialNetwork/ListViewFriends;

    if-eqz v3, :cond_1

    if-eq v2, v5, :cond_0

    const-string v3, "listviewPos"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    check-cast v3, Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-virtual {v3, v2}, Lcom/htc/album/SocialNetwork/ListViewFriends;->setCurrPosition(I)V

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mListView:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onNotifyListComplete()V

    :cond_1
    const/16 v3, 0x272d

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v6, v4}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const/16 v3, 0x2728

    const/16 v4, 0x3e8

    invoke-virtual {p0, v3, v6, v4}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v0, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public setActivityTitle()V
    .locals 0

    return-void
.end method

.method public syncExternalRequest()V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "social_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    if-nez v2, :cond_1

    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    invoke-direct {v2, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    const-string v3, "service_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    :goto_0
    const-string v2, "MfFragmentMainFriends"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MfFragmentMainFriends][syncExternalRequest]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;

    const-string v3, "service_display"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method
