.class public Lcom/htc/music/online/util/AsyncSongDetailGetter;
.super Ljava/lang/Object;
.source "AsyncSongDetailGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;,
        Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/online/util/AsyncSongDetailGetter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public start(ILcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;)V
    .locals 4
    .parameter "songId"
    .parameter "listener"

    .prologue
    .line 20
    new-instance v0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;

    invoke-direct {v0, p0, p2}, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;-><init>(Lcom/htc/music/online/util/AsyncSongDetailGetter;Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    return-void
.end method
