.class public Lcom/htc/music/OnlineNowPlayingView;
.super Lcom/htc/music/NowPlayingViewHelper;
.source "OnlineNowPlayingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/OnlineNowPlayingView$OnlineTrackListAdapter;,
        Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;
    }
.end annotation


# instance fields
.field private mIsInnerTypeChanged:Z

.field private mIsOnlineInnerType:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

.field private onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;-><init>(Landroid/app/Activity;)V

    .line 45
    iput-boolean v0, p0, Lcom/htc/music/OnlineNowPlayingView;->mIsOnlineInnerType:Z

    .line 46
    iput-boolean v0, p0, Lcom/htc/music/OnlineNowPlayingView;->mIsInnerTypeChanged:Z

    .line 211
    new-instance v0, Lcom/htc/music/OnlineNowPlayingView$2;

    invoke-direct {v0, p0}, Lcom/htc/music/OnlineNowPlayingView$2;-><init>(Lcom/htc/music/OnlineNowPlayingView;)V

    iput-object v0, p0, Lcom/htc/music/OnlineNowPlayingView;->onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    .line 50
    new-instance v0, Lcom/htc/music/OnlineNowPlayingView$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/OnlineNowPlayingView$1;-><init>(Lcom/htc/music/OnlineNowPlayingView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/music/OnlineNowPlayingView;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    new-instance v0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    iget-object v1, p0, Lcom/htc/music/OnlineNowPlayingView;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, p1, v1}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/htc/music/OnlineNowPlayingView;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/OnlineNowPlayingView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/music/OnlineNowPlayingView;->mIsOnlineInnerType:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/OnlineNowPlayingView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/music/OnlineNowPlayingView;->mIsOnlineInnerType:Z

    return p1
.end method

.method static synthetic access$102(Lcom/htc/music/OnlineNowPlayingView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/music/OnlineNowPlayingView;->mIsInnerTypeChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/OnlineNowPlayingView;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    return-object v0
.end method

.method private getAlbumName(Lcom/htc/music/IMediaPlaybackService;)Ljava/lang/String;
    .locals 2
    .parameter "mService"

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 318
    :try_start_0
    invoke-interface {p1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 323
    :goto_0
    return-object v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 323
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getWrapperSong()Lcom/htc/music/online/sinamusic/WrapperSong;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 724
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_1

    .line 725
    :cond_0
    const-string v5, "[NowPlayingViewHelper]"

    const-string v7, "mTrackCursor is wrong in OnlineNowPlayingView.getWrapperSong"

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :goto_0
    return-object v1

    .line 733
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "album"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, album:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "artist"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 737
    .local v2, artist:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 739
    .local v3, albumid:I
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "album_art"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 745
    .local v4, artpath:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object v1, v0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/online/Util;->getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v1

    goto :goto_0

    .line 741
    .end local v0           #album:Ljava/lang/String;
    .end local v2           #artist:Ljava/lang/String;
    .end local v3           #albumid:I
    .end local v4           #artpath:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 742
    .local v6, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v5, "[NowPlayingViewHelper]"

    const-string v7, "mTrackCursor is wrong in OnlineNowPlayingView.getWrapperSong"

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchRelatedWeibo()V
    .locals 3

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/htc/music/OnlineNowPlayingView;->getWrapperSong()Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v0

    .line 714
    .local v0, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    if-nez v0, :cond_0

    .line 715
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "getWrapperSong is null in shareOnlineMusicText"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/htc/music/online/Util;->gotoRelatedWeibo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;)V

    goto :goto_0
.end method

.method private shareOnlineMusicText()V
    .locals 3

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/htc/music/OnlineNowPlayingView;->getWrapperSong()Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v0

    .line 702
    .local v0, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    if-nez v0, :cond_0

    .line 703
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "getWrapperSong is null in shareOnlineMusicText"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/htc/music/online/Util;->shareMusicInfo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;Z)V

    goto :goto_0
.end method


# virtual methods
.method addToOnlineFavor()V
    .locals 5

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/htc/music/OnlineNowPlayingView;->getWrapperSong()Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v1

    .line 254
    .local v1, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    if-nez v1, :cond_0

    .line 255
    const-string v3, "[NowPlayingViewHelper]"

    const-string v4, "getWrapperSong is null in addToOnlineFavor"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, albumname:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v2

    .line 260
    .local v2, songid:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 261
    const-string v3, "[NowPlayingViewHelper]"

    const-string v4, "songid is wrong when return from OnlineNowPlayingView.queryMediaInfo() so cancel ADDTO_ONLINE_FAVORITE"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    :cond_2
    const-string v3, "[NowPlayingViewHelper]"

    const-string v4, "albumname is wrong when return from OnlineNowPlayingView.getAlbumName() so cancel ADDTO_ONLINE_FAVORITE"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_3
    iget-object v3, p0, Lcom/htc/music/OnlineNowPlayingView;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    if-nez v3, :cond_4

    .line 269
    const-string v3, "[NowPlayingViewHelper]"

    const-string v4, "[onHtcContextItemSelected][ADD_TO_ONLINE_FAVORITES] mAddToFavUtil is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_4
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v4, Lcom/htc/music/OnlineNowPlayingView$3;

    invoke-direct {v4, p0, v2, v0}, Lcom/htc/music/OnlineNowPlayingView$3;-><init>(Lcom/htc/music/OnlineNowPlayingView;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method createNowPlayingCursor()Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;
    .locals 3

    .prologue
    .line 380
    new-instance v0, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;-><init>(Lcom/htc/music/OnlineNowPlayingView;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createServiceConnected_Local()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 63
    new-instance v0, Lcom/htc/music/OnlineNowPlayingView$OnlineTrackListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030009

    const/4 v4, 0x0

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/OnlineNowPlayingView$OnlineTrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 69
    return-void
.end method

.method protected getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "filter"

    .prologue
    .line 456
    const/4 v8, 0x0

    .line 457
    .local v8, ret:Landroid/database/Cursor;
    const-string v0, "title COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    .line 458
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const/4 v4, 0x0

    .line 463
    .local v4, keywords:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 477
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 478
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 479
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v0, "title LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_3

    .line 485
    if-eqz p1, :cond_5

    .line 486
    const/4 v7, 0x0

    .line 488
    .local v7, nowplaying:[I
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v7

    .line 489
    const-string v0, " AND _id IN ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_2

    .line 491
    aget v0, v7, v6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_1

    .line 493
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 496
    :cond_2
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v1, Lcom/htc/music/online/OnlineMusicDBHelper$OnlineMediaArt;->ONLINEMEDIA_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 516
    .end local v6           #i:I
    .end local v7           #nowplaying:[I
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 517
    invoke-virtual {p0, v8}, Lcom/htc/music/OnlineNowPlayingView;->init(Landroid/database/Cursor;)V

    .line 519
    :cond_4
    return-object v8

    .line 505
    :cond_5
    new-instance v8, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;

    .end local v8           #ret:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v8, p0, v0, v1}, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;-><init>(Lcom/htc/music/OnlineNowPlayingView;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .restart local v8       #ret:Landroid/database/Cursor;
    goto :goto_1

    .line 501
    .restart local v7       #nowplaying:[I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method gotoOnlineProperty()V
    .locals 4

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/htc/music/OnlineNowPlayingView;->getWrapperSong()Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v1

    .line 244
    .local v1, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    if-nez v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v2

    .line 248
    .local v2, songId:I
    new-instance v0, Lcom/htc/music/online/util/AsyncSongDetailGetter;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/htc/music/online/util/AsyncSongDetailGetter;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, getter:Lcom/htc/music/online/util/AsyncSongDetailGetter;
    iget-object v3, p0, Lcom/htc/music/OnlineNowPlayingView;->onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    invoke-virtual {v0, v2, v3}, Lcom/htc/music/online/util/AsyncSongDetailGetter;->start(ILcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;)V

    goto :goto_0
.end method

.method gotoRelatedWeibo()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/htc/music/OnlineNowPlayingView;->searchRelatedWeibo()V

    .line 697
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 327
    sparse-switch p1, :sswitch_data_0

    move v5, v6

    .line 376
    :cond_0
    :goto_0
    :sswitch_0
    return v5

    .line 329
    :sswitch_1
    if-ne p2, v7, :cond_0

    .line 330
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 331
    .local v0, list:[I
    const-string v7, "playlist"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 332
    .local v1, playlist:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    int-to-long v7, v1

    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 334
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/htc/music/OnlineNowPlayingView;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 340
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_2
    if-ne p2, v7, :cond_0

    .line 341
    new-array v0, v5, [I

    iget-wide v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v7, v7

    aput v7, v0, v6

    .line 344
    .restart local v0       #list:[I
    const-string v7, "playlist"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 345
    .restart local v1       #playlist:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    int-to-long v7, v1

    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 352
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-ne p2, v7, :cond_0

    .line 353
    move-object v2, p3

    .line 354
    .local v2, resultIntent:Landroid/content/Intent;
    new-instance v3, Lcom/htc/music/OnlineNowPlayingView$4;

    invoke-direct {v3, p0, v2}, Lcom/htc/music/OnlineNowPlayingView$4;-><init>(Lcom/htc/music/OnlineNowPlayingView;Landroid/content/Intent;)V

    .line 370
    .local v3, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 371
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 327
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x13 -> :sswitch_3
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 149
    const/4 v0, 0x2

    const/16 v1, 0x67

    const/4 v2, 0x0

    const v3, 0x7f07000d

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method onCreate_Local(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 11
    .parameter "intent"
    .parameter "icicle"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 384
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_art"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    .line 395
    invoke-virtual {p0}, Lcom/htc/music/OnlineNowPlayingView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 396
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 398
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setActivity(Lcom/htc/music/NowPlayingViewHelper;)V

    .line 408
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 409
    invoke-virtual {p0, v4}, Lcom/htc/music/OnlineNowPlayingView;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    .line 438
    :goto_1
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 440
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 441
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 447
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 450
    :cond_0
    return-void

    .line 402
    .end local v9           #f:Landroid/content/IntentFilter;
    :catch_0
    move-exception v8

    .line 403
    .local v8, e:Ljava/lang/ClassCastException;
    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    goto :goto_0

    .line 416
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_1
    const/4 v10, 0x0

    .line 417
    .local v10, hideSelected:Z
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-ne v0, v5, :cond_3

    .line 418
    :cond_2
    const/4 v10, 0x1

    .line 421
    :cond_3
    new-instance v0, Lcom/htc/music/OnlineNowPlayingView$OnlineTrackListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030009

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/OnlineNowPlayingView$OnlineTrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 429
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    .line 431
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 433
    invoke-virtual {p0, v4}, Lcom/htc/music/OnlineNowPlayingView;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    .line 72
    const-string v4, "TrackBrowserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onListItemClick, position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iput p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 80
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, filename:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/htc/music/util/DrmUtils;->DRMV2_VerifyRights(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    .line 83
    .local v0, drmValidRights:Z
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-static {v4, v5, p3, v6, v7}, Lcom/htc/music/util/MusicUtils;->playOnlineAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/music/OnlineNowPlayingView;->resetNowIndicator()V

    .line 87
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v4, :cond_2

    .line 88
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->notifyDataSetChanged()V

    .line 92
    :goto_1
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 94
    .local v3, service:Lcom/htc/music/IMediaPlaybackService;
    if-eqz v3, :cond_3

    .line 95
    :try_start_0
    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 96
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_2
    const-string v4, "[NowPlayingViewHelper]"

    const-string v5, "onListItemClick_Local(), listAdapter is null."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    .restart local v3       #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_3
    :try_start_1
    const-string v4, "[NowPlayingViewHelper]"

    const-string v5, "service is null in onListItemClick_Local for OnlineNowPlayingView"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 208
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 181
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/music/OnlineNowPlayingView;->gotoOnlineProperty()V

    goto :goto_0

    .line 184
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/music/OnlineNowPlayingView;->addToOnlineFavor()V

    goto :goto_1

    .line 187
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/OnlineNowPlayingView;->enableNowPlayingWithGlance()V

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v2, "isnowplayinglist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v3, 0x66

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 198
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 203
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_4
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/htc/music/OnlineNowPlayingView;->showDialog(I)V

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_1
        0x20 -> :sswitch_0
        0x66 -> :sswitch_2
        0x67 -> :sswitch_4
        0x68 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 155
    const/16 v1, 0x67

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 156
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 157
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    :cond_0
    const/16 v1, 0x66

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_2

    .line 162
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-nez v1, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 167
    :cond_2
    const/16 v1, 0x68

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_3

    .line 169
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 172
    :cond_3
    return v2

    :cond_4
    move v1, v3

    .line 157
    goto :goto_0
.end method

.method onStopMore()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->onStop()V

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "[onStop] mSinaRequestHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryMediaInfo(I)I
    .locals 11
    .parameter "id"

    .prologue
    .line 284
    const/4 v9, 0x0

    .line 285
    .local v9, mAlbumId:I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 289
    .local v2, mOnlineCursorCols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 291
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v1, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 294
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 295
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 296
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 297
    .local v6, colCount:I
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 298
    .local v10, position:I
    if-lez v6, :cond_0

    if-gez v10, :cond_2

    .line 299
    :cond_0
    const-string v0, "[NowPlayingViewHelper]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCurrent: cols count = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", position = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    const/4 v0, -0x1

    .line 307
    if-eqz v7, :cond_1

    .line 308
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 309
    const/4 v7, 0x0

    .line 312
    .end local v6           #colCount:I
    .end local v10           #position:I
    :cond_1
    :goto_0
    return v0

    .line 302
    .restart local v6       #colCount:I
    .restart local v10       #position:I
    :cond_2
    :try_start_1
    const-string v0, "album_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 307
    .end local v6           #colCount:I
    .end local v10           #position:I
    :cond_3
    if-eqz v7, :cond_4

    .line 308
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 309
    :goto_1
    const/4 v7, 0x0

    :cond_4
    move v0, v9

    .line 312
    goto :goto_0

    .line 304
    :catch_0
    move-exception v8

    .line 305
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "[NowPlayingViewHelper]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB error for:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    if-eqz v7, :cond_4

    .line 308
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 307
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 308
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 309
    const/4 v7, 0x0

    .line 307
    :cond_5
    throw v0
.end method

.method shareMusic()V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/htc/music/OnlineNowPlayingView;->shareOnlineMusicText()V

    .line 693
    return-void
.end method

.method showTrackOptions(IJ)V
    .locals 8
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x4

    .line 108
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 110
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 112
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, id_idx:I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1           #id_idx:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "album"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    .line 123
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "album"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    .line 126
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentAlbumName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-array v3, v7, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f0701dc

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x204020f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f0701df

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x2040216

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 134
    .local v3, items:[Ljava/lang/CharSequence;
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 141
    .local v2, ids:[I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/music/OnlineNowPlayingView;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 142
    return-void

    .line 115
    .end local v2           #ids:[I
    .end local v3           #items:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 116
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-wide p2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    goto/16 :goto_0

    .line 134
    nop

    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method
