.class public Lcom/htc/album/PaintManager/HtcPaintMergeTool;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "HtcPaintMergeTool.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/PaintManager/HtcPaintMergeTool$CacheListener;,
        Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MERGE_REQUEST_BEGIN:I = 0x3034

.field private static final MERGE_REQUEST_CACHEDPAINT:I = 0x3035

.field private static final MERGE_REQUEST_END:I = 0x3038

.field private static final MERGE_REQUEST_STROKEDATA:I = 0x3036

.field private static final MERGE_REQUEST_STROKEMERGE:I = 0x3037


# instance fields
.field private mAsyncMergePhoto:Landroid/os/AsyncTask;

.field private mDataPath:Ljava/lang/String;

.field private mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

.field private mHandler:Landroid/os/Handler;

.field private mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

.field private mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

.field private mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mHandler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    iput-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    new-instance v0, Lcom/htc/opensense2/album/cache/InkCacheManager;

    const/4 v1, 0x3

    const/16 v2, 0x1f

    new-instance v3, Lcom/htc/album/PaintManager/HtcPaintMergeTool$CacheListener;

    invoke-direct {v3, p0, v4}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$CacheListener;-><init>(Lcom/htc/album/PaintManager/HtcPaintMergeTool;Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/htc/opensense2/album/cache/InkCacheManager;-><init>(Landroid/content/Context;IILcom/htc/opensense2/album/cache/InkCacheManager$InkCacheListener;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;

    invoke-direct {v0, p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;-><init>(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->setDataHandler(Landroid/os/Handler;)V

    new-instance v0, Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/FileSerializeDAO;-><init>()V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v0, p0}, Lcom/htc/album/PaintManager/FileSerializeDAO;->setReroute(Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/FileSerializeDAO;->initialize()Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)Lcom/htc/album/PaintManager/PaintViewItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)Lcom/htc/album/PaintManager/FileSerializeDAO;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    return-object v0
.end method

.method private onMergeRequestBegin()V
    .locals 3

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestBegin]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;->onMergeBegin()V

    :cond_0
    const/16 v0, 0x3035

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method private onMergeRequestCachedPaint()V
    .locals 2

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestCachedPaint]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCachePaint()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    return-void
.end method

.method private onMergeRequestEnd()V
    .locals 2

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestEnd]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;->onMergeEnd()V

    :cond_0
    return-void
.end method

.method private onMergeRequestStrokeData()V
    .locals 2

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestStrokeData]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkCacheData()Lcom/htc/opensense2/album/cache/InkCacheTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/cache/InkCacheManager;->pull(Lcom/htc/opensense2/album/cache/InkCacheTask;)Z

    return-void
.end method

.method private onMergeRequestStrokeMerge()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;-><init>(Lcom/htc/album/PaintManager/HtcPaintMergeTool;Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/album/PaintManager/HtcPaintMergeTool$asyncReqPhotoMerge;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public asyncMerge()Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x3034

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return v0
.end method

.method public cancelAsyncMerge()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mAsyncMergePhoto:Landroid/os/AsyncTask;

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->release()V

    invoke-virtual {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->cancelAsyncMerge()V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->setDataHandler(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mFileSerializeDAO:Lcom/htc/album/PaintManager/FileSerializeDAO;

    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 4

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkPaint()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][HtcPaintMergeTool][getResult]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    if-nez p2, :cond_1

    sget-object v4, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][HtcPaintMergeTool][mergeBitmap]: no paint top"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v3, v3}, Lcom/htc/opensense2/album/util/BitmapUtil2;->duplicateBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v3, v3}, Lcom/htc/opensense2/album/util/BitmapUtil2;->duplicateBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public onMessageHanlder(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMergeRequestBegin()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMergeRequestCachedPaint()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMergeRequestStrokeData()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMergeRequestStrokeMerge()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMergeRequestEnd()V

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

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][HtcPaintMergeTool][onUpdateCachedPaint]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v0, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkPaint(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x3036

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onUpdateInkData(I[B)V
    .locals 3

    sget-object v0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][HtcPaintMergeTool][onUpdateInkData]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v0, p2}, Lcom/htc/album/PaintManager/PaintViewItem;->setInkData([B)V

    const/16 v0, 0x3037

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public reRouteStrokeDelete(I)V
    .locals 0

    return-void
.end method

.method public reRouteStrokeLoad(I)[B
    .locals 4

    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-virtual {v1}, Lcom/htc/album/PaintManager/PaintViewItem;->getInkData()[B

    move-result-object v0

    sget-object v1, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][HtcPaintMergeTool][onMergeRequestEnd]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public reRouteStrokeSave(I[B)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mInkCacheManager:Lcom/htc/opensense2/album/cache/InkCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/InkCacheManager;->release()V

    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iput-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    return-void
.end method

.method public setMergeInfo(Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p2, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    new-instance v0, Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-direct {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/PaintManager/PaintViewItem;->setFileCacheInfo(ILjava/lang/String;JJ)V

    return-void
.end method

.method public setMergeInfo(Ljava/lang/String;JJLcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;)V
    .locals 7

    const/4 v1, 0x0

    iput-object p6, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mListener:Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;

    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    new-instance v0, Lcom/htc/album/PaintManager/PaintViewItem;

    invoke-direct {v0, v1}, Lcom/htc/album/PaintManager/PaintViewItem;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mPaintItem:Lcom/htc/album/PaintManager/PaintViewItem;

    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->mDataPath:Ljava/lang/String;

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/PaintManager/PaintViewItem;->setFileCacheInfo(ILjava/lang/String;JJ)V

    return-void
.end method
