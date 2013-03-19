.class public Lcom/htc/music/online/SinaMusicPlayHelper;
.super Ljava/lang/Object;
.source "SinaMusicPlayHelper.java"

# interfaces
.implements Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[AbsSinaActivity]"

.field private static final TOKEN_ALBUM:I

.field private static final mAlbumCols:[Ljava/lang/String;


# instance fields
.field private isFinishedInsert:Z

.field private final mContext:Landroid/content/Context;

.field private mIsEnhancerExist:Z

.field public mPosition:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPreparedID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreparedSongID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSongList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end field

.field private mWhereString:Ljava/lang/StringBuilder;

.field private myDlArtAsyncQueryHandler:Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/online/SinaMusicPlayHelper;->mAlbumCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isEnhancerExist"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->myDlArtAsyncQueryHandler:Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;

    .line 28
    iput-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    .line 29
    iput-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedID:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedSongID:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mWhereString:Ljava/lang/StringBuilder;

    .line 34
    iput-boolean v1, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->isFinishedInsert:Z

    .line 41
    iput-object p1, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-boolean p2, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mIsEnhancerExist:Z

    .line 43
    return-void
.end method

.method private declared-synchronized GetMyDlArtAsyncQueryHandler()V
    .locals 4

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->myDlArtAsyncQueryHandler:Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;

    iget-object v1, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mIsEnhancerExist:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;-><init>(Lcom/htc/music/online/SinaMusicPlayHelper;Landroid/content/ContentResolver;ZZ)V

    iput-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->myDlArtAsyncQueryHandler:Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lcom/htc/music/online/SinaMusicPlayHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->isFinishedInsert:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/online/SinaMusicPlayHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->isFinishedInsert:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/online/SinaMusicPlayHelper;)[Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/music/online/SinaMusicPlayHelper;->prepareInsertValues()[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedSongID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/online/SinaMusicPlayHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mWhereString:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/online/SinaMusicPlayHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/music/online/SinaMusicPlayHelper;->GetMyDlArtAsyncQueryHandler()V

    return-void
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/music/online/SinaMusicPlayHelper;->mAlbumCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/online/SinaMusicPlayHelper;)Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->myDlArtAsyncQueryHandler:Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;

    return-object v0
.end method

.method private checkRegionOK(Lcom/htc/music/online/sinamusic/WrapperSong;)Z
    .locals 3
    .parameter "song"

    .prologue
    const/4 v0, 0x1

    .line 80
    const-string v1, "-101"

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongPlayUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0701f3

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    const-string v0, "[AbsSinaActivity]"

    const-string v1, "Service not available in your region"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    .line 85
    :cond_0
    return v0
.end method

.method private prepareInsertValues()[Landroid/content/ContentValues;
    .locals 8

    .prologue
    .line 163
    iget-object v6, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Landroid/content/ContentValues;

    .line 164
    .local v4, mMediaValues:[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 165
    .local v0, i:I
    iget-object v6, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 166
    .local v5, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    iget-object v6, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedSongID:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 169
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v3, mMediaValue:Landroid/content/ContentValues;
    const-string v7, "album"

    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, ""

    :goto_1
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v6, "song_id"

    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v7, "artist"

    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSingerName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, ""

    :goto_2
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v7, "url"

    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongPlayUrl()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v6, ""

    :goto_3
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v7, "title"

    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, ""

    :goto_4
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v7, "detailurl"

    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v6, ""

    :goto_5
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v7, "album_art"

    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSingerName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v6, ""

    :goto_6
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v3, v4, v0

    move v0, v1

    .line 178
    .end local v1           #i:I
    .restart local v0       #i:I
    goto/16 :goto_0

    .line 170
    :cond_1
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSingerName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 173
    :cond_3
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongPlayUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 174
    :cond_4
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 175
    :cond_5
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongDetailUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 176
    :cond_6
    invoke-virtual {v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 179
    .end local v3           #mMediaValue:Landroid/content/ContentValues;
    .end local v5           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :cond_7
    return-object v4
.end method

.method private prepareWhere(Lcom/htc/music/online/sinamusic/WrapperSong;)V
    .locals 2
    .parameter "song"

    .prologue
    .line 148
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v0

    if-gtz v0, :cond_1

    .line 149
    :cond_0
    const-string v0, "[AbsSinaActivity]"

    const-string v1, "fail to prepareWhere"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mWhereString:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id in("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mWhereString:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mWhereString:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, where:Ljava/lang/String;
    const-string v0, "[AbsSinaActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-boolean v1, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->isFinishedInsert:Z

    .line 142
    invoke-direct {p0}, Lcom/htc/music/online/SinaMusicPlayHelper;->GetMyDlArtAsyncQueryHandler()V

    .line 143
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->myDlArtAsyncQueryHandler:Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;

    sget-object v3, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/music/online/SinaMusicPlayHelper;->mAlbumCols:[Ljava/lang/String;

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->startOnlineQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method


# virtual methods
.method public final playSongAll(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;I)V
    .locals 6
    .parameter "wrapperSonglistDetail"
    .parameter "position"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const-string v4, "[AbsSinaActivity]"

    const-string v5, "[playSongAll] fail to playSongAll, songlist is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "wrapperSonglistDetail is null in playSongAll"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_0
    if-gez p2, :cond_1

    .line 51
    const-string v4, "[AbsSinaActivity]"

    const-string v5, "[playSongAll] fail to playSongAll, position <=0"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "position <=0 in playSongAll"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mWhereString:Ljava/lang/StringBuilder;

    .line 55
    iget-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedSongID:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 56
    iget-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 59
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSongItemlist()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 65
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "wrapperSonglistDetail.getSongItemlist() is error in playSongAll"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :goto_0
    return-void

    .line 67
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedID:Ljava/util/ArrayList;

    .line 68
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 69
    iget-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 70
    .local v3, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    if-nez v3, :cond_5

    .line 68
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_5
    invoke-direct {p0, v3}, Lcom/htc/music/online/SinaMusicPlayHelper;->checkRegionOK(Lcom/htc/music/online/sinamusic/WrapperSong;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    invoke-direct {p0, v3}, Lcom/htc/music/online/SinaMusicPlayHelper;->prepareWhere(Lcom/htc/music/online/sinamusic/WrapperSong;)V

    goto :goto_2

    .line 76
    .end local v3           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/online/SinaMusicPlayHelper;->startQuery()V

    goto :goto_0
.end method

.method public final playSongAll(Ljava/util/ArrayList;I)V
    .locals 8
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    if-nez p1, :cond_1

    .line 92
    const-string v5, "[AbsSinaActivity]"

    const-string v6, "[playSongAll(ArrayList<WrapperSong>, position)] songs is null"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    if-gez p2, :cond_2

    .line 96
    const-string v5, "[AbsSinaActivity]"

    const-string v6, "[playSongAll(ArrayList<WrapperSong>, position)] position < 0"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 100
    .local v4, songsSize:I
    if-gtz v4, :cond_3

    .line 101
    const-string v5, "[AbsSinaActivity]"

    const-string v6, "[playSongAll(ArrayList<WrapperSong>, position)] songsSize <= 0"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    if-gt v4, p2, :cond_4

    .line 105
    const-string v5, "[AbsSinaActivity]"

    const-string v6, "[playSongAll(ArrayList<WrapperSong>, position)] songsSize <= position"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_4
    iget-object v5, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v5, :cond_5

    .line 109
    const-string v5, "[AbsSinaActivity]"

    const-string v6, "[playSongAll(ArrayList<WrapperSong>, position)] mPosition cannot be null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mWhereString:Ljava/lang/StringBuilder;

    .line 113
    iget-object v5, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedSongID:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v5, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 117
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedID:Ljava/util/ArrayList;

    .line 123
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_1
    if-ge v1, v2, :cond_7

    .line 124
    iget-object v5, p0, Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 125
    .local v3, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    if-eqz v3, :cond_6

    .line 126
    invoke-direct {p0, v3}, Lcom/htc/music/online/SinaMusicPlayHelper;->checkRegionOK(Lcom/htc/music/online/sinamusic/WrapperSong;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    invoke-direct {p0, v3}, Lcom/htc/music/online/SinaMusicPlayHelper;->prepareWhere(Lcom/htc/music/online/sinamusic/WrapperSong;)V

    .line 123
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #size:I
    .restart local v3       #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :cond_6
    const-string v5, "[AbsSinaActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[playSongAll(ArrayList<WrapperSong>, int)] song cannot be null!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 134
    .end local v3           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :cond_7
    invoke-direct {p0}, Lcom/htc/music/online/SinaMusicPlayHelper;->startQuery()V

    goto/16 :goto_0
.end method
