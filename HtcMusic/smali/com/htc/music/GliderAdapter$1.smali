.class Lcom/htc/music/GliderAdapter$1;
.super Ljava/lang/Object;
.source "GliderAdapter.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/GliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/GliderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/GliderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs declared-synchronized onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 12
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)I

    move-result v9

    if-ne v9, p1, :cond_0

    .line 575
    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    const/4 v10, 0x1

    #setter for: Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z
    invoke-static {v9, v10}, Lcom/htc/music/GliderAdapter;->access$102(Lcom/htc/music/GliderAdapter;Z)Z

    .line 578
    :cond_0
    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v9

    array-length v9, v9

    if-ge p1, v9, :cond_1

    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$300(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$400(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-result-object v9

    if-nez v9, :cond_5

    .line 581
    :cond_1
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mCanUpdateSelectedItem:Z
    invoke-static {v10}, Lcom/htc/music/GliderAdapter;->access$100(Lcom/htc/music/GliderAdapter;)Z

    move-result v10

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)I

    move-result v9

    if-ne v9, p1, :cond_2

    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$300(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 583
    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$300(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v9

    iget-object v5, v9, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 584
    .local v5, presentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    if-eqz v5, :cond_2

    .line 585
    invoke-virtual {v5, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyUpdateItem(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    .end local v5           #presentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    :cond_2
    if-nez p2, :cond_4

    .line 655
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 594
    :cond_4
    if-eqz p2, :cond_3

    .line 595
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 596
    const/4 p2, 0x0

    goto :goto_0

    .line 601
    :cond_5
    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$400(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/SBitmap;

    .line 602
    .local v2, bmp3D:Lcom/htc/sunny2/SBitmap;
    const/4 v1, 0x1

    .line 604
    .local v1, bAddToCache:Z
    if-eqz p5, :cond_8

    move-object/from16 v0, p5

    array-length v9, v0

    const/4 v10, 0x1

    if-le v9, v10, :cond_8

    const/4 v9, 0x1

    aget-object v9, p5, v9

    if-eqz v9, :cond_8

    .line 606
    const/4 v9, 0x1

    aget-object v9, p5, v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 607
    const/4 v1, 0x0

    .line 642
    :cond_6
    :goto_1
    const/4 v9, 0x1

    if-ne v9, v1, :cond_7

    .line 643
    invoke-static {p2}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    .line 644
    if-eqz v2, :cond_7

    .line 645
    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$400(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 646
    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    iget-object v9, v9, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v11}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v11

    aget-object v11, v11, p1

    iget v11, v11, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$300(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v9, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyUpdateItem(I)V

    .line 651
    :cond_7
    if-eqz p2, :cond_3

    .line 652
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 653
    const/4 p2, 0x0

    goto :goto_0

    .line 612
    :cond_8
    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$500(Lcom/htc/music/GliderAdapter;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 613
    if-eqz p5, :cond_9

    const/4 v9, 0x0

    aget-object v9, p5, v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    aget-object v9, p5, v9

    instance-of v9, v9, Ljava/lang/Integer;

    if-eqz v9, :cond_9

    .line 614
    const/4 v9, 0x0

    aget-object v9, p5, v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 615
    .local v4, nRequestAlbumId:I
    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v9

    aget-object v9, v9, p1

    iget v9, v9, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v4, v9, :cond_6

    .line 616
    const/4 v1, 0x0

    goto :goto_1

    .line 619
    .end local v4           #nRequestAlbumId:I
    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    .line 622
    :cond_a
    iget-object v9, p0, Lcom/htc/music/GliderAdapter$1;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mMusicContext:Lcom/htc/music/HtcMusic;
    invoke-static {v9}, Lcom/htc/music/GliderAdapter;->access$300(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/HtcMusic;

    move-result-object v9

    iget-object v6, v9, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    .local v6, service:Lcom/htc/music/IMediaPlaybackService;
    const/4 v8, 0x0

    .line 625
    .local v8, szRequestAlbumPath:Ljava/lang/String;
    if-eqz v6, :cond_b

    .line 626
    :try_start_2
    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 630
    :cond_b
    :goto_2
    if-eqz p5, :cond_c

    const/4 v9, 0x0

    :try_start_3
    aget-object v9, p5, v9

    if-eqz v9, :cond_c

    const/4 v9, 0x0

    aget-object v9, p5, v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_c

    .line 631
    const/4 v9, 0x0

    aget-object v7, p5, v9

    check-cast v7, Ljava/lang/String;

    .line 632
    .local v7, szDecodedAlbumArtPath:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 633
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 627
    .end local v7           #szDecodedAlbumArtPath:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 628
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 574
    .end local v1           #bAddToCache:Z
    .end local v2           #bmp3D:Lcom/htc/sunny2/SBitmap;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v6           #service:Lcom/htc/music/IMediaPlaybackService;
    .end local v8           #szRequestAlbumPath:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 636
    .restart local v1       #bAddToCache:Z
    .restart local v2       #bmp3D:Lcom/htc/sunny2/SBitmap;
    .restart local v6       #service:Lcom/htc/music/IMediaPlaybackService;
    .restart local v8       #szRequestAlbumPath:Ljava/lang/String;
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1
.end method
