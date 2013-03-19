.class final Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "SinaMusicPlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/SinaMusicPlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyDlArtAsyncQueryHandler"
.end annotation


# instance fields
.field private final innercontext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/online/SinaMusicPlayHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/music/online/SinaMusicPlayHelper;Landroid/content/ContentResolver;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "cr"
    .parameter "joinAlbumArt"
    .parameter "enhancerExist"

    .prologue
    .line 187
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 188
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    .line 189
    return-void
.end method

.method private checkPreparedID(Landroid/database/Cursor;)V
    .locals 12
    .parameter "cursor"

    .prologue
    .line 212
    :cond_0
    const-string v10, "album_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, albumididx:I
    const-string v10, "_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 214
    .local v3, ididx:I
    if-ltz v1, :cond_1

    if-gez v3, :cond_3

    .line 215
    :cond_1
    const-string v10, "[AbsSinaActivity]"

    const-string v11, "albumididx <0 or ididx<0 in checkPreparedID()"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 234
    return-void

    .line 218
    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 219
    .local v0, albumid:I
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 220
    .local v2, id:I
    iget-object v10, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$200(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;

    move-result-object v9

    .line 221
    .local v9, songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    iget-object v10, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedID:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$300(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;

    move-result-object v5

    .line 222
    .local v5, preparedID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedSongID:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$400(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;

    move-result-object v6

    .line 223
    .local v6, preparedSongID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, k:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, size:I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 224
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 225
    .local v8, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    invoke-virtual {v8}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v10

    if-ne v0, v10, :cond_4

    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private play()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 245
    const-string v0, "[AbsSinaActivity]"

    const-string v2, "Prepared ok,start to play music"

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->reSortForPlayList()[I

    move-result-object v1

    .line 247
    .local v1, ids:[I
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$500(Lcom/htc/music/online/SinaMusicPlayHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/online/SinaMusicPlayHelper;

    iget-object v2, v2, Lcom/htc/music/online/SinaMusicPlayHelper;->mPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v3, v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playOnlineAll(Landroid/content/Context;[IIZLcom/htc/music/NpCategory;[I)V

    .line 249
    return-void
.end method

.method private reSortForPlayList()[I
    .locals 12

    .prologue
    .line 253
    iget-object v10, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedID:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$300(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;

    move-result-object v5

    .line 254
    .local v5, preparedID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedSongID:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$400(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;

    move-result-object v6

    .line 255
    .local v6, preparedSongID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v4, v10, [I

    .line 256
    .local v4, ids:[I
    const/4 v0, 0x0

    .line 257
    .local v0, count:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, size:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 258
    .local v9, songIDSize:I
    iget-object v10, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$200(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 259
    .local v8, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    const/4 v2, 0x0

    .local v2, i:I
    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_1
    if-ge v2, v7, :cond_0

    if-ge v2, v9, :cond_0

    .line 260
    invoke-virtual {v8}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v11, v10, :cond_2

    .line 261
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v4, v1

    .line 259
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_1

    :cond_0
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_0

    .line 265
    .end local v2           #i:I
    .end local v8           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :cond_1
    return-object v4

    .end local v0           #count:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v8       #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :cond_2
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_2
.end method

.method private readyToPlaySongList()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mPreparedID:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$300(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mSongList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$200(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 269
    const-wide/16 v3, -0x1

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v3, v6

    if-nez v0, :cond_0

    .line 270
    const-string v0, "[AbsSinaActivity]"

    const-string v1, "Insert failed"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 273
    :cond_0
    const-string v0, "[AbsSinaActivity]"

    const-string v3, "onInsertComplete"

    invoke-static {v0, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id in("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mWhereString:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$600(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->mWhereString:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$600(Lcom/htc/music/online/SinaMusicPlayHelper;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
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

    .line 277
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/SinaMusicPlayHelper;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/online/SinaMusicPlayHelper;->isFinishedInsert:Z
    invoke-static {v0, v3}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$002(Lcom/htc/music/online/SinaMusicPlayHelper;Z)Z

    .line 278
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/SinaMusicPlayHelper;

    #calls: Lcom/htc/music/online/SinaMusicPlayHelper;->GetMyDlArtAsyncQueryHandler()V
    invoke-static {v0}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$700(Lcom/htc/music/online/SinaMusicPlayHelper;)V

    .line 279
    iget-object v0, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->myDlArtAsyncQueryHandler:Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;
    invoke-static {v0}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$900(Lcom/htc/music/online/SinaMusicPlayHelper;)Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;

    move-result-object v0

    sget-object v3, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/online/SinaMusicPlayHelper;

    invoke-static {}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$800()[Ljava/lang/String;

    move-result-object v4

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->startOnlineQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onOnlineQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 192
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-direct {p0, p3}, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->checkPreparedID(Landroid/database/Cursor;)V

    .line 194
    invoke-direct {p0}, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->readyToPlaySongList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->play()V

    .line 208
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->isFinishedInsert:Z
    invoke-static {v1}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$000(Lcom/htc/music/online/SinaMusicPlayHelper;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    const-string v1, "[AbsSinaActivity]"

    const-string v2, "isFinishedInsert but data is not ready so cancel play action"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/online/SinaMusicPlayHelper;

    #getter for: Lcom/htc/music/online/SinaMusicPlayHelper;->isFinishedInsert:Z
    invoke-static {v1}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$000(Lcom/htc/music/online/SinaMusicPlayHelper;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const-string v1, "[AbsSinaActivity]"

    const-string v2, "isFinishedInsert but data is not ready so cancel play action"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->innercontext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/online/SinaMusicPlayHelper;

    #calls: Lcom/htc/music/online/SinaMusicPlayHelper;->prepareInsertValues()[Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/htc/music/online/SinaMusicPlayHelper;->access$100(Lcom/htc/music/online/SinaMusicPlayHelper;)[Landroid/content/ContentValues;

    move-result-object v0

    .line 206
    .local v0, mAlbumValues:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/htc/music/online/SinaMusicPlayHelper$MyDlArtAsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;[Landroid/content/ContentValues;)V

    goto :goto_0
.end method
