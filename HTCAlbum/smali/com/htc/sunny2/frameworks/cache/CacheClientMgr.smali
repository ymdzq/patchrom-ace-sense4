.class public Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;
.super Ljava/lang/Object;
.source "CacheClientMgr.java"


# static fields
.field public static mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

.field protected static mMgr:Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;-><init>()V

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mMgr:Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mMgr:Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    return-object v0
.end method

.method public static SetCacheCountClient(Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;)V
    .locals 0

    sput-object p0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    return-void
.end method


# virtual methods
.method public GetCacheFullPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;->GetCacheFullPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetCacheName(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;->GetCacheName(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public asynAddCache(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 6

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;->asynAddCache(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V

    goto :goto_0
.end method

.method public asynUpdateCache(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;->asynUpdateCache(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method public deInitCacheMgr(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;->deInitCacheMgr(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public initCacheMgr(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;->initCacheMgr(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;->isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateExtraContent(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->mIClient:Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;->updateExtraContent(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    goto :goto_0
.end method
