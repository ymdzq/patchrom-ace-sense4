.class public Lcom/htc/music/MiniPlayer;
.super Ljava/lang/Object;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MiniPlayer$NonUIHandler;,
        Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;,
        Lcom/htc/music/MiniPlayer$ILoadSuccessListener;,
        Lcom/htc/music/MiniPlayer$MiniPlayerCreator;
    }
.end annotation


# static fields
.field private static final DECODE_ALBUM_ART:I = 0x2714

.field private static final DECODE_ONLINEALBUM_ART:I = 0x2715

.field private static final Decode_BitMap:Ljava/lang/String; = "DECODED_BITMAP"

.field private static final TAG:Ljava/lang/String; = "[MiniPlayer]"


# instance fields
.field isMonitoring:Z

.field private isReleased:Z

.field loadQueueFail:Z

.field loadTrackFail:Z

.field private mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

.field protected mContext:Landroid/app/Activity;

.field public mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasSet:Z

.field mInternalEnough:Z

.field private mIsServiceBinded:Z

.field private mLauncherListener:Landroid/view/View$OnClickListener;

.field private mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

.field private mMaxNotifyAlbumArtSideLen:I

.field private mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field protected mPlayPause:Lcom/htc/widget/HtcRimImageButton;

.field protected mPlayerContainer:Landroid/view/ViewGroup;

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field protected mThumb:Landroid/widget/ImageView;

.field private mThumbBitmap:Landroid/graphics/Bitmap;

.field private mThumbPath:Ljava/lang/String;

.field protected mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

.field private mUIHandler:Landroid/os/Handler;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    .line 75
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 78
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    .line 80
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    .line 81
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    .line 82
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    .line 84
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    .line 143
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    .line 144
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 170
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    .line 207
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 285
    new-instance v2, Lcom/htc/music/MiniPlayer$1;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$1;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 392
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    .line 394
    new-instance v2, Lcom/htc/music/MiniPlayer$2;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$2;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    .line 501
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 502
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 746
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 747
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 748
    iput-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    .line 1010
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1011
    iput-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    .line 1022
    new-instance v2, Lcom/htc/music/MiniPlayer$3;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$3;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;

    .line 1164
    new-instance v2, Lcom/htc/music/MiniPlayer$4;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$4;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    .line 1182
    new-instance v2, Lcom/htc/music/MiniPlayer$5;

    invoke-direct {v2, p0}, Lcom/htc/music/MiniPlayer$5;-><init>(Lcom/htc/music/MiniPlayer;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 114
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    .line 115
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 119
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 120
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 121
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 122
    const v2, 0x7f02005a

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 123
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    .line 127
    new-instance v2, Lcom/htc/widget/HtcFooter;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    .line 128
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v2, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;-><init>(Lcom/htc/music/MiniPlayer;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MiniPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/MiniPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/MiniPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/MiniPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MiniPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->doPauseResume()V

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 454
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 459
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private initNonUiHandler()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 1017
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiniPlayerWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1018
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1019
    new-instance v0, Lcom/htc/music/MiniPlayer$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MiniPlayer$NonUIHandler;-><init>(Lcom/htc/music/MiniPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    goto :goto_0
.end method

.method private serviceInOnlineMode()Z
    .locals 4

    .prologue
    .line 908
    const/4 v1, 0x0

    .line 910
    .local v1, isOnline:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 911
    const-string v2, "[MiniPlayer]"

    const-string v3, "showAlbumOptions, mService = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const/4 v2, 0x0

    .line 918
    :goto_0
    return v2

    .line 914
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 918
    goto :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "[MiniPlayer]"

    const-string v3, "Cannot get recent album ID from service."

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 210
    return-void
.end method

.method protected bindMediaPlayer()V
    .locals 3

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 432
    :goto_0
    return-void

    .line 428
    :cond_0
    const-string v0, "[MiniPlayer]"

    const-string v1, "someone called bindService again but service already binded!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsServiceBinded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1193
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public inflateView()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "[MiniPlayer]"

    const-string v1, "inflateView+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->initNonUiHandler()V

    .line 139
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/htc/music/MiniPlayer;->initializeView(Landroid/app/Activity;)V

    .line 140
    const-string v0, "[MiniPlayer]"

    const-string v1, "inflateView-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method protected initGlancelauncher()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mLauncherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_1
    return-void
.end method

.method protected initPlayPauseBtn()V
    .locals 6

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v2, "common_b_transport_outer"

    const v3, 0x2080014

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v3, "common_b_transport_pressed"

    const v4, 0x2080015

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-string v4, "common_b_transport_rest"

    const v5, 0x2080016

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 278
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    .line 281
    return-void
.end method

.method protected initializeView(Landroid/app/Activity;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const v8, 0x2050001

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 220
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 259
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v4, "[MiniPlayer]"

    const-string v5, "initializeView+"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 224
    .local v0, layoutInflator:Landroid/view/LayoutInflater;
    const v4, 0x7f030041

    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 226
    .local v2, playerLayout:Landroid/view/View;
    const v4, 0x7f080095

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    .line 227
    const v4, 0x7f080097

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v4, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    .line 228
    const v4, 0x7f080098

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcRimImageButton;

    iput-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    .line 230
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v4, :cond_1

    .line 231
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 232
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 235
    :cond_1
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    const v4, 0x7f080096

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 239
    .local v1, listItem:Lcom/htc/widget/HtcListItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 242
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 246
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/16 v6, 0x12c

    invoke-static {v2, v4, v5, v7, v6}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initGlancelauncher()V

    .line 254
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->initPlayPauseBtn()V

    .line 256
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    .line 257
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateThumb()V

    .line 258
    const-string v4, "[MiniPlayer]"

    const-string v5, "initializeView-"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isLoadTrackSuccess()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshInfo()V
    .locals 0

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    .line 740
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    .line 741
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->updateThumb()V

    .line 742
    return-void
.end method

.method protected registerEventReceiver()V
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v1, "com.htc.music.asyncopencomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v1, "com.htc.music.dmcsvcman.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v1, "com.htc.music.dmcsvcman.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 377
    const-string v1, "[MiniPlayer]"

    const-string v2, "registerEventReceiver"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    .line 175
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 176
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->removeLoadSuccessListener()V

    .line 178
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 180
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 185
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 190
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 192
    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 194
    :cond_2
    return-void
.end method

.method public removeLoadSuccessListener()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    .line 214
    return-void
.end method

.method protected setArtistName(Ljava/lang/String;)V
    .locals 2
    .parameter "artist"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v0, :cond_0

    .line 941
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDefaultThumb()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 751
    invoke-virtual {p0, v0, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method protected setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter "bitmap"
    .parameter "thumbPath"

    .prologue
    .line 755
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 757
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 760
    :cond_0
    iget-boolean v1, p0, Lcom/htc/music/MiniPlayer;->isReleased:Z

    if-eqz v1, :cond_2

    .line 761
    if-eqz p1, :cond_1

    .line 762
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 767
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_3

    .line 771
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 772
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/htc/music/online/Util;->drawDefaultSourceIconToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 780
    :cond_3
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    .line 781
    if-eqz p1, :cond_4

    .line 782
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 787
    :goto_2
    iput-object p2, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    .line 788
    iput-object p1, p0, Lcom/htc/music/MiniPlayer;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 777
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 784
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method protected setThumbForOnline(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "bitmap"
    .parameter "thumbPath"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 796
    if-eqz p1, :cond_1

    .line 797
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected setTrackName(Ljava/lang/String;)V
    .locals 3
    .parameter "trackName"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v0, :cond_2

    .line 924
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 937
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const-string v1, "-- --"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 935
    :cond_2
    const-string v0, "[MiniPlayer]"

    const-string v1, "mTrackDetail is NULL!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startMonitor()V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 150
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    .line 154
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->bindMediaPlayer()V

    .line 157
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->registerEventReceiver()V

    goto :goto_0
.end method

.method public stopMonitor()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->isMonitoring:Z

    .line 164
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unRegisterEventReceiver()V

    .line 166
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->unBindMediaPlayer()V

    goto :goto_0
.end method

.method protected unBindMediaPlayer()V
    .locals 2

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z

    .line 439
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 440
    return-void
.end method

.method protected unRegisterEventReceiver()V
    .locals 3

    .prologue
    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[MiniPlayer]"

    const-string v2, "somebody called unregister twice!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateDMCInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, artistName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 473
    .local v1, trackName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 474
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 477
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0, v0}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 480
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 484
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 485
    invoke-virtual {p0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 486
    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v6, v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    invoke-interface {v2, v6}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 489
    :cond_1
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 490
    iput-boolean v5, p0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 499
    :goto_0
    return-void

    .line 492
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 493
    iget-boolean v2, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_3

    .line 494
    iget-object v2, p0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    invoke-interface {v2, v5}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 496
    :cond_3
    iput-boolean v6, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 497
    iput-boolean v6, p0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    goto :goto_0
.end method

.method protected updateDMCThumb()V
    .locals 7

    .prologue
    .line 805
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    const/4 v1, 0x0

    .line 816
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 818
    .local v0, albumArtPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 820
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/htc/music/DMCServiceManager;->getDMCThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 821
    const-string v4, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 838
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    .line 826
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v4}, Lcom/htc/music/DMCServiceManager;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_2

    .line 828
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 831
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 842
    :cond_4
    iget v2, p0, Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I

    .line 843
    .local v2, maxSideLen:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v4, v2, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v4, v2, :cond_6

    .line 844
    :cond_5
    const/4 v4, 0x0

    invoke-static {v1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 845
    .local v3, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 846
    const/4 v1, 0x0

    .line 848
    invoke-virtual {p0, v3, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 850
    .end local v3           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updatePlayPauseBtn()V
    .locals 7

    .prologue
    const v6, 0x20800bb

    .line 952
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    if-nez v4, :cond_0

    .line 996
    :goto_0
    return-void

    .line 954
    :cond_0
    const/4 v1, 0x0

    .line 956
    .local v1, isPlaying:Z
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 958
    .local v3, playIcon:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 960
    .local v2, isPluginMode:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    .line 961
    const/4 v2, 0x1

    .line 965
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/MiniPlayer;->mInternalEnough:Z

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    .line 967
    :cond_2
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 969
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 974
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcRimImageButton;->invalidate()V

    goto :goto_0

    .line 978
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 981
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 987
    :goto_2
    if-eqz v1, :cond_4

    .line 988
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    const v5, 0x20800b6

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 994
    :goto_3
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcRimImageButton;->invalidate()V

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2

    .line 990
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MiniPlayer;->mPlayPause:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_3

    .line 963
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method protected updateThumb()V
    .locals 5

    .prologue
    .line 860
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumb:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_2

    .line 866
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0

    .line 870
    :cond_2
    const/4 v0, 0x0

    .line 873
    .local v0, albumArtPath:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 878
    :goto_1
    if-eqz v0, :cond_6

    .line 879
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/htc/music/MiniPlayer;->serviceInOnlineMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    :cond_3
    iget-boolean v3, p0, Lcom/htc/music/MiniPlayer;->mHasSet:Z

    if-nez v3, :cond_4

    .line 884
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    .line 886
    :cond_4
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    if-eqz v3, :cond_0

    .line 889
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 890
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    const/16 v4, 0x2715

    invoke-virtual {v3, v4}, Lcom/htc/music/MiniPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 895
    .local v2, msg:Landroid/os/Message;
    :goto_2
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 896
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    invoke-virtual {v3, v2}, Lcom/htc/music/MiniPlayer$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 874
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 875
    .local v1, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 892
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_5
    iget-object v3, p0, Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;

    const/16 v4, 0x2714

    invoke-virtual {v3, v4}, Lcom/htc/music/MiniPlayer$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #msg:Landroid/os/Message;
    goto :goto_2

    .line 901
    .end local v2           #msg:Landroid/os/Message;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    goto :goto_0
.end method

.method public updateTrackInfo()V
    .locals 22

    .prologue
    .line 504
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateTrackInfo]+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v8, 0x0

    .line 506
    .local v8, artistName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 508
    .local v21, trackName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 511
    .local v16, path:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_3

    .line 512
    const-string v2, "[MiniPlayer]"

    const-string v3, "Service is null!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateTrackInfo]finally"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v17

    .line 627
    .local v17, pluginReady:Z
    if-nez v17, :cond_0

    .line 628
    const/4 v8, 0x0

    .line 629
    const/16 v21, 0x0

    .line 637
    .end local v17           #pluginReady:Z
    :cond_0
    :goto_0
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 640
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz v21, :cond_2e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_1

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 646
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_2

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 649
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 650
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 670
    :goto_2
    return-void

    .line 516
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 518
    if-nez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_7

    .line 623
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateTrackInfo]finally"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result v17

    .line 627
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_4

    .line 628
    const/4 v8, 0x0

    .line 629
    const/16 v21, 0x0

    .line 637
    .end local v17           #pluginReady:Z
    :cond_4
    :goto_3
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 640
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz v21, :cond_32

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_5

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 646
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_6

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 649
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 522
    :cond_7
    if-eqz v16, :cond_16

    .line 523
    :try_start_4
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateTrackInfo] path != null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 525
    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 529
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v21

    .line 531
    if-nez v8, :cond_f

    if-nez v21, :cond_f

    .line 532
    const-string v2, "[MiniPlayer]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 535
    .local v13, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v13, :cond_9

    .line 537
    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 539
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 540
    const/4 v2, 0x7

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v21

    .line 546
    :goto_4
    :try_start_6
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 547
    const/4 v13, 0x0

    .line 551
    :cond_9
    if-eqz v8, :cond_a

    .line 552
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 554
    :cond_a
    if-eqz v8, :cond_b

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 555
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 557
    :cond_c
    if-eqz v21, :cond_d

    .line 558
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 560
    :cond_d
    if-eqz v21, :cond_e

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 562
    :cond_e
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 563
    const/4 v14, -0x1

    .local v14, nBegin:I
    const/4 v15, -0x1

    .line 565
    .local v15, nEnd:I
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 566
    const-string v2, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 568
    if-ltz v14, :cond_f

    if-le v15, v14, :cond_f

    .line 569
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v21

    .line 623
    .end local v13           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v14           #nBegin:I
    .end local v15           #nEnd:I
    :cond_f
    :goto_5
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateTrackInfo]finally"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result v17

    .line 627
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_10

    .line 628
    const/4 v8, 0x0

    .line 629
    const/16 v21, 0x0

    .line 637
    .end local v17           #pluginReady:Z
    :cond_10
    :goto_6
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 640
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz v21, :cond_36

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_11

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 646
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_12

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 649
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 650
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 669
    :goto_7
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateTrackInfo]-"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 542
    .restart local v13       #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v11

    .line 543
    .local v11, ex:Ljava/lang/RuntimeException;
    :try_start_8
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 619
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v13           #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v10

    .line 620
    .local v10, e:Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 623
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateTrackInfo]finally"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result v17

    .line 627
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_13

    .line 628
    const/4 v8, 0x0

    .line 629
    const/16 v21, 0x0

    .line 637
    .end local v17           #pluginReady:Z
    :cond_13
    :goto_8
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 640
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz v21, :cond_2a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_14

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 646
    :cond_14
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_15

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 649
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 575
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_16
    :try_start_b
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateTrackInfo] path = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v19

    .line 577
    .local v19, queue:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v18

    .line 578
    .local v18, position:I
    if-eqz v19, :cond_17

    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_17

    if-ltz v18, :cond_17

    move-object/from16 v0, v19

    array-length v2, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    move/from16 v0, v18

    if-gt v2, v0, :cond_1b

    .line 623
    :cond_17
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateTrackInfo]finally"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result v17

    .line 627
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_18

    .line 628
    const/4 v8, 0x0

    .line 629
    const/16 v21, 0x0

    .line 637
    .end local v17           #pluginReady:Z
    :cond_18
    :goto_9
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 640
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz v21, :cond_3a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_19

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 646
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_1a

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 649
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 583
    :cond_1b
    const/16 v2, 0xb

    :try_start_d
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio._id AS _id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "album_id"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "artist_id"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "is_podcast"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "bookmark"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string v3, "composer"

    aput-object v3, v4, v2

    .line 597
    .local v4, mCursorCols:[Ljava/lang/String;
    aget v2, v19, v18

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 598
    .local v12, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is_music>=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 600
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1c

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1

    move-result v2

    if-nez v2, :cond_20

    .line 623
    :cond_1c
    const-string v2, "[MiniPlayer]"

    const-string v3, "[updateTrackInfo]finally"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move-result v17

    .line 627
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_1d

    .line 628
    const/4 v8, 0x0

    .line 629
    const/16 v21, 0x0

    .line 637
    .end local v17           #pluginReady:Z
    :cond_1d
    :goto_a
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 640
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz v21, :cond_3e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_1e

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 646
    :cond_1e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v2, v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_1f

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 649
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    goto/16 :goto_1

    .line 604
    :cond_20
    :try_start_f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 605
    const-string v2, "artist"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 606
    if-eqz v8, :cond_21

    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 607
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 610
    :cond_22
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 612
    if-eqz v9, :cond_f

    .line 613
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_5

    .line 623
    .end local v4           #mCursorCols:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #id:Ljava/lang/String;
    .end local v18           #position:I
    .end local v19           #queue:[I
    :catchall_0
    move-exception v2

    const-string v3, "[MiniPlayer]"

    const-string v5, "[updateTrackInfo]finally"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move-result v17

    .line 627
    .restart local v17       #pluginReady:Z
    if-nez v17, :cond_23

    .line 628
    const/4 v8, 0x0

    .line 629
    const/16 v21, 0x0

    .line 637
    .end local v17           #pluginReady:Z
    :cond_23
    :goto_b
    const-string v3, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "artist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/MiniPlayer;->setArtistName(Ljava/lang/String;)V

    .line 640
    const-string v3, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz v21, :cond_26

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v3, :cond_24

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mTrackDetail:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 646
    :cond_24
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-ne v3, v5, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v3, :cond_25

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 649
    :cond_25
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 650
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 623
    :goto_c
    throw v2

    .line 632
    :catch_2
    move-exception v11

    .line 633
    .local v11, ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 634
    const/16 v21, 0x0

    goto :goto_b

    .line 652
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v3, :cond_27

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 655
    :cond_27
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 656
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 658
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 659
    .local v20, status:Ljava/lang/String;
    const-string v3, "[MiniPlayer]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateTrackInfo] status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v3, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 663
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    invoke-virtual {v3}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->checkLocalHasSong()V

    goto :goto_c

    .line 665
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v5, 0x7f070001

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto :goto_c

    .line 632
    .end local v20           #status:Ljava/lang/String;
    .restart local v10       #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v11

    .line 633
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 634
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 652
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_2b

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 655
    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 656
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 658
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 659
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 663
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    .end local v10           #e:Landroid/os/RemoteException;
    :goto_d
    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->checkLocalHasSong()V

    goto/16 :goto_2

    .line 665
    .restart local v10       #e:Landroid/os/RemoteException;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v10           #e:Landroid/os/RemoteException;
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 632
    .end local v20           #status:Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 633
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 634
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 652
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_2f

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 655
    :cond_2f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 656
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 658
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 659
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 663
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto :goto_d

    .line 665
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 632
    .end local v20           #status:Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 633
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 634
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 652
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_33

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 655
    :cond_33
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 656
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 658
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 659
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 663
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_d

    .line 665
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 632
    .end local v20           #status:Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 633
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 634
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 652
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_37

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 655
    :cond_37
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 656
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 658
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 659
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 663
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;->checkLocalHasSong()V

    goto/16 :goto_7

    .line 665
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer;->setTrackName(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 632
    .end local v20           #status:Ljava/lang/String;
    .restart local v18       #position:I
    .restart local v19       #queue:[I
    :catch_7
    move-exception v11

    .line 633
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 634
    const/16 v21, 0x0

    goto/16 :goto_9

    .line 652
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_3b

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 655
    :cond_3b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 656
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 658
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 659
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 663
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_d

    .line 665
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 632
    .end local v20           #status:Ljava/lang/String;
    .restart local v4       #mCursorCols:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v12       #id:Ljava/lang/String;
    :catch_8
    move-exception v11

    .line 633
    .restart local v11       #ex:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 634
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 652
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    if-nez v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    if-eqz v2, :cond_3f

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mLoadSuccessListener:Lcom/htc/music/MiniPlayer$ILoadSuccessListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/music/MiniPlayer$ILoadSuccessListener;->loadSuccessChange(Z)V

    .line 655
    :cond_3f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadQueueFail:Z

    .line 656
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MiniPlayer;->loadTrackFail:Z

    .line 658
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 659
    .restart local v20       #status:Ljava/lang/String;
    const-string v2, "[MiniPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateTrackInfo] status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 663
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mAsyncQueryHandler:Lcom/htc/music/MiniPlayer$MPAsyncQueryHandler;

    goto/16 :goto_d

    .line 665
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e
.end method
