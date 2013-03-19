.class public Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "HtcPaintCacheUpdateTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$CacheListener;,
        Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcPaintCacheUpdateTool"

.field public static final PAINTCACHE_UPDATE_RENAME:I = 0x1

.field public static final PAINTCACHE_UPDATE_UNKNOWN:I = 0x0

.field private static final UPDATE_REQUEST_BEGIN:I = 0x3034

.field private static final UPDATE_REQUEST_CACHEDPAINT:I = 0x3035

.field private static final UPDATE_REQUEST_END:I = 0x3038

.field private static final UPDATE_REQUEST_STROKEDATA:I = 0x3036

.field private static final UPDATE_REQUEST_UPDATE:I = 0x3037


# instance fields
.field private mAsyncUpdateCache:Landroid/os/AsyncTask;

.field private mHandler:Landroid/os/Handler;

.field private mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

.field private mListener:Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;

.field private mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

.field private mUpdateBundle:Landroid/os/Bundle;

.field private mUpdateType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mHandler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mAsyncUpdateCache:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mUpdateType:I

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mUpdateBundle:Landroid/os/Bundle;

    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheManager;

    const/4 v1, 0x3

    const/16 v2, 0x1f

    new-instance v3, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$CacheListener;

    invoke-direct {v3, p0, v4}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$CacheListener;-><init>(Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$1;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/htc/opensense2/album/cache/InkCacheManager;-><init>(Landroid/content/Context;IILcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$1;

    invoke-direct {v0, p0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$1;-><init>(Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->setDataHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private onUpdateRequestBegin()V
    .locals 3

    const-string v0, "HtcPaintCacheUpdateTool"

    const-string v1, "[HTCAlbum][HtcPaintCacheUpdateTool][onUpdateRequestBegin]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;->onUpdateBegin()V

    :cond_0
    const/16 v0, 0x3035

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method private onUpdateRequestCacheRename()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;-><init>(Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mAsyncUpdateCache:Landroid/os/AsyncTask;

    return-void
.end method

.method private onUpdateRequestCachedPaint()V
    .locals 2

    const-string v0, "HtcPaintCacheUpdateTool"

    const-string v1, "[HTCAlbum][HtcPaintCacheUpdateTool][onUpdateRequestCachedPaint]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    return-void
.end method

.method private onUpdateRequestEnd()V
    .locals 2

    const-string v0, "HtcPaintCacheUpdateTool"

    const-string v1, "[HTCAlbum][HtcPaintCacheUpdateTool][onUpdateRequestEnd]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;->onUpdateEnd()V

    :cond_0
    return-void
.end method

.method private onUpdateRequestStrokeData()V
    .locals 2

    const-string v0, "HtcPaintCacheUpdateTool"

    const-string v1, "[HTCAlbum][HtcPaintCacheUpdateTool][onUpdateRequestStrokeData]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    return-void
.end method


# virtual methods
.method public asyncUpdate()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "HtcPaintCacheUpdateTool"

    const-string v2, "[HTCAlbum][HtcPaintCacheUpdateTool][asyncUpdate]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3034

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return v0
.end method

.method public cancelCacheUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mAsyncUpdateCache:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mAsyncUpdateCache:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mAsyncUpdateCache:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mAsyncUpdateCache:Landroid/os/AsyncTask;

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->release()V

    invoke-virtual {p0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->cancelCacheUpdate()V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->setDataHandler(Landroid/os/Handler;)V

    return-void
.end method

.method public doInBackgroundCacheRename()V
    .locals 9

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mUpdateBundle:Landroid/os/Bundle;

    const-string v4, "photo_url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HtcPaintCacheUpdateTool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][HtcPaintCacheUpdateTool][doInBackgroundCacheRename]: old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v5}, Lcom/htc/album/PaintManager/PaintViewItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HtcPaintCacheUpdateTool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][HtcPaintCacheUpdateTool][doInBackgroundCacheRename]: new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "HtcPaintCacheUpdateTool"

    const-string v3, "[HTCAlbum][HtcPaintCacheUpdateTool][doInBackgroundCacheRename]: skip... "

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-direct {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getModifyTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v5}, Lcom/htc/album/PaintManager/PaintViewItem;->getFileSize()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/PaintManager/PaintViewItem;->setFileCacheInfo(ILjava/lang/String;JJ)V

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v1, "HtcPaintCacheUpdateTool"

    const-string v3, "[HTCAlbum][HtcPaintCacheUpdateTool][doInBackgroundCacheRename]: update ink data... "

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkData([B)V

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/cache/InkCacheManager;->push(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/cache/InkCacheManager;->removeCache(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    :cond_2
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v1, "HtcPaintCacheUpdateTool"

    const-string v3, "[HTCAlbum][HtcPaintCacheUpdateTool][doInBackgroundCacheRename]: update ink paint... "

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/cache/InkCacheManager;->push(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v3}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/cache/InkCacheManager;->removeCache(Lcom/htc/opensense2/album/cache/InkCacheTask;)V

    goto :goto_0
.end method

.method public onMessageHanlder(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onUpdateRequestBegin()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onUpdateRequestCachedPaint()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onUpdateRequestStrokeData()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onUpdateRequest()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onUpdateRequestEnd()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3034
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onUpdateCachedPaint(ILandroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "HtcPaintCacheUpdateTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][HtcPaintCacheUpdateTool][onUpdateCachedPaint]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v0, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x3036

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onUpdateInkData(I[B)V
    .locals 3

    const-string v0, "HtcPaintCacheUpdateTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][HtcPaintCacheUpdateTool][onUpdateInkData]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v0, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkData([B)V

    const/16 v0, 0x3037

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onUpdateRequest()V
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mUpdateType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onUpdateRequestCacheRename()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;

    return-void
.end method

.method public setUpdateInfo(ILcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;)V
    .locals 7

    const/4 v1, 0x0

    iput p1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mUpdateType:I

    iput-object p4, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;

    iput-object p3, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mUpdateBundle:Landroid/os/Bundle;

    new-instance v0, Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-direct {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/PaintManager/PaintViewItem;->setFileCacheInfo(ILjava/lang/String;JJ)V

    return-void
.end method
