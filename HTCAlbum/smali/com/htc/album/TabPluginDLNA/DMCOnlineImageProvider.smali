.class public Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;
.super Ljava/lang/Object;
.source "DMCOnlineImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$asyncDecodeTask;,
        Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;
    }
.end annotation


# static fields
.field public static final MAX_SIZE_FILECACHE:I = 0xa00000


# instance fields
.field private final PRE_LOG:Ljava/lang/String;

.field private final STATE_DOWNLOADING:I

.field private final STATE_EMPTY:I

.field private final STATE_FINISH:I

.field private final TAG:Ljava/lang/String;

.field public mCacheManager:Lcom/htc/opensense/cache/CacheManager;

.field private mCacheState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

.field private mContext:Landroid/content/Context;

.field private mCurIndex:I

.field private mHandle:Landroid/os/Handler;

.field mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMCImageProvider"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->TAG:Ljava/lang/String;

    const-string v0, "KA>>> [DMCProvider]"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->PRE_LOG:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mHandle:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCurIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->STATE_EMPTY:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->STATE_DOWNLOADING:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->STATE_FINISH:I

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    new-instance v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$1;-><init>(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mHandle:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->initCacheManager()Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;ILcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->notifyDownloadSuccess(ILcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;)V

    return-void
.end method

.method private deinitCacheManager()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_0

    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][deinitCacheManager]: deinit CacheManager. +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][deinitCacheManager]: deinit CacheManager. -"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initCacheManager()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v2, :cond_1

    const-string v2, "DMCImageProvider"

    const-string v3, "KA>>> [DMCProvider][deinitCacheManager]: init CacheManager. +"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/cache/CacheManager;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    const/high16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/htc/opensense/cache/CacheManager;->setMaxSizeAllocatedInCurrentFolder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "DMCImageProvider"

    const-string v3, "KA>>> [DMCProvider][deinitCacheManager]: init CacheManager. -"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_0

    const-string v2, "DMCImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [DMCProvider][DMCOnlineImageProvider]: unable to create cache manager! PATH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "DMCImageProvider"

    const-string v3, "KA>>> [DMCProvider][DMCOnlineImageProvider]: Cache is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "DMCImageProvider"

    const-string v3, "KA>>> [DMCProvider][DMCOnlineImageProvider]: Cache already exist !"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private notifyDownloadSuccess(ILcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mHandle:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mHandle:Landroid/os/Handler;

    const v2, 0x220100

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p2, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelDownloadTasks()V
    .locals 6

    const-string v3, "DMCImageProvider"

    const-string v4, "KA>>> [DMCProvider][cancelDownloadTasks]: +"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mTaskID:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget v4, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mTaskID:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/cache/CacheManager;->stopDownloadPhotoByTaskId(I)V

    const/4 v3, 0x1

    iput v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    const/4 v3, 0x0

    iput v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mTaskID:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "DMCImageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [DMCProvider][cancelDownloadTasks]: -, Cancel Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancelDownloadTasks(I)V
    .locals 0

    return-void
.end method

.method public init(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;-><init>(Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;)V

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUrl:Ljava/lang/String;

    const/4 v3, 0x1

    iput v3, v0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onDestory]: +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->cancelDownloadTasks()V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->deinitCacheManager()V

    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onDestory]: -"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onPause]: +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->cancelDownloadTasks()V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->deinitCacheManager()V

    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onPause]: -"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onResume]: +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->initCacheManager()Z

    const-string v0, "DMCImageProvider"

    const-string v1, "KA>>> [DMCProvider][onResume]: -"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestDecodeTasks(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public requestDownloadTasks(I)V
    .locals 5

    const-string v2, "DMCImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [DMCProvider][requestDownloadTasks]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheState:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;

    iget v2, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-string v2, "DMCImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [DMCProvider][requestDownloadTasks]: Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already download."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->notifyDownloadSuccess(ILcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "DMCImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [DMCProvider][requestDownloadTasks]: Request Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " download."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "photo_id"

    iget-object v3, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "index_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "photo_url"

    iget-object v3, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v3, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    move-result v2

    iput v2, v1, Lcom/htc/album/TabPluginDLNA/DMCOnlineImageProvider$CacheItem;->mTaskID:I

    goto :goto_0

    :cond_2
    const-string v2, "DMCImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [DMCProvider][requestDownloadTasks]: Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is downloading..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
