.class public Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;
.super Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;
.source "AdapterDlnaGridview.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterDlnaMediumItem"


# instance fields
.field private bAddVirtualMoreItem:Z

.field private bLoadingMoreItems:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->bAddVirtualMoreItem:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->bLoadingMoreItems:Z

    return-void
.end method


# virtual methods
.method protected browseCancel(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->browseCancel(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected continueBrowseDown()V
    .locals 12

    const/16 v5, 0xc7

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    if-ge v6, v5, :cond_0

    const/4 v11, 0x0

    const/4 v7, 0x0

    add-int/lit8 v8, v6, -0x1

    :goto_1
    if-ltz v8, :cond_4

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_3
    instance-of v0, v10, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_2

    move-object v9, v10

    check-cast v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    iget-wide v0, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    long-to-int v11, v0

    :cond_4
    const-string v0, "AdapterDlnaMediumItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterDlnaGridview][continueBrowseDown]startIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_7

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    instance-of v0, v10, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_5

    move-object v9, v10

    check-cast v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    iget-wide v0, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    long-to-int v7, v0

    :cond_7
    const-string v0, "AdapterDlnaMediumItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterDlnaGridview][continueBrowseDown]firstIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AdapterDlnaMediumItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterDlnaGridview][continueBrowseDown]browsedCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mServiceManager:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    int-to-long v1, v7

    add-int/lit8 v3, v11, 0x1

    int-to-long v3, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doContinueBrowseDown(JJII)V

    goto/16 :goto_0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "AdapterDlnaMediumItem"

    return-object v0
.end method

.method public getLoadMoreState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->bLoadingMoreItems:Z

    return v0
.end method

.method protected onSyncList(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v0, :cond_1

    const-string v0, "AdapterDlnaMediumItem"

    const-string v1, "[HTCAlbum][AdapterDlnaGridview][onSyncList]: skip server info notify..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "AdapterDlnaMediumItem"

    const-string v1, "[HTCAlbum][AdapterDlnaGridview][onSyncList]: ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->bAddVirtualMoreItem:Z

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->syncListItem(Ljava/lang/Object;Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->onNotifyUpdating(Z)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onSyncListComplete(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "AdapterDlnaMediumItem"

    const-string v1, "[HTCAlbum][AdapterDlnaGridview][onSyncListComplete]: ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->bAddVirtualMoreItem:Z

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->syncListItem(Ljava/lang/Object;Z)V

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->onNotifyUpdating(Z)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->notifyDataSetChanged()V

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->setLoadMoreState(Z)V

    goto :goto_0
.end method

.method protected onSyncRecentList(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "AdapterDlnaMediumItem"

    const-string v1, "[HTCAlbum][AdapterDlnaGridview][onSyncRecentList]..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->bAddVirtualMoreItem:Z

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->syncListItem(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->onNotifyUpdateComplete()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->onNotifyUpdating(Z)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setLoadMoreState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaGridview;->bLoadingMoreItems:Z

    return-void
.end method
