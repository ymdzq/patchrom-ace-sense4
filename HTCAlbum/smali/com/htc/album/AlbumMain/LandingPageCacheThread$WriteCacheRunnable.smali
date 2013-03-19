.class Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;
.super Ljava/lang/Object;
.source "LandingPageCacheThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/LandingPageCacheThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteCacheRunnable"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;


# direct methods
.method public constructor <init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->mList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    iget-object v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$WriteCacheRunnable;->mList:Ljava/util/ArrayList;

    #calls: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToFileCache(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$500(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Ljava/util/List;)V

    return-void
.end method
