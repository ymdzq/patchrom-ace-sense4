.class public Lcom/htc/album/AlbumMain/LandingPageCacheThread;
.super Landroid/os/HandlerThread;
.source "LandingPageCacheThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$1;,
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;,
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;,
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;,
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;,
        Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LandingPageCacheThread"


# instance fields
.field private mCacheHandler:Landroid/os/Handler;

.field private mCallBack:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;

.field private mContext:Landroid/content/Context;

.field private mExtension:I

.field private mHandler:Landroid/os/Handler;

.field private final mLockObject:Ljava/lang/Object;

.field private mRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/lang/String;

.field private mUID:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mService:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mUID:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mExtension:I

    iput v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mVersion:I

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCallBack:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mLockObject:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mRunnableList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mService:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mUID:Ljava/lang/String;

    iput p6, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mExtension:I

    iput p7, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mVersion:I

    iput-object p8, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCallBack:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->isCacheExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromFileCache()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromDB()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToFileCache(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCallBack:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;

    return-object v0
.end method

.method private isCacheExit()Z
    .locals 4

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mService:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mUID:Ljava/lang/String;

    iget v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mExtension:I

    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private readFromDB()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    iget-object v8, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v8, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTabPlugins(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "LandingPageCacheThread"

    const-string v9, "Query from DB: no plugins..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v8, "LandingPageCacheThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query from DB: doInBackground: Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v1}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->getOrderedPluginList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_0

    new-instance v7, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/plugin/TabPlugin;

    invoke-direct {v7, v8}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;-><init>(Lcom/htc/opensense/plugin/TabPlugin;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->setPreorderedPluginList(Ljava/util/List;)V

    :cond_3
    iget-object v8, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->reorderPlugins(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->removeDisabledPlugins(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private readFromFileCache()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mService:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mUID:Ljava/lang/String;

    iget v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mExtension:I

    iget v4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mVersion:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private writeToFileCache(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mService:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mUID:Ljava/lang/String;

    iget v4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mExtension:I

    iget v5, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mVersion:I

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 4

    iget-object v3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mLockObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    :cond_0
    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "LandingPageCacheThread"

    const-string v3, "[onLooperPrepared]..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public readFromTabPluginFileCache()V
    .locals 3

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Lcom/htc/album/AlbumMain/LandingPageCacheThread$1;)V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeToTabPluginFileCache(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;

    invoke-direct {v0, p0, p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCacheHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
