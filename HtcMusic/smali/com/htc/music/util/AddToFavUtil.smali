.class public Lcom/htc/music/util/AddToFavUtil;
.super Ljava/lang/Object;
.source "AddToFavUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/AddToFavUtil$NonUiHandler;
    }
.end annotation


# static fields
.field private static final ADDTO_ONLINE_FAVORITE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[AddToFavForLandingPage]"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mNonUiHandler:Lcom/htc/music/util/AddToFavUtil$NonUiHandler;

.field private mSongId:I

.field private mSongName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "landingPage"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 25
    iput-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mNonUiHandler:Lcom/htc/music/util/AddToFavUtil$NonUiHandler;

    .line 31
    iput-object p1, p0, Lcom/htc/music/util/AddToFavUtil;->mActivity:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/util/AddToFavUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/music/util/AddToFavUtil;->mSongId:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/music/util/AddToFavUtil;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/util/AddToFavUtil;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mSongName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addToFavorites(ILjava/lang/String;)V
    .locals 2
    .parameter "songId"
    .parameter "songName"

    .prologue
    .line 125
    iput p1, p0, Lcom/htc/music/util/AddToFavUtil;->mSongId:I

    .line 126
    iput-object p2, p0, Lcom/htc/music/util/AddToFavUtil;->mSongName:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/htc/music/util/AddToFavUtil;->getNonUiHandler()Lcom/htc/music/util/AddToFavUtil$NonUiHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AddToFavUtil$NonUiHandler;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method

.method public declared-synchronized getNonUiHandler()Lcom/htc/music/util/AddToFavUtil$NonUiHandler;
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mNonUiHandler:Lcom/htc/music/util/AddToFavUtil$NonUiHandler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mNonUiHandler:Lcom/htc/music/util/AddToFavUtil$NonUiHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-object v0

    .line 118
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LandingPageWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 119
    iget-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v0, Lcom/htc/music/util/AddToFavUtil$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/util/AddToFavUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/music/util/AddToFavUtil$NonUiHandler;-><init>(Landroid/os/Looper;Lcom/htc/music/util/AddToFavUtil;)V

    iput-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mNonUiHandler:Lcom/htc/music/util/AddToFavUtil$NonUiHandler;

    .line 121
    iget-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mNonUiHandler:Lcom/htc/music/util/AddToFavUtil$NonUiHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queryMediaInfo(I)I
    .locals 11
    .parameter "id"

    .prologue
    .line 61
    const/4 v9, 0x0

    .line 62
    .local v9, mAlbumId:I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 66
    .local v2, mOnlineCursorCols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 68
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AddToFavUtil;->mActivity:Landroid/app/Activity;

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

    .line 71
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 72
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 74
    .local v6, colCount:I
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 75
    .local v10, position:I
    if-lez v6, :cond_0

    if-gez v10, :cond_2

    .line 76
    :cond_0
    const-string v0, "[AddToFavForLandingPage]"

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

    .line 77
    const/4 v0, -0x1

    .line 84
    if-eqz v7, :cond_1

    .line 85
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 86
    const/4 v7, 0x0

    .line 89
    .end local v6           #colCount:I
    .end local v10           #position:I
    :cond_1
    :goto_0
    return v0

    .line 79
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

    .line 84
    .end local v6           #colCount:I
    .end local v10           #position:I
    :cond_3
    if-eqz v7, :cond_4

    .line 85
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 86
    :goto_1
    const/4 v7, 0x0

    :cond_4
    move v0, v9

    .line 89
    goto :goto_0

    .line 81
    :catch_0
    move-exception v8

    .line 82
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "[AddToFavForLandingPage]"

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

    .line 84
    if-eqz v7, :cond_4

    .line 85
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 84
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 85
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 86
    const/4 v7, 0x0

    .line 84
    :cond_5
    throw v0
.end method
