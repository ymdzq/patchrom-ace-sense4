.class public Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "LandingPageCacheThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/LandingPageCacheThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabPluginFileCache"
.end annotation


# static fields
.field public static final FILE_CACHE_VERSION:I = 0x1


# instance fields
.field private mDrawableResSet:[I

.field private mIndicatorLabelRes:I

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;

.field private mPluginClassName:Ljava/lang/String;

.field private mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

.field private mPluginPackageName:Ljava/lang/String;

.field private mTabName:Ljava/lang/String;

.field private mTabTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/plugin/TabPlugin;)V
    .locals 3

    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v1

    iput v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIndicatorLabelRes:I

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mDrawableResSet:[I

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabTag:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginClassName:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    return-void
.end method

.method private parseBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Landroid/content/Intent;

    if-eqz v5, :cond_0

    check-cast v3, Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->parseIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->capListObjHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private parseIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->parseBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->removeListObjHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, v5}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->restoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v8, "LandingPageCacheThread"

    const-string v9, "[restoreBundle] Can\'t parse to intent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-object v6
.end method

.method private restoreIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->restoreBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v6
.end method


# virtual methods
.method public getDrawableResSet()[I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mDrawableResSet:[I

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSubPackageName()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginMembers:Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p4}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabName:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->restoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIntent:Landroid/content/Intent;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIndicatorLabelRes:I

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->removeArrayInt(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mDrawableResSet:[I

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPackageName:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabTag:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginPackageName:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginClassName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->parseIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mIndicatorLabelRes:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mDrawableResSet:[I

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->capArrayInt([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mTabTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->mPluginClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
