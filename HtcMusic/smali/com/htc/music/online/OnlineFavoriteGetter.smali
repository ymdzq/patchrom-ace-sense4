.class public Lcom/htc/music/online/OnlineFavoriteGetter;
.super Lcom/htc/music/online/OnlineMusicGetter;
.source "OnlineFavoriteGetter.java"


# static fields
.field private static final ONLINE_FAVORITE_CATCH_COUNT:I = 0x14


# instance fields
.field mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/htc/music/online/OnlineMusicGetter;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/OnlineFavoriteGetter;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    .line 18
    invoke-static {p1}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/OnlineFavoriteGetter;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    .line 19
    return-void
.end method


# virtual methods
.method protected fetch(I)Ljava/util/ArrayList;
    .locals 4
    .parameter "curPage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v2, p0, Lcom/htc/music/online/OnlineFavoriteGetter;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    if-nez v2, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 32
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 28
    .local v1, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/online/OnlineFavoriteGetter;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    const/16 v3, 0x14

    invoke-interface {v2, p1, v3}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getSelfFavouriteSong(II)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->printStackTrace()V

    goto :goto_0
.end method
