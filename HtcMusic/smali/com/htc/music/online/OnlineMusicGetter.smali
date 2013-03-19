.class public abstract Lcom/htc/music/online/OnlineMusicGetter;
.super Ljava/lang/Object;
.source "OnlineMusicGetter.java"


# instance fields
.field mAllSongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mIsCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mAllSongs:Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mIsCancelled:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mContext:Landroid/content/Context;

    .line 17
    iput-object p1, p0, Lcom/htc/music/online/OnlineMusicGetter;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mAllSongs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mAllSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mIsCancelled:Z

    .line 63
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mAllSongs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mAllSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mAllSongs:Ljava/util/ArrayList;

    .line 56
    :cond_0
    return-void
.end method

.method protected abstract fetch(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end method

.method public fetchAll(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/music/online/OnlineMusicGetter;->reset()V

    .line 23
    invoke-static {p1}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v2

    .line 24
    .local v2, engine:Lcom/htc/music/online/sinamusic/ISinaEngine;
    if-nez v2, :cond_1

    .line 34
    :cond_0
    return-void

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    .local v0, curPage:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #curPage:I
    .local v1, curPage:I
    invoke-virtual {p0, v0}, Lcom/htc/music/online/OnlineMusicGetter;->fetch(I)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    move v0, v1

    .line 30
    .end local v1           #curPage:I
    .restart local v0       #curPage:I
    :goto_0
    iget-boolean v4, p0, Lcom/htc/music/online/OnlineMusicGetter;->mIsCancelled:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 31
    iget-object v4, p0, Lcom/htc/music/online/OnlineMusicGetter;->mAllSongs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    add-int/lit8 v1, v0, 0x1

    .end local v0           #curPage:I
    .restart local v1       #curPage:I
    invoke-virtual {p0, v0}, Lcom/htc/music/online/OnlineMusicGetter;->fetch(I)Ljava/util/ArrayList;

    move-result-object v3

    move v0, v1

    .end local v1           #curPage:I
    .restart local v0       #curPage:I
    goto :goto_0
.end method

.method public getAllSongs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mAllSongs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mIsCancelled:Z

    return v0
.end method

.method public stopFetch()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mIsCancelled:Z

    .line 38
    iget-object v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mAllSongs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/htc/music/online/OnlineMusicGetter;->mAllSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    :cond_0
    return-void
.end method
