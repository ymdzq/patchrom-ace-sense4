.class public Lcom/htc/music/online/FavoriteBrowserActivity;
.super Lcom/htc/music/online/TrackListActivity;
.source "FavoriteBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;


# static fields
.field static final CATCH_SONG_COUNT:I = 0x14

.field static final TAG:Ljava/lang/String; = "[FavoriteBrowserActivity]"


# instance fields
.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field mSongCnt:I

.field mbGetLessThanRequest:Z

.field mbSongCntGetFromServer:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/htc/music/online/TrackListActivity;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mSongCnt:I

    .line 20
    iput-boolean v1, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mbGetLessThanRequest:Z

    .line 21
    iput-boolean v1, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mbSongCntGetFromServer:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/online/TrackListActivity;->mListViewType:I

    .line 26
    return-void
.end method

.method private checkLogin()V
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    if-eqz v1, :cond_0

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "requestActionType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-virtual {v1, p0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->setGetFavoriteInterface(Lcom/htc/music/online/OnlineRequestHandler$GetFavoriteInterface;)V

    .line 125
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->request(Landroid/os/Bundle;)V

    .line 127
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mAdapter:Lcom/htc/music/online/TrackListActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 136
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/online/TrackListActivity;->mCurPage:I

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mSongCnt:I

    .line 138
    iput-boolean v1, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mbSongCntGetFromServer:Z

    .line 139
    iput-boolean v1, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mbGetLessThanRequest:Z

    .line 140
    return-void
.end method


# virtual methods
.method protected cachePlayAllData(I)Ljava/util/ArrayList;
    .locals 1
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
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public doAfterLogin()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/music/online/FavoriteBrowserActivity;->checkNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/htc/music/online/FavoriteBrowserActivity;->requestSongList()V

    .line 112
    :cond_0
    return-void
.end method

.method public doAfterLogout()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/htc/music/online/FavoriteBrowserActivity;->reset()V

    .line 117
    invoke-direct {p0}, Lcom/htc/music/online/FavoriteBrowserActivity;->checkLogin()V

    .line 118
    return-void
.end method

.method public doIfNotLogin()V
    .locals 2

    .prologue
    .line 173
    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Lcom/htc/music/online/FavoriteBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 176
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    return-void
.end method

.method protected fillOptionItems()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 71
    new-array v0, v3, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f070058

    invoke-virtual {p0, v2}, Lcom/htc/music/online/FavoriteBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x204026f

    invoke-virtual {p0, v2}, Lcom/htc/music/online/FavoriteBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x2040272

    invoke-virtual {p0, v2}, Lcom/htc/music/online/FavoriteBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0701df

    invoke-virtual {p0, v2}, Lcom/htc/music/online/FavoriteBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mItems:[Ljava/lang/CharSequence;

    .line 75
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mIds:[I

    .line 77
    return-void

    .line 75
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected getTrackList()Ljava/util/ArrayList;
    .locals 9
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
    const/16 v8, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 42
    iget-object v5, p0, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    if-eqz v5, :cond_2

    .line 44
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/online/TrackListActivity;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    iget v6, p0, Lcom/htc/music/online/TrackListActivity;->mCurPage:I

    const/16 v7, 0x14

    invoke-interface {v5, v6, v7}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getSelfFavouriteSong(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 45
    .local v2, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mbSongCntGetFromServer:Z

    .line 46
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 48
    .local v1, songSize:I
    if-ge v1, v8, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mbGetLessThanRequest:Z

    .line 49
    iget v3, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mSongCnt:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    if-lez v1, :cond_0

    .line 50
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-virtual {v3}, Lcom/htc/music/online/sinamusic/WrapperSong;->getTotalSong()I

    move-result v3

    iput v3, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mSongCnt:I
    :try_end_0
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1           #songSize:I
    .end local v2           #songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :cond_0
    :goto_1
    return-object v2

    .restart local v1       #songSize:I
    .restart local v2       #songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :cond_1
    move v3, v4

    .line 48
    goto :goto_0

    .line 54
    .end local v1           #songSize:I
    .end local v2           #songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Lcom/htc/music/online/sinamusic/SnsException;
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/htc/music/online/FavoriteBrowserActivity;->handleSnsException(Lcom/htc/music/online/sinamusic/SnsException;I)V

    .line 56
    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->printStackTrace()V

    .line 59
    .end local v0           #e:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method haveMore()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    iget-boolean v4, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mbSongCntGetFromServer:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mSongCnt:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 90
    .local v0, bHaveMore:Z
    :goto_0
    const/4 v1, 0x0

    .line 91
    .local v1, curCnt:I
    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 94
    :cond_0
    if-nez v0, :cond_1

    iget v4, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mSongCnt:I

    if-le v4, v1, :cond_3

    :cond_1
    move v0, v2

    .line 97
    :goto_1
    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mbGetLessThanRequest:Z

    if-nez v4, :cond_4

    move v0, v2

    .line 98
    :goto_2
    return v0

    .end local v0           #bHaveMore:Z
    .end local v1           #curCnt:I
    :cond_2
    move v0, v3

    .line 88
    goto :goto_0

    .restart local v0       #bHaveMore:Z
    .restart local v1       #curCnt:I
    :cond_3
    move v0, v3

    .line 94
    goto :goto_1

    :cond_4
    move v0, v3

    .line 97
    goto :goto_2
.end method

.method protected needCheckNetworkInOnResume()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/music/online/TrackListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/online/TrackListActivity;->mCurPage:I

    .line 32
    invoke-direct {p0}, Lcom/htc/music/online/FavoriteBrowserActivity;->checkLogin()V

    .line 33
    return-void
.end method

.method protected removeSelectedSong()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->sendEmptyMessage(I)Z

    .line 82
    return-void
.end method

.method protected setDialogTitle(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    const v0, 0x7f0701db

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    .line 147
    :cond_0
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/htc/music/online/FavoriteBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FavoriteBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FavoriteBrowserActivity;->setCategorySecondaryTitleVisible(Z)V

    .line 67
    return-void
.end method

.method protected showData()V
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mSongCnt:I

    if-gtz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->hide()V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/online/FavoriteBrowserActivity;->showEmptyView()V

    .line 156
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FavoriteBrowserActivity;->setEmptyViewText(I)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-super {p0}, Lcom/htc/music/online/TrackListActivity;->showData()V

    goto :goto_0
.end method

.method public showEmptyView()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 166
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FavoriteBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/FavoriteBrowserActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 169
    return-void
.end method
