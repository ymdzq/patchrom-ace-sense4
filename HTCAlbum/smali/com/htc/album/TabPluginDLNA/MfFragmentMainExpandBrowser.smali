.class public Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;
.super Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;
.source "MfFragmentMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfFragmentMainExpandBrowser"

.field protected static final timerSearchDeviceCode:I = 0x1


# instance fields
.field private mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

.field protected mChildAlreadyAppend:Z

.field protected mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

.field protected mCurStartIdx:J

.field private mDelayUpdateList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mErrorReason:Ljava/lang/String;

.field protected mErrorTitle:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsIdleUpdateList:Z

.field private mIsScrolling:Z

.field private mItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemRequested:Ljava/lang/Object;

.field private mLayoutEmptyView:Landroid/widget/RelativeLayout;

.field private mLayoutTitle:Landroid/widget/RelativeLayout;

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field private mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field protected mbDestroy:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutTitle:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemRequested:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mbDestroy:Z

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    new-instance v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$6;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$6;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onLaunchMediaListPage()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onMessageHandler2(Landroid/os/Message;)V

    return-void
.end method

.method private expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->getChildrenCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->IsContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    invoke-virtual {p1, v4}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->setCancelled(Z)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {p0, v5, v6, v5, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->initBrowse(JJ)V

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    invoke-virtual {p1, v4}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->setCancelled(Z)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerImg:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {p0, v5, v6, v5, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->initBrowse(JJ)V

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0
.end method

.method private onLaunchMediaListPage()V
    .locals 11

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-wide v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v7, v8}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    const-string v7, "MfFragmentMainExpandBrowser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onLaunchMediaListPage]cancelBrowse"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServiceDirectory()Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerInfo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addCurrentPageInfo()V

    const-string v7, "MfFragmentMainExpandBrowser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLaunchMediaListPage : top:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bottom:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurrentPageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v5, :cond_2

    const-string v7, "server_id"

    iget-object v8, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "server_name"

    iget-object v8, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v6, :cond_3

    const-string v7, "directory_info"

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v7, v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v7, "directmode"

    const-string v8, "directmode"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const-string v7, "browse_info"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_5

    const-class v7, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaListThumbnail;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v7, "goto_scene"

    const-string v8, "SceneDlnaGridview"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "dlna_bundle"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-class v7, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v7, 0x400

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private onMessageHandler2(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[HTCAlbum] Update list when scroll idle."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[HTCAlbum] Update children list"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    goto :goto_0

    :sswitch_1
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "searching timeout ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4ea5 -> :sswitch_0
    .end sparse-switch
.end method

.method private setBrowseDirectory(Ljava/util/LinkedList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-nez v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v18, "com.htc.album.action.DLNA_BROWSE_DMS_RECOVERY"

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v18, "browse_info"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v18, "server_id"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    const-string v18, "server_name"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    const-string v18, "directory_info"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v18, 0x2

    move/from16 v0, v18

    if-lt v9, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    :goto_2
    if-ge v13, v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    const-string v18, "MfFragmentMainExpandBrowser"

    const-string v19, "setBrowseDirectory: current container id invalid"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbVirtualFolderAdd:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getCurrentPageInfo()V

    const/16 v18, 0x1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const-string v18, "MfFragmentMainExpandBrowser"

    const-string v19, "[setBrowseDirectory][onLaunchMediaListPage]"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onLaunchMediaListPage()V

    :cond_4
    :goto_4
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    const-string v18, "MfFragmentMainExpandBrowser"

    const-string v19, "setBrowseDirectory: current item invalid"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v8, v13

    add-int/lit8 v13, v13, 0x4

    if-ge v13, v9, :cond_8

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v18, v13, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_8
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->queryRecoveryContentList(Ljava/lang/String;Ljava/util/LinkedList;)Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-lez v18, :cond_9

    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/htc/widget/MoreExpandableHtcListView;->expandAndSetChildrenWithOutAnimation(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    const-string v18, "MfFragmentMainExpandBrowser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[setBrowseDirecotry]ExpandChild : Container: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addDirectoryInfo()V

    add-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v18, v8, 0x3

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addPagesInfo(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_5
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mCurContainerName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v11

    const-string v18, "MfFragmentMainExpandBrowser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setBrowseDirectory error:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const-string v18, "MfFragmentMainExpandBrowser"

    const-string v19, "[setBrowseDirectory] virtual folder not add."

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private startSearchingTimer()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "startSearchingTimer"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopSearchingTimer()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "stopSearchingTimer"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addChildrenToListView(Ljava/util/LinkedList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z

    if-eqz v0, :cond_2

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[addChildrenToListView]: keep list and delay update bcz scrolling..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mChildAlreadyAppend:Z

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "ListView: append chidlren"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method public addMenu(Landroid/view/Menu;III)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public collapseAll()V
    .locals 2

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "Collpase to root"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->collapseAll()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    return-void
.end method

.method public enable2Pane()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    :cond_0
    return-void
.end method

.method public enableSourceContentPadding(Z)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-ne v4, p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    const-string v3, "MfFragmentMainExpandBrowser"

    const-string v4, "view null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 0

    return-void
.end method

.method public goParentFolder()V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "Move to parent folder"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method public initPageComponents(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f090059

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090058

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    new-instance v3, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-direct {v3, v0, v4}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/htc/album/Customizable/CustHtcListViewStyle;->setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;Z)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    const-string v3, "browse_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :cond_0
    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemRequested:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isWifiActive(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onConnectionCancel()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableDLNAControl(Z)V

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->initPageComponents(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mbDestroy:Z

    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onDestroy()V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

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

.method protected onErrorCommunication(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "error_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainFolderBrowser][onErrorCommunication]: Error Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isWifiActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x272c

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    const/16 v2, 0x40a

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    const/16 v2, 0x272b

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
    .end packed-switch
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mbDestroy:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onErrorCommunication(Landroid/os/Message;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onContentUpdate(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Ljava/util/LinkedList;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v14

    check-cast v14, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->getChildrenCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onContentUpdateComplete(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;I)Ljava/util/LinkedList;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addChildrenToListView(Ljava/util/LinkedList;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mbBrowseComplete:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->setCancelled(Z)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v13, :cond_2

    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "SYNC_SERVER_ADD: null!!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    const/4 v11, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v11, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    iget-object v2, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_ADD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    iget-object v3, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    iget-object v4, v13, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    move/from16 v0, v20

    int-to-long v6, v0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->appendRoot(Ljava/util/LinkedList;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerList()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    if-nez v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_ADD_LIST: size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v20, :cond_6

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->BlockingChangeRoot(Ljava/util/LinkedList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking change root : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    int-to-long v6, v11

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    const/4 v9, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->BlockingChangeRoot(Ljava/util/LinkedList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adapter count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->removePagesInfo()V

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->setBrowseDirectory(Ljava/util/LinkedList;)V

    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v10

    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking change root : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_4

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v15, :cond_9

    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "SYNC_SERVER_REMOVE: null!!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v11, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v19

    iget-object v2, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v11}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    :cond_a
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_SERVER_REMOVE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :sswitch_6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v20

    const/4 v11, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    if-nez v16, :cond_d

    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER: index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER server_id : index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestServerThumbnail(Ljava/lang/String;)V

    :cond_f
    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v12, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->SetImgPath(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshUI()V

    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYNC_PHOTO_SERVER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2767 -> :sswitch_0
        0x4e98 -> :sswitch_3
        0x4e99 -> :sswitch_4
        0x4e9a -> :sswitch_5
        0x4e9b -> :sswitch_1
        0x4e9c -> :sswitch_2
        0x4e9d -> :sswitch_6
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[HTCAlbum][ActivityExpandableListView][onNewIntent]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "[HTCAlbum][ExapandBrowser]onMenuItemSelected"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onRefresh()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->goParentFolder()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->collapseAll()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090093 -> :sswitch_0
        0x7f0a00da -> :sswitch_2
        0x7f0a00db -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mCurStartIdx:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->cancelBrowse(J)V

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    const/4 v2, 0x1

    const v6, 0x7f0a00db

    const v5, 0x7f0a00da

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-virtual {p0, p1, v6, v6, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    invoke-virtual {p0, p1, v5, v5, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    const v1, 0x7f090093

    const v4, 0x204021a

    invoke-virtual {p0, p1, v1, v4, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addMenu(Landroid/view/Menu;III)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v1, :cond_1

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "[HTCAlbum][ExapandBrowser]onPrepareOptionsMenu"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public onRefresh()V
    .locals 4

    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "onRefresh"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->refreshServers()V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->removeChildrenDirectoryInfo(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const v6, 0x7f0a011f

    const v5, 0x7f0a00d2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onResume()V

    const-string v1, "MfFragmentMainExpandBrowser"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->stopSearchingTimer()V

    const/16 v1, 0x272c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showFragmentDialog(ILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableSourceSwitch(ZZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showListView()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showEmptyView(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onStart()V

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onStop()V

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public paneRight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshServers()V
    .locals 1

    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->refreshServers()V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->startSearchingTimer()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    return-void
.end method

.method protected refreshUI()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected showDialogErrorCommunication()V
    .locals 3

    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected showDialogNoAuthorization()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_AUTHORIZATION;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected showDialogNoConnection()V
    .locals 3

    new-instance v1, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$4;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$4;-><init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    invoke-static {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;

    const v1, 0x7f0a00dd

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f0a011e

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showEmptyView(Ljava/lang/String;Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090061

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableSourceContentPadding(Z)V

    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "show empty view"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public showListView()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->stopSearchingTimer()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mLayoutEmptyView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableSourceContentPadding(Z)V

    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "show listview"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showTitleProgression(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->enableDataSourceUpdating(Z)V

    return-void
.end method
