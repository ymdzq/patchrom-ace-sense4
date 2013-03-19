.class Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;
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
    name = "ReadCacheRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;


# direct methods
.method private constructor <init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;Lcom/htc/album/AlbumMain/LandingPageCacheThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    #calls: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->isCacheExit()Z
    invoke-static {v4}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$100(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Z

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    #calls: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromFileCache()Ljava/util/List;
    invoke-static {v4}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$200(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;

    iget-object v4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-direct {v2, v4, v5, v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;ILjava/util/List;)V

    iget-object v4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$300(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    #calls: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->readFromDB()Ljava/util/List;
    invoke-static {v4}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$400(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;

    iget-object v4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v1}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;-><init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;ILjava/util/List;)V

    iget-object v4, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$ReadCacheRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$300(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
