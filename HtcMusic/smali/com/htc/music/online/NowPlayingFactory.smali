.class public Lcom/htc/music/online/NowPlayingFactory;
.super Ljava/lang/Object;
.source "NowPlayingFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getNowPlayingViewHelper(Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;Landroid/app/Activity;)Lcom/htc/music/NowPlayingViewHelper;
    .locals 1
    .parameter "type"
    .parameter "context"

    .prologue
    .line 15
    sget-object v0, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->LOCAL:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    if-ne v0, p0, :cond_0

    .line 16
    new-instance v0, Lcom/htc/music/LocalNowPlayingView;

    invoke-direct {v0, p1}, Lcom/htc/music/LocalNowPlayingView;-><init>(Landroid/app/Activity;)V

    .line 18
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/music/OnlineNowPlayingView;

    invoke-direct {v0, p1}, Lcom/htc/music/OnlineNowPlayingView;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method
