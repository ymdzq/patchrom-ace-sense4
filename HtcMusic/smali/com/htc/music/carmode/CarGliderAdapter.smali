.class public Lcom/htc/music/carmode/CarGliderAdapter;
.super Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;
.source "CarGliderAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;,
        Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    }
.end annotation


# static fields
.field private static final CHANGE_BACKGROUND_PERIOD:J = 0x5dcL

.field private static final DEFAULT_ALBUM_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "[CarGliderAdapter]"

.field private static final mMdColumns:[Ljava/lang/String;


# instance fields
.field private mAlbumIdArtPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumIdPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlbumIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

.field private mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

.field private mCanUpdateSelectedItem:Z

.field private mComponentCount:I

.field private mCookie:J

.field private mCurrentAlbumArtId:I

.field private mCurrentAlbumId:I

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

.field private mImageHeight:I

.field private mImageWidth:I

.field mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mIsDownloadInfoQueried:Z

.field private mIsEnhancerExist:Z

.field private mIsPluginMode:Z

.field private mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

.field private mMemCacheSize:I

.field private mMemCacheSizeHalf:I

.field private mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

.field private mNormalScale:Z

.field mOnlineImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

.field private mPreSelectedAlbumId:I

.field private mPreSelectedPos:I

.field private mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field private mSelectedPos:I

.field private mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

.field private mUnknownAlbumId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMdColumns:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/sunny2/widget/presentation/SPresentation;Z)V
    .locals 5
    .parameter "musicContext"
    .parameter "spresentation"
    .parameter "defaultBig"

    .prologue
    const/16 v1, 0x9

    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;-><init>()V

    .line 46
    iput v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    .line 47
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 51
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    .line 53
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 54
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    .line 61
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    .line 64
    iput v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    .line 66
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    .line 67
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    .line 69
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedPos:I

    .line 70
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I

    .line 71
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 73
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    .line 75
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    .line 77
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    .line 79
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    .line 82
    iput-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    .line 88
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I

    .line 540
    new-instance v0, Lcom/htc/music/carmode/CarGliderAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarGliderAdapter$1;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 625
    new-instance v0, Lcom/htc/music/carmode/CarGliderAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarGliderAdapter$2;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mOnlineImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    .line 636
    iput v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCurrentAlbumId:I

    .line 666
    iput v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCurrentAlbumArtId:I

    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    .line 100
    iput-object p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    .line 101
    iput-object p2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 102
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarGliderAdapter;->init(Z)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarGliderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarGliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/carmode/CarGliderAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/music/carmode/CarGliderAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I

    return p1
.end method

.method static synthetic access$102(Lcom/htc/music/carmode/CarGliderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/music/carmode/CarGliderAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/music/carmode/CarNowPlayingActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarGliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/sunny2/widget/presentation/SPresentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/carmode/CarGliderAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/carmode/CarGliderAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private declared-synchronized addBitmapToCache(I)Z
    .locals 19
    .parameter "nItemPos"

    .prologue
    .line 396
    monitor-enter p0

    const/4 v14, 0x0

    .line 397
    .local v14, bmp:Lcom/htc/sunny2/SBitmap;
    const/4 v12, 0x0

    .local v12, addToDecoder:Z
    const/4 v13, 0x0

    .line 398
    .local v13, bHasCached:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move v2, v13

    .line 473
    :goto_0
    monitor-exit p0

    return v2

    .line 400
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_2

    :cond_1
    move v2, v13

    .line 401
    goto :goto_0

    .line 404
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    move-object v14, v0

    .line 406
    if-eqz v14, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v14}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v3

    if-ne v2, v3, :cond_6

    :cond_3
    const/4 v12, 0x1

    .line 407
    :goto_1
    if-nez v12, :cond_4

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 410
    .local v17, oldAlbumId:Ljava/lang/Integer;
    if-nez v17, :cond_7

    .line 411
    const/4 v12, 0x1

    .line 419
    .end local v17           #oldAlbumId:Ljava/lang/Integer;
    :cond_4
    :goto_2
    if-eqz v12, :cond_d

    .line 420
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v0, v2, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    .local v18, service:Lcom/htc/music/IMediaPlaybackService;
    if-eqz v18, :cond_5

    .line 424
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    move/from16 v3, p1

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;IZ[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v18           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_5
    :goto_3
    move v2, v13

    .line 473
    goto :goto_0

    .line 406
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 412
    .restart local v17       #oldAlbumId:Ljava/lang/Integer;
    :cond_7
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v2, v3, :cond_4

    .line 413
    invoke-virtual {v14}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 414
    const/4 v12, 0x1

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 396
    .end local v17           #oldAlbumId:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 425
    .restart local v18       #service:Lcom/htc/music/IMediaPlaybackService;
    :catch_0
    move-exception v15

    .line 426
    .local v15, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 431
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v18           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v0, v2, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    .restart local v18       #service:Lcom/htc/music/IMediaPlaybackService;
    :goto_4
    const/16 v16, 0x0

    .line 433
    .local v16, isOnline:Z
    if-eqz v18, :cond_5

    .line 435
    :try_start_5
    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v16

    .line 439
    :goto_5
    const/4 v5, 0x0

    .line 441
    .local v5, artPath:Ljava/lang/String;
    if-nez v18, :cond_a

    .line 442
    :try_start_6
    const-string v2, "[CarGliderAdapter]"

    const-string v3, "service is null in CarGliderAdapter.addBitmapToCache"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 443
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 431
    .end local v5           #artPath:Ljava/lang/String;
    .end local v16           #isOnline:Z
    .end local v18           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_9
    const/16 v18, 0x0

    goto :goto_4

    .line 436
    .restart local v16       #isOnline:Z
    .restart local v18       #service:Lcom/htc/music/IMediaPlaybackService;
    :catch_1
    move-exception v15

    .line 437
    .restart local v15       #e:Landroid/os/RemoteException;
    :try_start_7
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 445
    .end local v15           #e:Landroid/os/RemoteException;
    .restart local v5       #artPath:Ljava/lang/String;
    :cond_a
    :try_start_8
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v5

    .line 450
    :goto_6
    if-eqz v16, :cond_c

    .line 451
    if-eqz v5, :cond_b

    :try_start_9
    const-string v2, "http"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v7, v4

    const/4 v4, 0x1

    aput-object v5, v7, v4

    move/from16 v4, p1

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;->add(ZILjava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 447
    :catch_2
    move-exception v15

    .line 448
    .restart local v15       #e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 454
    .end local v15           #e:Landroid/os/RemoteException;
    :cond_b
    const-string v2, "[CarGliderAdapter]"

    const-string v3, "artPath is incorrect so set default pic"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const-string v8, ""

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v11, v2

    move/from16 v7, p1

    move/from16 v9, p1

    invoke-virtual/range {v6 .. v11}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;IZ[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 458
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v2, v3, :cond_5

    .line 459
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v8, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v9, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v2

    move/from16 v7, p1

    move/from16 v10, p1

    invoke-virtual/range {v6 .. v11}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 470
    .end local v5           #artPath:Ljava/lang/String;
    .end local v16           #isOnline:Z
    .end local v18           #service:Lcom/htc/music/IMediaPlaybackService;
    :cond_d
    const/4 v13, 0x1

    goto/16 :goto_3
.end method

.method private createDefaultAlbum()V
    .locals 5

    .prologue
    .line 477
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    invoke-static {v2, v3, v4}, Lcom/htc/sunny2/SBitmap;->createBitmap(III)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    .line 481
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 497
    :cond_2
    :goto_0
    return-void

    .line 485
    :cond_3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 486
    .local v0, bmpOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 487
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 488
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001d

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 490
    .local v1, defaultBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 491
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    iget v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    .line 492
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 493
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init(Z)V
    .locals 0
    .parameter "defaultBig"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->reload(Z)V

    .line 107
    return-void
.end method

.method private interpolateLinear(FFFF)F
    .locals 2
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 817
    cmpl-float v1, v0, p4

    if-nez v1, :cond_0

    .line 819
    :goto_0
    return v0

    :cond_0
    div-float v0, p3, p4

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method private setLoadingBackground()V
    .locals 0

    .prologue
    .line 678
    return-void
.end method


# virtual methods
.method public animate(Z)V
    .locals 12
    .parameter "normalScale"

    .prologue
    .line 829
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v7, :cond_1

    .line 908
    :cond_0
    return-void

    .line 831
    :cond_1
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    .line 832
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v5, v7, [F

    .line 833
    .local v5, targetTranslationX:[F
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v6, v7, [F

    .line 834
    .local v6, targetTranslationY:[F
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v4, v7, [F

    .line 837
    .local v4, targetScale:[F
    const/4 v3, 0x1

    .line 839
    .local v3, nUIPos:I
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v7, v5, v3

    .line 840
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    aput v7, v6, v3

    .line 841
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v7, v4, v3

    .line 843
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 844
    .local v0, animationController:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v8, Lcom/htc/sunny2/view/Vector3F;

    aget v9, v5, v3

    aget v10, v6, v3

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 845
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    new-instance v8, Lcom/htc/sunny2/view/Vector3F;

    aget v9, v4, v3

    aget v10, v4, v3

    const/high16 v11, 0x3f80

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 846
    const-wide/16 v7, 0x96

    invoke-virtual {v0, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 848
    sget-object v7, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 849
    if-eqz p1, :cond_2

    .line 850
    new-instance v7, Lcom/htc/music/carmode/CarGliderAdapter$3;

    invoke-direct {v7, p0}, Lcom/htc/music/carmode/CarGliderAdapter$3;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    invoke-virtual {v0, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 887
    :goto_0
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerView(I)Lcom/htc/sunny2/view/SView;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 890
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-ge v2, v7, :cond_0

    .line 891
    const/4 v7, 0x1

    if-ne v7, v2, :cond_3

    .line 890
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 867
    .end local v2           #i:I
    :cond_2
    new-instance v7, Lcom/htc/music/carmode/CarGliderAdapter$4;

    invoke-direct {v7, p0}, Lcom/htc/music/carmode/CarGliderAdapter$4;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;)V

    invoke-virtual {v0, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    goto :goto_0

    .line 893
    .restart local v2       #i:I
    :cond_3
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v7, v5, v2

    .line 894
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    aput v7, v6, v2

    .line 895
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v7, v4, v2

    .line 897
    new-instance v1, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 898
    .local v1, animationController2:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v8, Lcom/htc/sunny2/view/Vector3F;

    aget v9, v5, v2

    aget v10, v6, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 899
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    new-instance v8, Lcom/htc/sunny2/view/Vector3F;

    aget v9, v4, v2

    aget v10, v4, v2

    const/high16 v11, 0x3f80

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 900
    const-wide/16 v7, 0x96

    invoke-virtual {v1, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 902
    sget-object v7, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 904
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerView(I)Lcom/htc/sunny2/view/SView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_2
.end method

.method protected changeLayout(Z)V
    .locals 6
    .parameter "normalScale"

    .prologue
    .line 912
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v4, :cond_0

    .line 930
    :goto_0
    return-void

    .line 913
    :cond_0
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v2, v4, [F

    .line 914
    .local v2, targetTranslationX:[F
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v3, v4, [F

    .line 915
    .local v3, targetTranslationY:[F
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v1, v4, [F

    .line 917
    .local v1, targetScale:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-ge v0, v4, :cond_1

    .line 919
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v4, v2, v0

    .line 920
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    aput v4, v3, v0

    .line 921
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    aput v4, v1, v0

    .line 923
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v5, v2, v0

    iput v5, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 924
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v5, v3, v0

    iput v5, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 926
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v5, v1, v0

    iput v5, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 927
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v5, v1, v0

    iput v5, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 929
    :cond_1
    iget-object v4, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersLayout()V

    goto :goto_0
.end method

.method public declared-synchronized clearAllCache()V
    .locals 1

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->clear()V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deInit()V
    .locals 1

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    .line 536
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 537
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarGliderAdapter;->clearAllCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlbumInfo(I)Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    .locals 1
    .parameter "nPos"

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContainerCount()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    return v0
.end method

.method public getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    .locals 1
    .parameter "nUIPos"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-lt p1, v0, :cond_1

    .line 347
    :cond_0
    const/4 v0, 0x0

    .line 350
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public declared-synchronized getItemBitmap(I)Lcom/htc/sunny2/SBitmap;
    .locals 5
    .parameter "nItemPos"

    .prologue
    const/4 v4, 0x1

    .line 357
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedPos:I

    iget v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-eq v2, v3, :cond_0

    .line 358
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    instance-of v2, v2, Lcom/htc/music/carmode/CarNowPlayingActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v2, :cond_3

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 367
    :cond_3
    const/4 v0, 0x0

    .line 368
    .local v0, bmp:Lcom/htc/sunny2/SBitmap;
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_4

    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_5

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    goto :goto_0

    .line 372
    :cond_5
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    check-cast v0, Lcom/htc/sunny2/SBitmap;

    .line 373
    .restart local v0       #bmp:Lcom/htc/sunny2/SBitmap;
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 374
    .local v1, oldAlbumId:Ljava/lang/Integer;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-ne v4, v2, :cond_8

    .line 375
    :cond_6
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    .line 382
    :cond_7
    :goto_1
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-ne v2, v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mTransparentBitmap:Lcom/htc/sunny2/SBitmap;

    goto :goto_0

    .line 376
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v2, v3, :cond_7

    .line 377
    :cond_9
    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 378
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 357
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v1           #oldAlbumId:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 329
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    .line 337
    :goto_0
    monitor-exit p0

    return v0

    .line 332
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSelectionChanged(I)V
    .locals 4
    .parameter "nSelectedPos"

    .prologue
    .line 639
    monitor-enter p0

    const/4 v1, 0x0

    .line 640
    .local v1, nStart:I
    const/4 v0, 0x0

    .line 641
    .local v0, nEnd:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_2

    .line 642
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p1, v2

    .line 643
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int v0, p1, v2

    .line 644
    if-gez v1, :cond_0

    .line 645
    const/4 v1, 0x0

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 649
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 650
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    iget-object v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setQueueLength(I)V

    .line 651
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v2, p1}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    .line 653
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V

    .line 656
    :cond_2
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    iget v3, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-le v2, v3, :cond_3

    .line 657
    iget-object v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I

    .line 661
    :goto_0
    iput p1, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    .line 659
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public pauseDecoder()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 503
    :cond_0
    return-void
.end method

.method public reload(Z)V
    .locals 19
    .parameter "defaultBig"

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 111
    .local v11, res:Landroid/content/res/Resources;
    const v2, 0x7f060001

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->intToFloatArray([I)[F

    move-result-object v17

    .line 113
    .local v17, translateX:[F
    const v2, 0x7f060002

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->intToFloatArray([I)[F

    move-result-object v18

    .line 115
    .local v18, translateY:[F
    const v2, 0x7f060003

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->intToFloatArray([I)[F

    move-result-object v14

    .line 117
    .local v14, scale:[F
    const v2, 0x7f060004

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->intToFloatArray([I)[F

    move-result-object v12

    .line 119
    .local v12, rotateX:[F
    const v2, 0x7f060005

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->intToFloatArray([I)[F

    move-result-object v13

    .line 121
    .local v13, rotateY:[F
    const v2, 0x7f060006

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 123
    .local v9, alpha:[I
    const v2, 0x7f0b0002

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    .line 124
    const v2, 0x7f0b0003

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    .line 126
    const v2, 0x7f0b0004

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 127
    .local v16, spriteWidth:I
    const v2, 0x7f0b0005

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 129
    .local v15, spriteHeight:I
    if-eqz v17, :cond_2

    if-eqz v18, :cond_2

    if-eqz v14, :cond_2

    if-eqz v12, :cond_2

    if-eqz v13, :cond_2

    if-eqz v9, :cond_2

    .line 131
    move-object/from16 v0, v17

    array-length v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    .line 132
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    .line 133
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    if-nez v2, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    new-array v2, v2, [Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 138
    :cond_0
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mComponentCount:I

    if-ge v10, v2, :cond_3

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v10

    if-nez v2, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    new-instance v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v3}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v3, v2, v10

    .line 142
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v10

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v14, v10

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v10

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v14, v10

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v10

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v12, v10

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v10

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v13, v10

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v10

    iput v15, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v10

    move/from16 v0, v16

    iput v0, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v10

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v17, v10

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v10

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v3, v18, v10

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v2, v2, v10

    aget v3, v9, v10

    iput v3, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 138
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 158
    .end local v10           #i:I
    :cond_2
    const-string v2, "[CarGliderAdapter]"

    const-string v3, "init failed"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-nez v2, :cond_4

    .line 166
    new-instance v2, Lcom/htc/music/util/AsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mOnlineImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mImageHeight:I

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/util/AsyncImageDecoder;->setReportError(Z)V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/util/AsyncImageDecoder;->setRecycleOnPause(Z)V

    .line 171
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v2, :cond_5

    .line 172
    new-instance v2, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    invoke-direct {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    .line 175
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/carmode/CarGliderAdapter;->createDefaultAlbum()V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v2, :cond_6

    .line 179
    new-instance v2, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mMusicContext:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;-><init>(Lcom/htc/music/carmode/CarGliderAdapter;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 181
    :cond_6
    return-void
.end method

.method public declared-synchronized requestAllBitmap(I)V
    .locals 12
    .parameter "nSelectedPos"

    .prologue
    const/4 v11, 0x1

    .line 681
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 755
    :cond_0
    monitor-exit p0

    return-void

    .line 685
    :cond_1
    const/4 v2, 0x1

    .line 686
    .local v2, nCacheSize:I
    :try_start_1
    iget v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    div-int/lit8 v10, v10, 0x2

    rsub-int/lit8 v3, v10, 0x0

    .line 687
    .local v3, nLowBound:I
    const/4 v7, 0x1

    .line 688
    .local v7, nUpBound:I
    const/4 v6, 0x0

    .line 689
    .local v6, nScannedCount:I
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v8, v10

    .line 691
    .local v8, queueLen:I
    iget v2, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    .line 692
    iget-boolean v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    if-ne v10, v11, :cond_3

    .line 693
    const/4 v7, 0x1

    .line 699
    :goto_0
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v10}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 702
    if-lt p1, v3, :cond_0

    if-gt p1, v7, :cond_0

    .line 706
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    .line 707
    add-int/lit8 v6, v6, 0x1

    .line 709
    const/4 v9, -0x1

    .line 710
    .local v9, sign:I
    const/4 v4, 0x1

    .line 711
    .local v4, nOffset:I
    const/4 v5, 0x0

    .line 712
    .local v5, nPos:I
    const/4 v1, 0x0

    .local v1, bUpBound:Z
    const/4 v0, 0x0

    .line 713
    .local v0, bLowBound:Z
    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 714
    :cond_2
    const/4 v10, -0x1

    if-ne v10, v9, :cond_9

    if-nez v0, :cond_9

    .line 715
    mul-int v10, v4, v9

    add-int v5, p1, v10

    .line 716
    if-ge v5, v3, :cond_4

    .line 717
    const/4 v0, 0x1

    .line 718
    goto :goto_1

    .line 695
    .end local v0           #bLowBound:Z
    .end local v1           #bUpBound:Z
    .end local v4           #nOffset:I
    .end local v5           #nPos:I
    .end local v9           #sign:I
    :cond_3
    iget-object v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v10, :cond_0

    .line 696
    iget v10, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSize:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    add-int/lit8 v7, v10, -0x1

    goto :goto_0

    .line 719
    .restart local v0       #bLowBound:Z
    .restart local v1       #bUpBound:Z
    .restart local v4       #nOffset:I
    .restart local v5       #nPos:I
    .restart local v9       #sign:I
    :cond_4
    if-ne v5, v3, :cond_5

    .line 720
    const/4 v0, 0x1

    .line 723
    :cond_5
    if-gez v5, :cond_6

    .line 724
    add-int/2addr v5, v8

    .line 727
    :cond_6
    invoke-direct {p0, v5}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    .line 728
    add-int/lit8 v6, v6, 0x1

    .line 747
    :cond_7
    :goto_2
    if-ne v11, v9, :cond_8

    .line 748
    add-int/lit8 v4, v4, 0x1

    .line 750
    if-le v2, v6, :cond_0

    .line 753
    :cond_8
    mul-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 730
    :cond_9
    if-ne v11, v9, :cond_7

    if-nez v1, :cond_7

    .line 731
    mul-int v10, v4, v9

    add-int v5, p1, v10

    .line 732
    if-le v5, v7, :cond_a

    .line 733
    const/4 v1, 0x1

    .line 734
    goto :goto_1

    .line 735
    :cond_a
    if-ne v5, v7, :cond_b

    .line 736
    const/4 v1, 0x1

    .line 739
    :cond_b
    if-lt v5, v8, :cond_c

    .line 740
    sub-int/2addr v5, v8

    .line 743
    :cond_c
    invoke-direct {p0, v5}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 681
    .end local v0           #bLowBound:Z
    .end local v1           #bUpBound:Z
    .end local v2           #nCacheSize:I
    .end local v3           #nLowBound:I
    .end local v4           #nOffset:I
    .end local v5           #nPos:I
    .end local v6           #nScannedCount:I
    .end local v7           #nUpBound:I
    .end local v8           #queueLen:I
    .end local v9           #sign:I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public resumeDecoder()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 509
    :cond_0
    return-void
.end method

.method public declared-synchronized setAlbumInfo([Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;ZI)V
    .locals 17
    .parameter "albumInfo"
    .parameter "isPluginMode"
    .parameter "selectedPos"

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mIsPluginMode:Z

    .line 185
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    .line 186
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    .line 187
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedPos:I

    .line 188
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 190
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z

    if-eqz v2, :cond_3

    .line 191
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 193
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v16, selection:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 196
    const-string v2, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    if-ge v11, v2, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, v11

    iget v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 205
    .local v15, posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 209
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 210
    .restart local v15       #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v15, :cond_1

    .line 211
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 184
    .end local v11           #i:I
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16           #selection:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 213
    .restart local v11       #i:I
    .restart local v15       #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v16       #selection:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    const-string v2, "[CarGliderAdapter]"

    const-string v3, "Something wrong in setAlbumInfo"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 217
    .end local v15           #posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v2, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    .line 220
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/music/carmode/CarGliderAdapter;->mMdColumns:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v11           #i:I
    .end local v16           #selection:Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-ltz v2, :cond_5

    if-ltz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p3

    if-le v2, v0, :cond_5

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 229
    .local v14, oldAlbumId:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p3

    iget v12, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    .line 230
    .local v12, newAlbumId:I
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v12, :cond_4

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/sunny2/SBitmap;

    .line 232
    .local v10, bmp:Lcom/htc/sunny2/SBitmap;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 233
    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->substitute()Lcom/htc/sunny2/SBitmap;

    move-result-object v13

    .line 234
    .local v13, newBmp:Lcom/htc/sunny2/SBitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setQueueLength(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v10           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v13           #newBmp:Lcom/htc/sunny2/SBitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I

    if-ne v2, v12, :cond_5

    .line 242
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mCanUpdateSelectedItem:Z

    .line 246
    .end local v12           #newAlbumId:I
    .end local v14           #oldAlbumId:Ljava/lang/Integer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-ltz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    if-le v2, v3, :cond_6

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v2, v2, p3

    iget v2, v2, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I

    .line 251
    :goto_2
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 249
    :cond_6
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mPreSelectedAlbumId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setDlAlbumArt(ILjava/lang/String;)V
    .locals 10
    .parameter "albumId"
    .parameter "dlArtPath"

    .prologue
    .line 255
    monitor-enter p0

    if-gez p1, :cond_1

    .line 256
    :try_start_0
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "setDlAlbumArt: Illegal Arguments"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 260
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    if-gtz v7, :cond_3

    .line 261
    :cond_2
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumInfoArray = null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 265
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_5

    .line 266
    :cond_4
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumIdPosMap = null or size <= 0"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_5
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 271
    .local v4, posSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 276
    const/4 v3, -0x1

    .line 277
    .local v3, pos:I
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 278
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 281
    if-ltz v3, :cond_c

    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    if-ge v3, v7, :cond_c

    .line 282
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    if-ne v7, p1, :cond_6

    .line 283
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-static {v7, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 287
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iput-object p2, v7, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 289
    iget v6, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I

    .line 290
    .local v6, validPos:I
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    if-ge v6, v7, :cond_a

    .line 291
    iget v6, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    .line 295
    :cond_7
    :goto_2
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    sub-int v2, v6, v7

    .line 296
    .local v2, lowerBound:I
    iget v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    add-int v5, v6, v7

    .line 300
    .local v5, upperBound:I
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v7, :cond_6

    .line 301
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    .line 302
    .local v0, bmp:Lcom/htc/sunny2/SBitmap;
    if-gt v2, v3, :cond_8

    if-le v3, v5, :cond_9

    :cond_8
    if-eqz v0, :cond_6

    .line 303
    :cond_9
    const-string v7, "[CarGliderAdapter]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDlAlbumArt: update image of position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->remove(Ljava/lang/Object;)V

    .line 305
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 306
    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->notifyUpdateItem(I)V

    .line 307
    invoke-direct {p0, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    .line 292
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v2           #lowerBound:I
    .end local v5           #upperBound:I
    :cond_a
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_7

    .line 293
    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/carmode/CarGliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v6, v7, -0x1

    goto :goto_2

    .line 309
    .restart local v0       #bmp:Lcom/htc/sunny2/SBitmap;
    .restart local v2       #lowerBound:I
    .restart local v5       #upperBound:I
    :cond_b
    invoke-direct {p0, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    .line 315
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v2           #lowerBound:I
    .end local v5           #upperBound:I
    .end local v6           #validPos:I
    :cond_c
    const-string v7, "[CarGliderAdapter]"

    const-string v8, "pos illegal"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public updateLayoutAtTimeSlot(IIIILcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V
    .locals 22
    .parameter "nTimeSlot"
    .parameter "nTotalTimeSlot"
    .parameter "nCurrentUIPos"
    .parameter "nNextUIPos"
    .parameter "layout"
    .parameter "isBouncing"

    .prologue
    .line 762
    const/4 v12, 0x0

    .local v12, nStartX:F
    const/4 v7, 0x0

    .line 763
    .local v7, nEndX:F
    const/4 v14, 0x0

    .local v14, nStartY:F
    const/4 v9, 0x0

    .line 764
    .local v9, nEndY:F
    const/16 v16, 0x0

    .local v16, nStartZ:F
    const/4 v11, 0x0

    .line 766
    .local v11, nEndZ:F
    const/4 v13, 0x0

    .local v13, nStartXF:F
    const/4 v8, 0x0

    .line 767
    .local v8, nEndXF:F
    const/4 v15, 0x0

    .local v15, nStartYF:F
    const/4 v10, 0x0

    .line 769
    .local v10, nEndYF:F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 771
    .local v6, nAbsTimeSlot:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarGliderAdapter;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    .line 772
    .local v5, currentLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    if-nez v5, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarGliderAdapter;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v17

    .line 774
    .local v17, nextLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    if-eqz v17, :cond_0

    .line 776
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 777
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 778
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 779
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 780
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 781
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 782
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 785
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 786
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v8, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 787
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 788
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v10, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 789
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v8, v13

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 790
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v10, v15

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 791
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 793
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 794
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 795
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v16, v0

    .line 796
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v11, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 797
    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 798
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 799
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 800
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 801
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v11, v16

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v16

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 804
    int-to-float v0, v6

    move/from16 v18, v0

    iget v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v20, v0

    iget v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/carmode/CarGliderAdapter;->interpolateLinear(FFFF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 807
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarGliderAdapter;->mNormalScale:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 808
    if-nez v6, :cond_0

    goto/16 :goto_0
.end method
