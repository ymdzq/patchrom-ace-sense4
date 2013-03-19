.class Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;
.super Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;
.source "OnlineNowPlayingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/OnlineNowPlayingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineNowPlayingCursor"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[NowPlayingViewHelper]"


# instance fields
.field final synthetic this$0:Lcom/htc/music/OnlineNowPlayingView;


# direct methods
.method public constructor <init>(Lcom/htc/music/OnlineNowPlayingView;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "service"
    .parameter "cols"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    .line 527
    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 528
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 529
    invoke-virtual {p0}, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;->makeNowPlayingCursor()V

    .line 530
    return-void
.end method


# virtual methods
.method makeNowPlayingCursor()V
    .locals 19

    .prologue
    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 535
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 539
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 547
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    if-nez v1, :cond_2

    .line 548
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "now playing list is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_1
    :goto_1
    return-void

    .line 540
    :catch_0
    move-exception v10

    .line 541
    .local v10, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_0

    .line 542
    .end local v10           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 543
    .local v10, ex:Ljava/lang/NullPointerException;
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "mService is null!!, will return directly"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_0

    .line 552
    .end local v10           #ex:Ljava/lang/NullPointerException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 553
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-eqz v1, :cond_1

    .line 557
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v18, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v11, v1, :cond_4

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v1, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_3

    .line 562
    const-string v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 565
    :cond_4
    const-string v1, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v2, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 570
    .local v7, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    invoke-virtual {v1, v7}, Lcom/htc/music/OnlineNowPlayingView;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    .line 575
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    goto/16 :goto_1

    .line 578
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 579
    .local v15, size:I
    new-array v1, v15, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    .line 580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 582
    .local v8, colidx:I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_6

    .line 583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v1, v11

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 582
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 591
    :cond_6
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;->mPos:I

    .line 592
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;->mRowIdColumnIndex:I

    .line 593
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/OnlineNowPlayingView$OnlineNowPlayingCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 594
    invoke-super/range {p0 .. p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->moveToFirst()Z

    .line 595
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    .line 603
    const/4 v13, 0x0

    .line 604
    .local v13, removeTrackCount:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 606
    .local v16, trackIds:[I
    const/4 v14, 0x0

    .line 607
    .local v14, removed:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    add-int/lit8 v11, v1, -0x1

    :goto_4
    if-ltz v11, :cond_8

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v17, v1, v11

    .line 609
    .local v17, trackid:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    move/from16 v0, v17

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    .line 610
    .local v9, crsridx:I
    if-gez v9, :cond_7

    .line 615
    aput v17, v16, v13

    .line 616
    add-int/lit8 v13, v13, 0x1

    .line 607
    :cond_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 620
    .end local v9           #crsridx:I
    .end local v17           #trackid:I
    :cond_8
    if-lez v13, :cond_9

    .line 621
    new-array v12, v13, [I

    .line 622
    .local v12, removePosition:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v12

    move-object/from16 v0, v16

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v12}, Lcom/htc/music/IMediaPlaybackService;->removeTracksReduceBroadcast([I)I

    move-result v1

    add-int/2addr v14, v1

    .line 627
    .end local v12           #removePosition:[I
    :cond_9
    if-lez v14, :cond_1

    .line 628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    .line 629
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 630
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-nez v1, :cond_1

    .line 631
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 635
    .end local v14           #removed:I
    .end local v16           #trackIds:[I
    :catch_2
    move-exception v10

    .line 636
    .local v10, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto/16 :goto_1
.end method
