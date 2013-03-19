.class public Lcom/htc/music/online/RecommendationBrowserActivity;
.super Lcom/htc/music/online/TrackListActivity;
.source "RecommendationBrowserActivity.java"


# static fields
.field static final CATCH_SONG_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "[RecommendationBrowserActivity]"


# instance fields
.field mSongCnt:I

.field mStartIdx:I

.field mbGetLessThanRequest:Z

.field mbSongCntGetFromServer:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/htc/music/online/TrackListActivity;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mSongCnt:I

    .line 14
    iput v1, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mStartIdx:I

    .line 15
    iput-boolean v1, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mbGetLessThanRequest:Z

    .line 16
    iput-boolean v1, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mbSongCntGetFromServer:Z

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/online/TrackListActivity;->mListViewType:I

    .line 22
    return-void
.end method


# virtual methods
.method protected cachePlayAllData(I)Ljava/util/ArrayList;
    .locals 4
    .parameter "cacheStartPos"
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
    const/4 v1, 0x0

    .line 70
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    if-nez v2, :cond_0

    .line 71
    const-string v2, "[RecommendationBrowserActivity]"

    const-string v3, "[cachePlayAllData] mEngine cannot be null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-object v1

    .line 75
    :cond_0
    iget v2, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mSongCnt:I

    if-gt v2, p1, :cond_1

    .line 76
    const-string v2, "[RecommendationBrowserActivity]"

    const-string v3, "[cachePlayAllData] mSongCnt <= cacheStartPos!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    iget v2, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mSongCnt:I

    sub-int/2addr v2, p1

    invoke-interface {v1, p1, v2}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getRecommendSong(II)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCachePlayAllData:Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mCachePlayAllData:Ljava/util/ArrayList;

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->printErrorInfo()V

    goto :goto_1
.end method

.method protected getTrackList()Ljava/util/ArrayList;
    .locals 10
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
    const/4 v4, 0x0

    const/16 v9, 0x14

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 26
    iget-object v6, p0, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    if-eqz v6, :cond_3

    .line 28
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    iget v7, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mStartIdx:I

    const/16 v8, 0x14

    invoke-interface {v6, v7, v8}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getRecommendSong(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 29
    .local v2, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mbSongCntGetFromServer:Z

    .line 30
    if-nez v2, :cond_0

    move-object v2, v4

    .line 46
    .end local v2           #songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :goto_0
    return-object v2

    .line 33
    .restart local v2       #songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 34
    .local v1, songSize:I
    if-ge v1, v9, :cond_1

    move v3, v5

    :cond_1
    iput-boolean v3, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mbGetLessThanRequest:Z

    .line 35
    iget v3, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mSongCnt:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    if-lez v1, :cond_2

    .line 36
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-virtual {v3}, Lcom/htc/music/online/sinamusic/WrapperSong;->getTotalSong()I

    move-result v3

    iput v3, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mSongCnt:I

    .line 38
    :cond_2
    iget v3, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mStartIdx:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mStartIdx:I
    :try_end_0
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v1           #songSize:I
    .end local v2           #songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->printErrorInfo()V

    .line 43
    invoke-virtual {p0, v0, v5}, Lcom/htc/music/online/RecommendationBrowserActivity;->handleSnsException(Lcom/htc/music/online/sinamusic/SnsException;I)V

    .end local v0           #e:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_3
    move-object v2, v4

    .line 46
    goto :goto_0
.end method

.method haveMore()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    iget-boolean v3, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mbSongCntGetFromServer:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mSongCnt:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 61
    .local v0, bHaveMore:Z
    :goto_0
    if-nez v0, :cond_0

    iget v3, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mSongCnt:I

    iget v4, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mStartIdx:I

    if-le v3, v4, :cond_2

    :cond_0
    move v0, v1

    .line 64
    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/htc/music/online/RecommendationBrowserActivity;->mbGetLessThanRequest:Z

    if-nez v3, :cond_3

    move v0, v1

    .line 65
    :goto_2
    return v0

    .end local v0           #bHaveMore:Z
    :cond_1
    move v0, v2

    .line 59
    goto :goto_0

    .restart local v0       #bHaveMore:Z
    :cond_2
    move v0, v2

    .line 61
    goto :goto_1

    :cond_3
    move v0, v2

    .line 64
    goto :goto_2
.end method

.method protected setDialogTitle(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    const v0, 0x7f0701da

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    .line 93
    :cond_0
    return-void
.end method

.method protected setTitle()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0701da

    invoke-virtual {p0, v0}, Lcom/htc/music/online/RecommendationBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/RecommendationBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/RecommendationBrowserActivity;->setCategorySecondaryTitleVisible(Z)V

    .line 53
    return-void
.end method
