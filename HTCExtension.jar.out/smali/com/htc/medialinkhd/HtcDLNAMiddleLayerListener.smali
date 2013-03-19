.class Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;
.super Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;
.source "HtcDLNAMiddleLayerListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNAMiddleLayerListener "


# instance fields
.field private mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

.field private mDiscoverRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

.field private mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

.field private mRendererList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

.field private mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;


# direct methods
.method public constructor <init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    .line 28
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 29
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 30
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 31
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 33
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 37
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 39
    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 635
    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 637
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    monitor-exit p0

    .line 642
    return-void

    .line 641
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 679
    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 681
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 683
    invoke-virtual/range {v0 .. v6}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onContentAdded(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 685
    :cond_0
    monitor-exit p0

    .line 686
    return-void

    .line 685
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 8
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .parameter "isComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 696
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    .line 698
    invoke-virtual/range {v0 .. v7}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onContentBrowsingDone(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 700
    :cond_0
    monitor-exit p0

    .line 701
    return-void

    .line 700
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 7
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 709
    monitor-enter p0

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 711
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    .line 713
    invoke-virtual/range {v0 .. v6}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onContentBrowsingError(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 715
    :cond_0
    monitor-exit p0

    .line 716
    return-void

    .line 715
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    monitor-enter p0

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 666
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onContentThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    monitor-exit p0

    .line 671
    return-void

    .line 670
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 2
    .parameter "containerID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 723
    monitor-enter p0

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 725
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onContentUpdated(Ljava/lang/String;J)V

    .line 729
    :cond_0
    monitor-exit p0

    .line 730
    return-void

    .line 729
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 519
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][controllerErrorNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    monitor-enter p0

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 525
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 529
    :cond_0
    monitor-exit p0

    .line 530
    return-void

    .line 529
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][controllerResponseNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const/16 v1, -0x135

    if-ne p2, v1, :cond_0

    .line 548
    :cond_0
    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 550
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 552
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 554
    :cond_1
    monitor-exit p0

    .line 555
    return-void

    .line 554
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAContentItemDetails;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 565
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][getContentItemDetailsNotify] serverID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", details = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 569
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 571
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/htcdlnainterface/DLNAContentItemDetails;)V

    .line 573
    :cond_0
    monitor-exit p0

    .line 574
    return-void

    .line 573
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDiscoverRendererListener()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object v0
.end method

.method public getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    return-object v0
.end method

.method public getHtcDLNARendererStatusListener()Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    return-object v0
.end method

.method public getHtcDLNAServerStatusListener()Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    return-object v0
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 738
    monitor-enter p0

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 740
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onImageDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_0
    monitor-exit p0

    .line 745
    return-void

    .line 744
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/htcdlnainterface/DLNARendererData;)V
    .locals 4
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 604
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][mirrorRendererAddedNotify] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    monitor-enter p0

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 609
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_0
    monitor-exit p0

    .line 612
    return-void

    .line 611
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 5
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 355
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][playlistCreatedResultNotify] currentIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 359
    .local v0, info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-virtual {v0, p4, p5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 360
    invoke-virtual {v0, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 363
    .local v1, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v1, v0}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 367
    :cond_0
    monitor-exit p0

    .line 368
    return-void

    .line 367
    .end local v1           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public rendererAddedNotify(Lcom/htc/htcdlnainterface/DLNARendererData;)V
    .locals 7
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 194
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][rendererAddedNotify] rendererData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rendererID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rendererName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/htcdlnainterface/DLNARendererData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const-string v2, "HtcDLNAMiddleLayerListener "

    const-string v3, "RendererDiscoverer find the same renderer as rendererAddedNotify() callback."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void

    .line 217
    :cond_0
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 219
    .local v1, listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v1, :cond_1

    .line 221
    const-string v2, "HtcDLNAMiddleLayerListener "

    const-string v3, "no listener"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    monitor-exit p0

    goto :goto_0

    .line 249
    .end local v1           #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 226
    .restart local v1       #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 228
    .local v0, controllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_2

    .line 230
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 232
    :cond_2
    const-string v2, "HtcDLNAMiddleLayerListener "

    const-string v3, "This renderer is the one set by application, call HtcDLNARendererStatusListener.onConnected()"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notify user state change to DMR\'s state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 241
    .end local v0           #controllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_3
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 242
    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    :cond_5
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    invoke-virtual {v1, p1}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Lcom/htc/htcdlnainterface/DLNARendererData;)V

    .line 249
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public rendererListUpdateNotify([Lcom/htc/htcdlnainterface/DLNARendererData;)V
    .locals 10
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    const-string v6, "HtcDLNAMiddleLayerListener "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] rendererList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/htcdlnainterface/DLNARendererData;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v5, v0, v2

    .line 287
    .local v5, renderer:Lcom/htc/htcdlnainterface/DLNARendererData;
    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v6, "HtcDLNAMiddleLayerListener "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] renderer found = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/htcdlnainterface/DLNARendererData;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    const-string v6, "HtcDLNAMiddleLayerListener "

    const-string v7, "RendererDiscoverer find the same renderer as rendererAddedNotify() callback."

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 310
    .local v4, listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v4, :cond_1

    .line 312
    const-string v6, "HtcDLNAMiddleLayerListener "

    const-string v7, "no listener"

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    monitor-exit p0

    .line 285
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v7}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 319
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 320
    .local v1, controllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_2

    .line 322
    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v6

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 326
    :cond_2
    const-string v6, "HtcDLNAMiddleLayerListener "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dont Notify user state change to DMR\'s state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v8}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget-object v7, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v7}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 329
    const-string v6, "HtcDLNAMiddleLayerListener "

    const-string v7, "This renderer is the one set by application, call HtcDLNARendererStatusListener.onConnected()"

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .end local v1           #controllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_3
    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_4

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 336
    :cond_4
    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    :cond_5
    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/DLNARendererData;->getThumbIconType()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    invoke-virtual {v4, v5}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Lcom/htc/htcdlnainterface/DLNARendererData;)V

    .line 343
    monitor-exit p0

    goto/16 :goto_1

    .end local v4           #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 345
    .end local v5           #renderer:Lcom/htc/htcdlnainterface/DLNARendererData;
    :cond_6
    return-void
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][rendererRemovedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 267
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    if-nez v0, :cond_0

    .line 269
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    monitor-exit p0

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererRemoved(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    monitor-exit p0

    goto :goto_0

    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 620
    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 622
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0, p1, p2}, Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;->onRendererThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_0
    monitor-exit p0

    .line 626
    return-void

    .line 625
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 755
    monitor-enter p0

    :try_start_0
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][Reset] in"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 762
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][Reset] out"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    monitor-exit p0

    return-void

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverAddedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serverNmaer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 125
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v0, :cond_0

    .line 127
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    monitor-exit p0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onServerAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    monitor-exit p0

    goto :goto_0

    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public serverListUpdateNotify([Lcom/htc/htcdlnainterface/DLNAServerData;)V
    .locals 8
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v5, "HtcDLNAMiddleLayerListener "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HtcDLNAMiddleLayerListener][serverListUpdateNotify] serverList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 166
    .local v3, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v3, :cond_0

    .line 168
    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "no listener"

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    monitor-exit p0

    .line 185
    :goto_0
    return-void

    .line 172
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/htcdlnainterface/DLNAServerData;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 174
    .local v4, server:Lcom/htc/htcdlnainterface/DLNAServerData;
    const-string v5, "HtcDLNAMiddleLayerListener "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HtcDLNAMiddleLayerListener][serverListUpdateNotify] server found = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/DLNAServerData;->getServerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-nez v3, :cond_1

    .line 177
    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "no listener"

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/DLNAServerData;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/htc/htcdlnainterface/DLNAServerData;->getServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onServerAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 183
    .end local v0           #arr$:[Lcom/htc/htcdlnainterface/DLNAServerData;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    .end local v4           #server:Lcom/htc/htcdlnainterface/DLNAServerData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #arr$:[Lcom/htc/htcdlnainterface/DLNAServerData;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverRemovedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 146
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-nez v0, :cond_0

    .line 148
    const-string v1, "HtcDLNAMiddleLayerListener "

    const-string v2, "no listener"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    monitor-exit p0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onServerRemoved(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    monitor-exit p0

    goto :goto_0

    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    monitor-enter p0

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 651
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0, p1, p2}, Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;->onServerThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_0
    monitor-exit p0

    .line 656
    return-void

    .line 655
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDiscoverRendererListener(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;)V
    .locals 0
    .parameter "htcDLNARendererDiscoverListener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 57
    return-void
.end method

.method public setHtcDLNAControllerStatusListener(Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;)V
    .locals 0
    .parameter "htcDLNAControllerStatusListener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 112
    return-void
.end method

.method public setHtcDLNARendererStatusListener(Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;)V
    .locals 0
    .parameter "htcDLNARendererStatusListener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;

    .line 75
    return-void
.end method

.method public setHtcDLNAServerStatusListener(Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;)V
    .locals 0
    .parameter "htcDLNAServerStatusListener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;

    .line 93
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/htcdlnainterface/DLNAControlItemData;)V
    .locals 8
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    .line 443
    .local v2, info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getContentAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setAlbum(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getContentArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setArtist(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getContentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTitle(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getContentDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDate(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 448
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDuration(I)V

    .line 450
    :cond_0
    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 451
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 453
    :cond_1
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getCurrentIndex()J

    move-result-wide v0

    .line 454
    .local v0, index:J
    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getIndex()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_2

    .line 456
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPosition(I)V

    .line 457
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setClientSeekTo(I)V

    .line 459
    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 460
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 462
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 464
    :cond_3
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 467
    :cond_4
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    .line 468
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setCurContentID(Ljava/lang/String;)V

    .line 470
    const-string v4, "HtcDLNAMiddleLayerListener "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] thumb path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v4, "HtcDLNAMiddleLayerListener "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] album art path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v4, "HtcDLNAMiddleLayerListener "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] curContentID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    monitor-enter p0

    .line 475
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 476
    .local v3, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v3, :cond_5

    .line 478
    invoke-virtual {v3, v2}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 484
    :goto_0
    monitor-exit p0

    .line 485
    return-void

    .line 482
    :cond_5
    const-string v4, "HtcDLNAMiddleLayerListener "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] itemData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    .end local v3           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControlItemThumbnail] currentIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thumbnailPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 499
    .local v0, info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-virtual {v0, p4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 500
    monitor-enter p0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 502
    .local v1, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v1, v0}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 506
    :cond_0
    monitor-exit p0

    .line 507
    return-void

    .line 506
    .end local v1           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateControllerStatus(Lcom/htc/htcdlnainterface/DLNAControllerStatus;)V
    .locals 9
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 380
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateControllerStatus] state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPlayState()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPlayState()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_4

    .line 387
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPlayState()I

    move-result v3

    invoke-virtual {v2, v3, v6, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 389
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 393
    .local v0, info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-lez v2, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDuration(I)V

    .line 395
    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 396
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPosition(I)V

    .line 397
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getMute()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setMute(Z)V

    .line 398
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getShuffle()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setShuffle(Z)V

    .line 399
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getRepeatState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRepeat(I)V

    .line 400
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getVolumeValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setVolume(I)V

    .line 401
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    .line 402
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getTotalCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 404
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPosition()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setClientSeekTo(I)V

    .line 406
    :cond_1
    invoke-virtual {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 409
    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setCurContentID(Ljava/lang/String;)V

    .line 410
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus] play state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPlayState()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPosition()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 414
    .local v1, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_3

    .line 415
    invoke-virtual {v1, v0}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 419
    :goto_0
    monitor-exit p0

    .line 432
    .end local v0           #info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    :goto_1
    return-void

    .line 417
    .restart local v0       #info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    :cond_3
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus] DLNAControllerStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    .end local v1           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 422
    .end local v0           #info:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    :cond_4
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getPlayState()I

    move-result v3

    invoke-virtual {v2, v3, v6, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 423
    monitor-enter p0

    .line 424
    :try_start_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 425
    .restart local v1       #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_5

    .line 426
    const-string v2, "HtcDLNAMiddleLayerListener "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus][onPlaybackCompleted] State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onPlaybackCompleted(I)V

    .line 430
    :cond_5
    monitor-exit p0

    goto :goto_1

    .end local v1           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 584
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][updateDownloadStoreAlbumArtNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", albumArtPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 588
    monitor-enter p0

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    .line 590
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 592
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 594
    :cond_0
    monitor-exit p0

    .line 595
    return-void

    .line 594
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
