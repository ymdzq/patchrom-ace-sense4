.class public Lcom/htc/album/Customizable/CustAlbumTabOrder;
.super Ljava/lang/Object;
.source "CustAlbumTabOrder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CustAlbumTabOrder"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPluginList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginCtrl/TabPluginItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    const-string v1, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    const-string v1, "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    const-string v1, "com.htc.album-com.htc.album.TabPluginFlickr.TabPluginFlickr"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    const-string v1, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getTabState(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x63

    return v0
.end method

.method public static removeUnsupportedPlugins(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isExcludeSocialNetwork()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v0, :cond_0

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.album-com.htc.album.TabPluginFlickr.TabPluginFlickr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isExcludeSocialNetwork()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v2, :cond_5

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
