.class public Lcom/htc/album/SocialNetwork/ActivityMainComments;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;
.source "ActivityMainComments.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainComments"


# instance fields
.field private mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

.field private mBmpPhoto:Landroid/graphics/Bitmap;

.field private mBmpPhotoDefault:Landroid/graphics/Bitmap;

.field private mBmpPhotoFull:Landroid/graphics/Bitmap;

.field private mBmpUser:Landroid/graphics/Bitmap;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mClickListener_EditComment:Landroid/view/View$OnClickListener;

.field protected mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

.field private mCommentBtnLayout:Landroid/widget/RelativeLayout;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

.field private mIntent:Landroid/content/Intent;

.field mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtnLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainComments$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mClickListener_EditComment:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainComments$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainComments$3;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$3;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainComments$4;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments$4;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ActivityMainComments;)Lcom/htc/album/SocialNetwork/ListViewAdapterComments;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    return-object v0
.end method

.method private onUpdateCommentHeader()V
    .locals 6

    const-string v3, "ActivityMainComments"

    const-string v4, "[HTCAlbum][ActivityMainComments][onUpdateCommentHeader]: Begin"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPersonName(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoDescription(Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoDate(Ljava/lang/String;)V

    :cond_2
    const-string v3, "ActivityMainComments"

    const-string v4, "[HTCAlbum][ActivityMainComments][onUpdateCommentHeader]: End"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoDescription(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhotoDescription(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 0

    return-void
.end method

.method protected createAdapter()V
    .locals 0

    return-void
.end method

.method protected createListView()V
    .locals 0

    return-void
.end method

.method protected initDataPlugin(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v6}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    :cond_0
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-nez v6, :cond_2

    const-string v5, "ActivityMainComments"

    const-string v6, "[HTCAlbum][ActivityMainComment][initDataPlugin]: mSNManager is null..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateCommentViewPlugin()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    const/16 v6, 0x2724

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v5, v7}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const-string v5, "ActivityMainComments"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ActivityMainComment][initDataPlugin]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-static {v5, v1, v2, v6}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createCommentViewDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v5, v6}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "user_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityMainComments"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ActivityMainComment][initDataPlugin]Create opensense data plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object v1, v5

    goto/16 :goto_1
.end method

.method public initPageComponents()V
    .locals 4

    const v1, 0x7f030004

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x2090006

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->setContentView(I)V

    invoke-static {p0, v1}, Lcom/htc/album/picker/PickerConstants;->addBodyToEWL(Landroid/app/Activity;I)Lcom/htc/widget/EditWindowLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    :goto_0
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    invoke-static {v0, v1, v2}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;Z)V

    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mClickListener_EditComment:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setHint(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setInputType(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtn:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->setMode(I)V

    :cond_0
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setDataRequest(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->setContentView(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtnLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtnLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mCommentBtnLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getFooterBarBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string v2, "ActivityMainComments"

    const-string v3, "[HTCAlbum][ActivityMainComments][onActivityResult] +"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x4e29

    if-ne v2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string v2, "comment_update"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "photo_id"

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "comment_update"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v3, 0x4e30

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    :cond_0
    const-string v2, "ActivityMainComments"

    const-string v3, "[HTCAlbum][ActivityMainComments][onActivityResult] -"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onCreate]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onCreate()V

    const/16 v0, 0x4ee9

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SOCIAL_SERVICE_FEATURES:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "comments"

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->initDataPlugin(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onDestroy()V

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onDestroy]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->setUIHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDestroy()V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpUser:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoDefault:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method public onErrorNoActiveUser()V
    .locals 3

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onErrorNoActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onErrorNoList(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onErrorNoPhotoInfo()V
    .locals 3

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onErrorNoPhotoInfo]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e26

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onListHeaderClick(Landroid/view/View;)V
    .locals 5

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v1, v1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v1, :cond_2

    const-string v1, "ActivityMainComments"

    const-string v2, "[HTCAlbum][ActivityMainComments][onListHeaderClick]: listCommentItemClick"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/opensense/album/plugin/PersonData;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/opensense/album/plugin/PersonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    invoke-virtual {v1, v0}, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;->listCommentItemClick(Lcom/htc/opensense/album/plugin/PersonData;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HelperUtil;->gotoFacebookProfileTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v2, v2, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v2, :cond_1

    const-string v2, "ActivityMainComments"

    const-string v3, "[HTCAlbum][ActivityMainComments][onListItemClick]: listCommentItemClick"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/htc/opensense/album/plugin/PersonData;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/opensense/album/plugin/PersonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v2, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    invoke-virtual {v2, v1}, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;->listCommentItemClick(Lcom/htc/opensense/album/plugin/PersonData;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ActivityMainComments"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainComments][onListItemClick]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    if-eqz v0, :cond_0

    const-string v2, "ActivityMainComments"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainComments][onListItemClick]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HelperUtil;->gotoFacebookProfileTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4

    const/16 v2, 0x2738

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onRequestActiveUser()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onRequestCommentList()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncConection()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncActiveUser()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onSyncPhoto(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onErrorNoActiveUser()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onErrorNoPhotoInfo()V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onErrorNoList(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mLoadingText:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onListHeaderClick(Landroid/view/View;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_c
        0x274f -> :sswitch_a
        0x2750 -> :sswitch_b
        0x2760 -> :sswitch_7
        0x2761 -> :sswitch_9
        0x2766 -> :sswitch_8
        0x4e20 -> :sswitch_0
        0x4e26 -> :sswitch_1
        0x4e3f -> :sswitch_d
        0x4e84 -> :sswitch_2
        0x4e85 -> :sswitch_3
        0x4e89 -> :sswitch_5
        0x4e8a -> :sswitch_4
        0x4e90 -> :sswitch_6
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onPause()V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onPause()V

    return-void
.end method

.method public onRequestActiveUser()V
    .locals 3

    const-string v1, "ActivityMainComments"

    const-string v2, "[HTCAlbum][ActivityMainComments][onRequestActiveUser]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v2, "album_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediaInfo3(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v1, v1, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Medium;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumInfo(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Medium;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumInfo(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onRequestCommentList()V
    .locals 4

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onRequestCommentList]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentPhoto(Lcom/htc/opensense/social/MediumOp;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v1, 0x4e26

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onResume()V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onResume()V

    return-void
.end method

.method public onSyncActiveUser()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v2, "ActivityMainComments"

    const-string v3, "[HTCAlbum][ActivityMainComments][onSyncActiveUser]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedUsers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iput-object v0, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPersonIconURL(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUpdateCommentHeader()V

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v3, 0x4e89

    invoke-virtual {v2, v3, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    :cond_2
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncConection()V
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncConection]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/16 v0, 0x4e20

    invoke-virtual {p0, v0, v9, v8}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v0, :cond_1

    new-array v7, v4, [Lcom/htc/opensense/social/data/Medium;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v0

    aput-object v0, v7, v8

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/MediumOp;

    iput-object v0, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    const/16 v0, 0x4e26

    invoke-virtual {p0, v0, v9, v8}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncPhoto(Landroid/os/Message;)V
    .locals 10

    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: By bundle..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    const-string v0, "index_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const/4 v0, -0x2

    if-ne v0, v9, :cond_2

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: thumb: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: thumb ready... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhoto(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    if-ne v0, v9, :cond_0

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: full: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhoto]: full ready... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mBmpPhotoFull:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->setPhoto(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mAdapter:Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    const/16 v1, 0x4e89

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method public onSyncPhotoInfo(Landroid/os/Message;)V
    .locals 2

    const-string v0, "ActivityMainComments"

    const-string v1, "[HTCAlbum][ActivityMainComments][onSyncPhotoInfo]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mUIState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iput-object v0, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onUpdateCommentHeader()V

    goto :goto_0
.end method

.method public setActivityTitle()V
    .locals 0

    return-void
.end method

.method public syncExternalRequest()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v3, "photo_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v2, "album_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mDisplayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v2, "service_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments;->mIntent:Landroid/content/Intent;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainComments][setHeaderView]: photoID:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainComments][setHeaderView]: userID:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mUserID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ActivityMainComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityMainComments][setHeaderView]: service:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
