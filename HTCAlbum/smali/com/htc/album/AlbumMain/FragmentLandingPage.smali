.class public Lcom/htc/album/AlbumMain/FragmentLandingPage;
.super Lcom/htc/app/mf/MfFragment;
.source "FragmentLandingPage.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;
.implements Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;


# static fields
.field private static final SHOWME_KEYWORD:Ljava/lang/String; = "gallery"

.field private static final SHOWME_PAK_NAME:Ljava/lang/String; = "com.htc.showme"

.field private static final SHOWME_SEARCH_NAME:Ljava/lang/String; = "com.htc.showme.ui.Search"

.field private static final TAG:Ljava/lang/String; = "FragmentLandingPage"


# instance fields
.field private TabNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;"
        }
    .end annotation
.end field

.field private mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

.field private mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

.field private mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

.field private mContext:Landroid/content/Context;

.field private mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

.field private mGridview:Lcom/htc/widget/HtcGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHidePlugin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mMainView:Landroid/view/View;

.field private mOrientation:I

.field private mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowPlugin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/app/mf/MfFragment;-><init>()V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mMainView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    iput v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mOrientation:I

    iput v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenWidth:I

    iput v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenHeight:I

    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    new-instance v0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;-><init>(Lcom/htc/album/AlbumMain/FragmentLandingPage;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    new-instance v0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;-><init>(Lcom/htc/album/AlbumMain/FragmentLandingPage;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/htc/album/AlbumMain/FragmentLandingPage$3;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage$3;-><init>(Lcom/htc/album/AlbumMain/FragmentLandingPage;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->TabNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/AdapterLandingPage;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/AlbumMain/FragmentLandingPage;Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/AlbumMain/FragmentLandingPage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->notifyAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/LandingPageCacheThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/MfMainActivityBase;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    return-object v0
.end method

.method private isHVGA()Z
    .locals 3

    iget v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenWidth:I

    iget v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenHeight:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenWidth:I

    :goto_0
    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenHeight:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isPackageInstalled()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v3, "com.htc.showme"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "FragmentLandingPage"

    const-string v4, "Package %s is not installed"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.htc.showme"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    .locals 11

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00cf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "FragmentLandingPage"

    const-string v9, "[HTCAlbum][FragmentLandingPage][launchPluginFragment]: dlna service..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v8}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v1, 0x0

    const-string v8, "browse_info"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v8, "browse_info"

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    const-string v8, "FragmentLandingPage"

    const-string v9, "[HTCAlbum][launchPluginFragment]: end...."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v8}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "from_outside"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v8, v9, v2, v10}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "social_bundle"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v8, "social_intent"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    if-eqz v5, :cond_1

    const-string v8, "social_intent"

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    invoke-virtual {v8, p1, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->connectTo(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchShowMe()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.showme"

    const-string v3, "com.htc.showme.ui.Search"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v1, v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private layoutSetting()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mOrientation:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mScreenHeight:I

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->ACTION_BAR_HEIGHT_DIMEN:I

    invoke-virtual {v1, v3, v2, v3, v3}, Lcom/htc/widget/HtcGridView;->setPadding(IIII)V

    iget v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcGridView;->setNumColumns(I)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->isHVGA()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_2
    const-string v1, "FragmentLandingPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown orientation change. mOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyAdapter(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    invoke-virtual {v0, p1}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->setAdapterList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private prepareShowListAndNotify(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x2

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-virtual {v8}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabTag()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-virtual {v8}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-virtual {v8}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabTag()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    iput-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-array v4, v10, [I

    fill-array-data v4, :array_0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_9

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-virtual {v8}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabTag()Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    const-string v8, "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    aput v0, v4, v8

    goto :goto_5

    :cond_6
    const-string v8, "com.htc.dropbox"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    aput v0, v4, v8

    goto :goto_5

    :cond_7
    const-string v8, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    iput-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    goto :goto_5

    :cond_8
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v10, :cond_b

    aget v5, v4, v0

    const/4 v8, -0x1

    if-eq v5, v8, :cond_a

    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    iget-object v8, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->notifyAdapter(Ljava/util/ArrayList;)V

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public enable2Pane()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fullscreenMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public getFragmentName()Ljava/lang/String;
    .locals 1

    const-string v0, "FragmentLandingPage"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setPrimaryText(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const-string v4, "FragmentLandingPage"

    const-string v5, "[HTCAlbum][FragmentLandingPage][onActivityResult] + "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-virtual {v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v4, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v4, p3}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setIntent(Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->finishSelf()V

    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v4}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v4, "goFinish"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v4, v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string v4, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1390
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressedOverride()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->layoutSetting()V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    check-cast v0, Lcom/htc/album/AlbumMain/MfMainActivityBase;

    check-cast v0, Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iget-object v0, v0, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    new-instance v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/album/AlbumMain/AdapterLandingPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->instance()Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mPluginConnectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    const-string v1, "thread"

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    const-string v4, "local"

    const-string v5, "land"

    const/16 v6, 0xc

    const/4 v7, 0x1

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->start()V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromTabPluginFileCache()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/mf/MfFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v2, 0x7f030029

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mMainView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mMainView:Landroid/view/View;

    const v3, 0x7f090052

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcGridView;

    iput-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcGridView;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mGridview:Lcom/htc/widget/HtcGridView;

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcGridView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->layoutSetting()V

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mMainView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onDestroy()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :sswitch_0
    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->TabNameComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "listData"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    const-string v5, "com.htc.album.AlbumMain.AddShortCutActivity"

    sget v6, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v4, v5, v0, v6}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mDLNAPlugin:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-virtual {v4}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->launchShowMe()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7f0a019d -> :sswitch_2
        0x7f0a019e -> :sswitch_1
        0x7f0a019f -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareFullscreenMode()V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    const v7, 0x7f0a019f

    const v6, 0x7f0a019e

    const v5, 0x7f0a019d

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v1, 0x3

    const v2, 0x7f0a012b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v3, v6, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {p1, v3, v5, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->isPackageInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v3, v7, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/htc/app/mf/MfFragment;->onResume()V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setBackUpEnabled(Z)V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->enableHTCLandscape(Z)V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->invalidateOptionsMenu()V

    sget-object v1, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAddTabPlug:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAddTabPlug:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    const/4 v1, 0x0

    sput-object v1, Lcom/htc/album/AlbumMain/AddShortCutActivity;->mAddTabPlug:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->notifyAdapter(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToTabPluginFileCache(Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->fullscreenMode(Z)V

    return-void
.end method

.method public paneRight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readEnd(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iput-object p2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->notifyAdapter(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->prepareShowListAndNotify(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToTabPluginFileCache(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
