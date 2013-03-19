.class public Lcom/htc/album/TabPluginCtrl/TabOrderManager;
.super Ljava/lang/Object;
.source "TabOrderManager.java"


# static fields
.field private static final LAST_VIEWED_TAB:Ljava/lang/String; = "last_viewed_tab"

.field private static final LOG_TAG:Ljava/lang/String; = "TabOrderManager"

.field public static final TABTAG_ALBUM_ALBUM:Ljava/lang/String; = "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

.field public static final TABTAG_ALBUM_DLNA:Ljava/lang/String; = "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

.field public static final TABTAG_ALBUM_DROPBOX_PREDIX:Ljava/lang/String; = "com.htc.dropbox"

.field public static final TABTAG_ALBUM_FACEBOOK:Ljava/lang/String; = "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

.field public static final TABTAG_ALBUM_FLICKR:Ljava/lang/String; = "com.htc.album-com.htc.album.TabPluginFlickr.TabPluginFlickr"


# instance fields
.field private mIsSynced:Z

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mlistPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mlistSupportedTabPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginCtrl/TabPluginItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistSupportedTabPlugins:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mIsSynced:Z

    const/4 v0, 0x0

    new-instance v0, Lcom/htc/album/TabPluginDevice/TabPluginDevice;

    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;

    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/htc/album/TabPluginFlickr/TabPluginFlickr;

    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginFlickr/TabPluginFlickr;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;

    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistSupportedTabPlugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistSupportedTabPlugins:Ljava/util/List;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumTabOrder;->getDefaultPluginList(Ljava/util/List;)V

    return-void
.end method

.method private getNextMatchingPlugin(Landroid/content/Context;Ljava/util/List;Lcom/htc/album/TabPluginCtrl/TabPluginItem;)Lcom/htc/opensense/plugin/TabPlugin;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;",
            "Lcom/htc/album/TabPluginCtrl/TabPluginItem;",
            ")",
            "Lcom/htc/opensense/plugin/TabPlugin;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setState(I)V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/TabPlugin;

    if-nez v1, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setState(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getTabState(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/16 v0, 0x63

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    const-string v2, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x65

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/htc/album/Customizable/CustAlbumTabOrder;->getTabState(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public static isTabLocalAlbum(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static isTabMediaServer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private nextOrderedPlugin(Landroid/content/Context;Lcom/htc/album/TabPluginCtrl/TabPluginItem;)Lcom/htc/opensense/plugin/TabPlugin;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->getNextMatchingPlugin(Landroid/content/Context;Ljava/util/List;Lcom/htc/album/TabPluginCtrl/TabPluginItem;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLastTabTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "last_viewed_tab"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderedPluginList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    return-object v0
.end method

.method public getPlugin(I)Lcom/htc/opensense/plugin/TabPlugin;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    return-object v0
.end method

.method public getPluginSize()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isSynced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mIsSynced:Z

    return v0
.end method

.method public removeDisabledPlugins(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TabOrderManager"

    const-string v1, "[HTCAlbum][TabOrderManager][removeDisabledPlugins]: removing..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustAlbumTabOrder;->removeUnsupportedPlugins(Ljava/util/List;)V

    const-string v0, "TabOrderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TabOrderManager][removeDisabledPlugins]: remove done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reorderPlugins(Landroid/content/Context;)V
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistSupportedTabPlugins:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_1

    iget-object v5, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistSupportedTabPlugins:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    invoke-direct {p0, p1, v5}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->nextOrderedPlugin(Landroid/content/Context;Lcom/htc/album/TabPluginCtrl/TabPluginItem;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_7

    iget-object v5, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPlugin;

    if-nez v3, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.htc.vmm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v4, v3

    goto :goto_2

    :cond_4
    instance-of v5, v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v5, :cond_6

    move-object v2, v3

    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    :cond_5
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->isPluginServiceReady()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v5, "TabOrderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][TabOrderManager][reorderPlugins]: reordering done: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastTabTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_viewed_tab"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPreorderedPluginList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-le v0, v2, :cond_4

    iget-object v6, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/plugin/TabPlugin;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    if-le v1, v3, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/plugin/TabPlugin;

    if-nez v5, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v6

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mIsSynced:Z

    return-void
.end method
