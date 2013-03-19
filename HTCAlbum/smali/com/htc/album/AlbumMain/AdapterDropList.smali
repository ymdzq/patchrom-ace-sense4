.class public Lcom/htc/album/AlbumMain/AdapterDropList;
.super Landroid/widget/BaseAdapter;
.source "AdapterDropList.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    iput-object p1, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-nez p2, :cond_0

    iget-object v9, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030026

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz p2, :cond_4

    const v9, 0x7f09004d

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemColorIcon;

    if-eqz v4, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    const/4 v8, 0x0

    const/4 v6, 0x0

    instance-of v9, v7, Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v9, :cond_1

    move-object v8, v7

    check-cast v8, Lcom/htc/opensense/plugin/TabPluginRemote;

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_6

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/TabPluginRemote;->getLogoRes()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    :cond_3
    :goto_0
    const v9, 0x7f09002c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v3, :cond_4

    const v9, 0x2030016

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    const-string v9, "HtcDummy"

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const v9, 0x7f0a0151

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    :cond_4
    :goto_1
    return-object p2

    :cond_5
    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_6
    const-string v9, "HtcDummy"

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v9

    const/4 v10, 0x1

    aget v5, v9, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setAdapterList(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    new-instance v1, Lcom/htc/album/AlbumMain/TabPluginDummy;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/album/AlbumMain/TabPluginDummy;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/AdapterDropList;->notifyDataSetChanged()V

    goto :goto_0
.end method
