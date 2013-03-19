.class public Lcom/htc/album/AlbumMain/AdapterEventsDropList;
.super Landroid/widget/BaseAdapter;
.source "AdapterEventsDropList.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCarMode:Z

.field private mIsPrepared:Z

.field private mList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    iput-boolean v1, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsPrepared:Z

    iput-boolean v1, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsCarMode:Z

    iput-object p1, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsCarMode:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

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
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030026

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    iget-boolean v3, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsCarMode:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_2

    const v3, 0x7f09004d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    :cond_1
    const v3, 0x7f09002c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-boolean v3, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsCarMode:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItem2LineText;->setAutoMotiveMode(Z)V

    const v3, 0x203007e

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    :goto_0
    const/16 v3, 0x37

    if-ne v3, v0, :cond_4

    const v3, 0x7f0a003a

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    :cond_2
    :goto_1
    return-object p2

    :cond_3
    const v3, 0x2030016

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    goto :goto_0

    :cond_4
    const/16 v3, 0x38

    if-ne v3, v0, :cond_2

    const v3, 0x7f0a0182

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto :goto_1
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsPrepared:Z

    return v0
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsPrepared:Z

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->notifyDataSetChanged()V

    return-void
.end method

.method public onPrepareDropList()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mList:Ljava/util/List;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/AlbumMain/AdapterEventsDropList;->mIsPrepared:Z

    return-void
.end method
