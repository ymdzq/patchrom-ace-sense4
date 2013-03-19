.class public final Lcom/htc/music/util/AddToFavUtil$NonUiHandler;
.super Landroid/os/Handler;
.source "AddToFavUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AddToFavUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonUiHandler"
.end annotation


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/util/AddToFavUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/htc/music/util/AddToFavUtil;)V
    .locals 1
    .parameter "looper"
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/AddToFavUtil$NonUiHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/util/AddToFavUtil$NonUiHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/htc/music/util/AddToFavUtil$NonUiHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/AddToFavUtil;

    iget-object v2, p0, Lcom/htc/music/util/AddToFavUtil$NonUiHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/AddToFavUtil;

    #getter for: Lcom/htc/music/util/AddToFavUtil;->mSongId:I
    invoke-static {v2}, Lcom/htc/music/util/AddToFavUtil;->access$000(Lcom/htc/music/util/AddToFavUtil;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/music/util/AddToFavUtil;->queryMediaInfo(I)I

    move-result v0

    .line 44
    .local v0, songid:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 45
    const-string v1, "[AddToFavForLandingPage]"

    const-string v2, "songid is wrong when return from queryMediaInfo() so cancel ADDTO_ONLINE_FAVORITE"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/htc/music/util/AddToFavUtil$NonUiHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/AddToFavUtil;

    #getter for: Lcom/htc/music/util/AddToFavUtil;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/music/util/AddToFavUtil;->access$100(Lcom/htc/music/util/AddToFavUtil;)Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/music/util/AddToFavUtil$NonUiHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/AddToFavUtil;

    #getter for: Lcom/htc/music/util/AddToFavUtil;->mSongName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/util/AddToFavUtil;->access$200(Lcom/htc/music/util/AddToFavUtil;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/htc/music/online/Util;->addToFavorites(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string v1, "[AddToFavForLandingPage]"

    const-string v2, "HtcMusic.addToFavorites() failed so cancel showFavoritesResult()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
