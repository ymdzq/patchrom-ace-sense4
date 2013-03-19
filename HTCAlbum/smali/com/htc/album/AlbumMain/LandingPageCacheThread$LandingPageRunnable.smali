.class Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;
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
    name = "LandingPageRunnable"
.end annotation


# instance fields
.field mFromID:I

.field mReturnList:Ljava/util/ArrayList;
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
.method public constructor <init>(Lcom/htc/album/AlbumMain/LandingPageCacheThread;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/album/ObjectWriter/ObjectFormatter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;->mFromID:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;->mReturnList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;->mFromID:I

    check-cast p3, Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;->mReturnList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCallBack:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;
    invoke-static {v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$600(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;->this$0:Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    #getter for: Lcom/htc/album/AlbumMain/LandingPageCacheThread;->mCallBack:Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;
    invoke-static {v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->access$600(Lcom/htc/album/AlbumMain/LandingPageCacheThread;)Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;->mFromID:I

    iget-object v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;->mReturnList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageCacheCallBack;->readEnd(ILjava/util/ArrayList;)V

    :cond_0
    const-string v0, "LandingPageCacheThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LandingPageRunnable]: call back to landing page by FromId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$LandingPageRunnable;->mFromID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
