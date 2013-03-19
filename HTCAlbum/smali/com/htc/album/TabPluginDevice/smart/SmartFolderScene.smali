.class public Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.source "SmartFolderScene.java"

# interfaces
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;,
        Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;
    }
.end annotation


# static fields
.field public static DEFAULT_FIRST_LAUNCH_EVENTS:Z = false

.field private static EVENT_FONT_SCALE:F = 0.0f

.field public static KEY_FIRST_LAUNCH_EVENTS:Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String; = "SmartFolderScene"


# instance fields
.field private mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

.field private mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshWhenNetworkConnection:Z

.field private mShowDialogNoConnection:Z

.field private mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "first_launch_events"

    sput-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->KEY_FIRST_LAUNCH_EVENTS:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->DEFAULT_FIRST_LAUNCH_EVENTS:Z

    const/high16 v0, 0x3f80

    sput v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->EVENT_FONT_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->UNKNOW:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->unregisterNetworkStateReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public static getFirstLaunchEventsPref(Landroid/content/Context;)Z
    .locals 5

    sget-boolean v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->DEFAULT_FIRST_LAUNCH_EVENTS:Z

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->KEY_FIRST_LAUNCH_EVENTS:Ljava/lang/String;

    sget-boolean v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->DEFAULT_FIRST_LAUNCH_EVENTS:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    const-string v2, "SmartFolderScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SmartFolderScene][getFirstLaunchEventsPref]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private onRefreshAddress(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-interface {v0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->unlockNetworkAccessWarning()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateEventAddress(Z)V

    :cond_1
    return-void
.end method

.method private registerNetworkStateReceiver(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "SmartFolderScene"

    const-string v2, "[HTCAlbum][SmartFolderScene][registerNetworkStateReceiver]: start to monitor network state..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$networkStateReceiver;-><init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showDialogFirstLaunchTips(Landroid/content/Context;)V
    .locals 5

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    sget-object v4, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->UNKNOW:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-interface {v0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->onNotifyServiceFirstTimer()V

    :cond_2
    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->RUNNING:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->KEY_FIRST_LAUNCH_EVENTS:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private unregisterNetworkStateReceiver(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "SmartFolderScene"

    const-string v1, "[HTCAlbum][SmartFolderScene][unregisterNetworkStateReceiver]: stop to monitor network state..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "SmartFolderAdapter"

    return-object v0
.end method

.method protected doCreateAdapter(Landroid/app/Activity;)Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    .locals 6

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->getAdapterMediaType()I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;-><init>(Lcom/htc/sunnyCore/SunnyContext;Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public finishDialogFirstTimer(Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V

    :cond_0
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->FINISHED:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    return-void
.end method

.method protected getThumbnailSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "SmartEventThumbnailScene"

    return-object v0
.end method

.method public isFontScaleChanged(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v3, "SmartFolderScene"

    const-string v4, "[HTCAlbum][SmartFolderScene][isFontScaleChanged]: skip... "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_scale"

    sget v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->EVENT_FONT_SCALE:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    const-string v3, "SmartFolderScene"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "[HTCAlbum][SmartFolderScene][isFontScaleChanged]: default: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->EVENT_FONT_SCALE:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, ", new: "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->EVENT_FONT_SCALE:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    sput v2, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->EVENT_FONT_SCALE:F

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public isHostScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindAdapter()V
    .locals 2

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onBindAdapter()V

    const-string v0, "SmartFolderScene"

    const-string v1, "[HTCAlbum][SmartFolderScene][onBindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v0, v0, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/EventGridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/EventGridView;->setPrototypeFactory(Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;)V

    :cond_0
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsInAnimation:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->setGlobalBackgroundOrOverlapRoundCorner(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateGridView(Landroid/content/Context;Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 9

    const-string v2, "SmartFolderScene"

    const-string v3, "[HTCAlbum][SmartFolderScene][onCreateGridView]: Begin"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v6, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getHeight()I

    move-result v3

    add-int v7, v2, v3

    new-instance v2, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    iget v3, v8, Landroid/graphics/Point;->x:I

    invoke-direct {v2, v3}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->attachScreenControl(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridViewScreenControl;)V

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->setViewTopMargin(I)V

    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x208003f

    const v3, 0x7f020038

    const v4, 0x208003e

    const v5, 0x7f020037

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;IIII)V

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/EventGridViewWithPrepNotify;->setHtcFastScrollerRes(Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V

    const-string v2, "SmartFolderScene"

    const-string v3, "[HTCAlbum][SmartFolderScene][onCreateGridView]: End"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected onCreateParams4Preparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 4

    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->setCacheSet(I)V

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->enableFileCache()V

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->setMaxTextureCount(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "BUNDLE_ENABLE_QUALITY_OPTIONS"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->setExtra(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-interface {v1, v3}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setEnableNetworkAccessWarning(Z)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->isFontScaleChanged(Landroid/content/Context;)Z

    move-result v1

    if-ne v3, v1, :cond_2

    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->resetBottomViewHeight()V

    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v1

    return-object v1
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    new-instance v1, Lcom/htc/album/Animation/animationSetEventView;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetEventView;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->unregisterNetworkStateReceiver(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->unbindAddressListener(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDestroyScene()V

    return-void
.end method

.method protected onDropListItemClick(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->dismissDropList()V

    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter4DropList:Lcom/htc/album/AlbumMain/AdapterEventsDropList;

    invoke-virtual {v3, p1}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x37

    if-ne v3, v2, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "from_outside"

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mIsFromOutside:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "SceneLocalFolder"

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-static {v3, v4}, Lcom/htc/album/Customizable/CustAlbumCollection;->setDefaultAlbumCollection(Landroid/content/Context;Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;)V

    :cond_1
    return-void
.end method

.method public onItemSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->isSeparable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onItemSelected(I)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v1, v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateEventCache(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    check-cast v1, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->updateLocationInfo([Lcom/htc/AddressFinderService/interfaces/AddressData;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x145a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/htc/album/TabPluginDevice/smart/EventSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "SmartFolderScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SmartFolderScene][onOptionsItemSelected] SETTINGS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->showDialogNoConnection()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008f -> :sswitch_0
        0x7f090093 -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onResume()V

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/util/DateTimeManager;->isSystemDateChanged(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v2

    if-ne v3, v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    if-ne v3, v2, :cond_3

    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->getAutoRetrievePref(Landroid/content/Context;)Z

    move-result v1

    if-ne v3, v1, :cond_1

    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->onRefreshAddress(Z)V

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mShowDialogNoConnection:Z

    if-ne v3, v2, :cond_1

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mRefreshWhenNetworkConnection:Z

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->registerNetworkStateReceiver(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected onResumePreparatorInBackground()V
    .locals 0

    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onSendToBackground(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onSendToForeground(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    const-string v2, "SmartFolderScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SmartFolderScene][onSendToForeground]: check first launch status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    sget-object v3, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->UNKNOW:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->getFirstLaunchEventsPref(Landroid/content/Context;)Z

    move-result v1

    if-ne v6, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->showDialogFirstLaunchTips(Landroid/content/Context;)V

    :goto_0
    const-string v2, "SmartFolderScene"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[HTCAlbum][SmartFolderScene][onSendToForeground]: check first launch preference: "

    aput-object v5, v3, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, ", show tips: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;

    invoke-interface {v2, v6}, Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;->setEnableNetworkAccessWarning(Z)V

    :cond_1
    return-void

    :cond_2
    sget-object v2, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;->FINISHED:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->mTipsStatus:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$DLG_TIPS_STATUS;

    goto :goto_0
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onUpdateAddressBegin()V
    .locals 0

    return-void
.end method

.method public onUpdateAddressEnd()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->requestUpdateEventCache(I)V

    :cond_0
    return-void
.end method

.method public onUpdateAddressResult([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->updateLocationInfo([Lcom/htc/AddressFinderService/interfaces/AddressData;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SmartFolderScene"

    const-string v1, "data is null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onUpdateGridViewPadding(Landroid/app/Activity;Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    instance-of v2, p1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    invoke-virtual {p2, v4, v1, v0, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0
.end method

.method protected onUpdateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v3, 0x7f090093

    const v4, 0x7f0a00af

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v3, 0x7f09008f

    const/4 v4, 0x1

    const v5, 0x7f0a0155

    invoke-interface {p1, v6, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isCHS()Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_IS_SUPPORT_MAPVIEW:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x42

    const v4, 0x7f0a01a3

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getDrawableBtnMapDarkRest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->enableHostCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    const v4, 0x7f0a012b

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "SmartFolderScene"

    return-object v0
.end method

.method protected showDialogNoConnection()V
    .locals 3

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;-><init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)V

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public updateLocationInfo([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 11

    const/4 v10, 0x2

    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_3

    array-length v5, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v0, p1, v2

    if-nez v0, :cond_1

    const-string v6, "SmartFolderScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addressData null + index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;

    invoke-virtual {v6, v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;->getIndexFromLatLong(Lcom/htc/AddressFinderService/interfaces/AddressData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v6, v4, v10}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    goto :goto_1

    :cond_3
    const-string v6, "SmartFolderScene"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "updateArray = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const-string v8, ", mAdapter = "

    aput-object v8, v7, v10

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
