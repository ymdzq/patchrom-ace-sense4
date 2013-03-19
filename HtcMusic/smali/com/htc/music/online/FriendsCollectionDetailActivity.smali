.class public Lcom/htc/music/online/FriendsCollectionDetailActivity;
.super Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;
.source "FriendsCollectionDetailActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/online/FriendsCollectionDetailActivity$11;,
        Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;,
        Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;,
        Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;,
        Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_AUDIO_ID:Ljava/lang/String; = "audioid"

.field private static final BUNDLE_KEY_POSITION:Ljava/lang/String; = "position"

.field private static final BUNDLE_KEY_TRACK_NAME:Ljava/lang/String; = "trackname"

.field private static final DIALOG_ALBUM_CREATE_PLAYLIST:I = 0xb

.field private static final DIALOG_CREATE_PLAYLIST:I = 0xa

.field private static final DIALOG_FOR_DELETE:I = 0x0

.field private static final DIALOG_NO_NETWORK:I = 0x9

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x3

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0x4

.field private static final DIALOG_SHARE_DRM_FILE:I = 0x8

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0x7

.field private static NEED_ASYNC_LOAD_SONG_IMAGE:Z = false

.field private static final TAG:Ljava/lang/String; = "[FriendsCollectionDetailActivity]"

.field private static final TYPE_COUNT:I = 0x4

.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_SEPARATOR:I = 0x1

.field private static final TYPE_TEXT:I = 0x3

.field private static final TYPE_TRACK_LIST_ITEM:I = 0x2


# instance fields
.field private mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

.field private mAlbumArt:Landroid/graphics/Bitmap;

.field private mCollectedTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectionDescript:Ljava/lang/String;

.field private mCollectionName:Ljava/lang/String;

.field private mCollectionUrl:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCreatorName:Ljava/lang/String;

.field mCurrentAction:Lcom/htc/music/online/SinaActions;

.field private mDefaultAlbumArt:Landroid/graphics/Bitmap;

.field private mEmptyViewMsg:I

.field mFirstPlaylistCreateType:I

.field mImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mIsStartMutiProcessActivity:Z

.field private mNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

.field private volatile mNonUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field mOnlineImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

.field private mOnlineRequestHandler:Lcom/htc/music/online/OnlineRequestHandler;

.field private mOrientation:I

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

.field private mSelectedData:Landroid/os/Bundle;

.field private mSelectedSong:Lcom/htc/music/online/sinamusic/WrapperSong;

.field private mShowError:Z

.field private mSinaAccountChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mSinaHandler:Landroid/os/Handler;

.field private final mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

.field private mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

.field mSnsExceptionPosListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

.field private mStopping:Z

.field private mTrackListView:Lcom/htc/widget/HtcListView;

.field private volatile mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

.field private volatile nonUIThread:Landroid/os/HandlerThread;

.field private onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

.field private queryingCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->NEED_ASYNC_LOAD_SONG_IMAGE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;-><init>()V

    .line 102
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    invoke-static {p0, v0}, Lcom/htc/music/online/OnlineMusicPlayFactory;->getOnlineMusicPlay(Landroid/content/Context;Z)Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    .line 134
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mTrackListView:Lcom/htc/widget/HtcListView;

    .line 136
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    .line 138
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    .line 140
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    .line 142
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNonUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;

    .line 146
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 158
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    .line 160
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    .line 162
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    .line 164
    iput v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryingCount:I

    .line 166
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionDescript:Ljava/lang/String;

    .line 168
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 170
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    .line 172
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 174
    iput-boolean v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mShowError:Z

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mEmptyViewMsg:I

    .line 178
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;

    .line 182
    iput-boolean v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mStopping:Z

    .line 184
    iput v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOrientation:I

    .line 190
    new-instance v0, Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-direct {v0}, Lcom/htc/music/online/util/SnsExceptionManager;-><init>()V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    .line 194
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$1;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 203
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$2;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOnlineImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    .line 214
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$3;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaHandler:Landroid/os/Handler;

    .line 277
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$4;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSnsExceptionPosListener:Landroid/content/DialogInterface$OnClickListener;

    .line 296
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$5;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

    .line 790
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$8;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    .line 1565
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$9;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 1666
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$10;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/online/FriendsCollectionDetailActivity;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/online/FriendsCollectionDetailActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mStopping:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/util/RingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mShowError:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mShowError:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/music/online/FriendsCollectionDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mEmptyViewMsg:I

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/online/FriendsCollectionDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mEmptyViewMsg:I

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/music/online/FriendsCollectionDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->checkLogin()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/OnlineRequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOnlineRequestHandler:Lcom/htc/music/online/OnlineRequestHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->increaseQueryingCount()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/online/FriendsCollectionDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryCollectionDetailByUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/music/online/FriendsCollectionDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/music/online/FriendsCollectionDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionDescript:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/music/online/FriendsCollectionDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionDescript:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/music/online/FriendsCollectionDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->showAlbumOptions()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/online/FriendsCollectionDetailActivity;Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setDetailToUI(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->showTrackOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->decreaseQueryingCount()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/online/FriendsCollectionDetailActivity;Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->handleSnsException(Lcom/htc/music/online/sinamusic/SnsException;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->showLoadingProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->clearQueryingCount()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/util/SnsExceptionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mIsStartMutiProcessActivity:Z

    return p1
.end method

.method private checkLogin()V
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mContext:Landroid/content/Context;

    const/16 v1, 0xca

    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 423
    return-void
.end method

.method private clearData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 486
    iput v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOrientation:I

    .line 489
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 492
    :cond_0
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    .line 494
    :cond_1
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    .line 496
    iput v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryingCount:I

    .line 498
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 501
    :cond_2
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 503
    :cond_3
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 504
    iput-boolean v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mShowError:Z

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mEmptyViewMsg:I

    .line 506
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;

    .line 507
    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->clearData()V

    .line 509
    return-void
.end method

.method private clearQueryingCount()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1613
    iput v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryingCount:I

    .line 1614
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->showSpinnerUI(Z)V

    .line 1615
    return-void
.end method

.method private decodeHeaderArtCover(Ljava/lang/String;)V
    .locals 6
    .parameter "onlineCollectionImagePath"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1167
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder;->add(ZILjava/lang/String;I[Ljava/lang/Object;)V

    .line 1168
    return-void
.end method

.method private decreaseQueryingCount()V
    .locals 2

    .prologue
    .line 1608
    iget v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryingCount:I

    .line 1609
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    iget v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryingCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->showSpinnerUI(Z)V

    .line 1610
    return-void

    .line 1609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLoadingProgressDialog()Lcom/htc/app/HtcProgressDialog;
    .locals 2

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mContext:Landroid/content/Context;

    const v1, 0x204026b

    invoke-virtual {p0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method private handleSnsException(Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-virtual {v0, p0, p1}, Lcom/htc/music/online/util/SnsExceptionManager;->showErrorMsg(Landroid/content/Context;Lcom/htc/music/online/sinamusic/SnsException;)V

    .line 294
    :cond_0
    return-void
.end method

.method private increaseQueryingCount()V
    .locals 2

    .prologue
    .line 1603
    iget v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryingCount:I

    .line 1604
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    iget v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryingCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->showSpinnerUI(Z)V

    .line 1605
    return-void

    .line 1604
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->initHandlers()V

    .line 360
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->initLayout()V

    .line 361
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->initListView()V

    .line 362
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->registerReceivers()V

    .line 363
    return-void
.end method

.method private initHandlers()V
    .locals 3

    .prologue
    .line 378
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;Lcom/htc/music/online/FriendsCollectionDetailActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    .line 379
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[FriendsCollectionDetailActivity]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    .line 380
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 381
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNonUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;

    .line 383
    new-instance v0, Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOnlineRequestHandler:Lcom/htc/music/online/OnlineRequestHandler;

    .line 384
    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 402
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOrientation:I

    .line 403
    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mTrackListView:Lcom/htc/widget/HtcListView;

    .line 367
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mTrackListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mTrackListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mTrackListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 371
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    return-void
.end method

.method private playSelectedSong(I)V
    .locals 2
    .parameter "posInTheList"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    invoke-interface {v0, v1, p1}, Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;->playSongAll(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;I)V

    .line 677
    :cond_0
    return-void
.end method

.method private queryCollectionDetailByUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 1618
    if-nez p1, :cond_0

    .line 1619
    const-string v1, "[FriendsCollectionDetailActivity]"

    const-string v2, "url is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    :goto_0
    return-void

    .line 1622
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1623
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "songlist_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mContext:Landroid/content/Context;

    const/16 v2, 0xcb

    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v0}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 5

    .prologue
    .line 406
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.htc.music.metachanged"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 409
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 415
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 416
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 418
    return-void
.end method

.method private setDetailToUI(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V
    .locals 2
    .parameter "detail"

    .prologue
    .line 1631
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->decreaseQueryingCount()V

    .line 1632
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    invoke-virtual {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->hideEmptyErrorViewUI()V

    .line 1633
    if-eqz p1, :cond_0

    .line 1634
    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSongItemlist()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    .line 1638
    :goto_0
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNonUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;

    invoke-virtual {v0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->mergeDlAlbumArt(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)V

    .line 1639
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    invoke-virtual {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->notifyDataSetChanged()V

    .line 1640
    invoke-virtual {p1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->getSonglistPhoto()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->decodeHeaderArtCover(Ljava/lang/String;)V

    .line 1641
    const-string v0, "[FriendsCollectionDetailActivity]"

    const-string v1, "setDetailToUI"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    return-void

    .line 1636
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    goto :goto_0
.end method

.method private shareToWeibo()V
    .locals 4

    .prologue
    .line 818
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    if-eqz v1, :cond_0

    .line 819
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mIsStartMutiProcessActivity:Z

    .line 820
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    invoke-static {v1}, Lcom/htc/music/online/Util;->getBundleFromSongListDetail(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;)Landroid/os/Bundle;

    move-result-object v0

    .line 822
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mContext:Landroid/content/Context;

    const/16 v2, 0xcc

    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v0}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 826
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 824
    :cond_0
    const-string v1, "[FriendsCollectionDetailActivity]"

    const-string v2, "shareToWeibo, mSOnglistDetail is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showAlbumOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1588
    const/4 v1, 0x0

    .line 1589
    .local v1, items:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1590
    .local v0, ids:[I
    new-array v1, v4, [Ljava/lang/CharSequence;

    .end local v1           #items:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f070058

    invoke-virtual {p0, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0701e6

    invoke-virtual {p0, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1593
    .restart local v1       #items:[Ljava/lang/CharSequence;
    new-array v0, v4, [I

    .end local v0           #ids:[I
    fill-array-data v0, :array_0

    .line 1594
    .restart local v0       #ids:[I
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->hideHtcContextMenu()V

    .line 1595
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1596
    return-void

    .line 1593
    nop

    :array_0
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showLoadingProgressDialog(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 1653
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getLoadingProgressDialog()Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1654
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_1

    .line 1664
    :cond_0
    :goto_0
    return-void

    .line 1658
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1659
    if-eqz p1, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    goto :goto_0
.end method

.method private showTrackOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1573
    const/4 v1, 0x0

    .line 1574
    .local v1, items:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1576
    .local v0, ids:[I
    new-array v1, v4, [Ljava/lang/CharSequence;

    .end local v1           #items:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f070058

    invoke-virtual {p0, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x204020f

    invoke-virtual {p0, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0701dc

    invoke-virtual {p0, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0701df

    invoke-virtual {p0, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x2040216

    invoke-virtual {p0, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1582
    .restart local v1       #items:[Ljava/lang/CharSequence;
    new-array v0, v4, [I

    .end local v0           #ids:[I
    fill-array-data v0, :array_0

    .line 1583
    .restart local v0       #ids:[I
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->hideHtcContextMenu()V

    .line 1584
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v3, "trackname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1585
    return-void

    .line 1582
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public doAction(Lcom/htc/music/online/SinaActions;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCurrentAction:Lcom/htc/music/online/SinaActions;

    .line 263
    sget-object v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$11;->$SwitchMap$com$htc$music$online$SinaActions:[I

    invoke-virtual {p1}, Lcom/htc/music/online/SinaActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNonUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->getCollectionDetail(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNonUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->addToFavorite(Lcom/htc/music/online/sinamusic/WrapperSong;)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getQueryingCount()I
    .locals 1

    .prologue
    .line 1599
    iget v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->queryingCount:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 434
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 436
    iget v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOrientation:I

    .line 440
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    invoke-virtual {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v4, 0xaa

    const/4 v6, 0x1

    .line 324
    const-string v0, "[FriendsCollectionDetailActivity]"

    const-string v1, "== onCreate() =="

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 328
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOnlineImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;IIZ)V

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 329
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setVolumeControlStream(I)V

    .line 330
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 332
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setContentView(I)V

    .line 341
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->init()V

    .line 343
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "collectionid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "creatorname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;

    .line 345
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "collectionname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    invoke-virtual {v0, v6}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->backPressed(I)V

    .line 356
    :goto_1
    return-void

    .line 335
    :cond_1
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setContentView(I)V

    .line 336
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 352
    :cond_2
    iput-object p0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mContext:Landroid/content/Context;

    .line 353
    const-string v0, "[FriendsCollectionDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCreate(Bundle)] mCollectionUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mCreatorName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mCollectionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/util/SnsExceptionManager;->setOnNextActionListener(Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;)V

    .line 355
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->checkLogin()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const v12, 0x7f0700b5

    const/16 v11, 0x13

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 587
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 588
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 589
    move-object v0, p0

    .line 590
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 647
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    .line 593
    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 594
    const v6, 0x7f070015

    invoke-virtual {p0, v6}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, f:Ljava/lang/String;
    :goto_1
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v8, "trackname"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, desc:Ljava/lang/String;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x2040214

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    new-instance v8, Lcom/htc/music/online/FriendsCollectionDetailActivity$7;

    invoke-direct {v8, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$7;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040009

    new-instance v8, Lcom/htc/music/online/FriendsCollectionDetailActivity$6;

    invoke-direct {v8, p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$6;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 596
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    :cond_1
    const v6, 0x7f070014

    invoke-virtual {p0, v6}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #f:Ljava/lang/String;
    goto :goto_1

    .line 612
    .end local v2           #f:Ljava/lang/String;
    :pswitch_2
    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v12}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    const v6, 0x7f0700b6

    invoke-virtual {p0, v6}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    const v6, 0x7f0700b7

    invoke-virtual {p0, v6}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    .line 614
    .local v3, items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v6, :cond_2

    .line 615
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    invoke-virtual {v6, v3, v11}, Lcom/htc/music/util/RingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 617
    :cond_2
    const-string v6, "[FriendsCollectionDetailActivity]"

    const-string v7, "mRingToneHelper is null!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .end local v3           #items:[Ljava/lang/CharSequence;
    :pswitch_3
    new-array v3, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v12}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    const v6, 0x7f0700b6

    invoke-virtual {p0, v6}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    .line 624
    .restart local v3       #items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v6, :cond_3

    .line 625
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    invoke-virtual {v6, v3, v11}, Lcom/htc/music/util/RingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 627
    :cond_3
    const-string v6, "[FriendsCollectionDetailActivity]"

    const-string v7, "mRingToneHelper is null!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .end local v3           #items:[Ljava/lang/CharSequence;
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v9, v7, v9}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v5

    .line 634
    .local v5, shareNormaldialog:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 638
    .end local v5           #shareNormaldialog:Landroid/app/Dialog;
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v9, v7, v8}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v4

    .local v4, shareDRMDialog:Landroid/app/Dialog;
    move-object v5, v4

    .line 640
    goto/16 :goto_0

    .line 643
    .end local v4           #shareDRMDialog:Landroid/app/Dialog;
    :pswitch_6
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v5

    goto/16 :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 5
    .parameter "playlistName"

    .prologue
    .line 655
    iget v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mFirstPlaylistCreateType:I

    packed-switch v1, :pswitch_data_0

    .line 666
    :goto_0
    return-void

    .line 657
    :pswitch_0
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 658
    .local v0, id:I
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v4, "audioid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 661
    .end local v0           #id:I
    :pswitch_1
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 662
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 535
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 536
    iput-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 538
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->clearData()V

    .line 539
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    iput-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 547
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 548
    iput-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    .line 550
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaAccountChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    :goto_1
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 567
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->clearQueryingCount()V

    .line 568
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[FriendsCollectionDetailActivity]"

    const-string v2, "unregisterReceiver mNowPlayingListener fail!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 563
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[FriendsCollectionDetailActivity]"

    const-string v2, "unregisterReceiver mSinaAccountChangeReceiver fail!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onHtcContextItemSelected(I)Z
    .locals 9
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 708
    const-string v6, "[FriendsCollectionDetailActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onHtcContextItemSelected, id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v2, 0x0

    .line 710
    .local v2, pos:I
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 711
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v7, "position"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 713
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 787
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v4

    :cond_1
    :goto_1
    return v4

    .line 715
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->playSelectedSong(I)V

    goto :goto_1

    .line 720
    :sswitch_1
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    if-eqz v6, :cond_1

    .line 721
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    iget-object v7, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    invoke-interface {v6, v7, v5}, Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;->playSongAll(Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;I)V

    goto :goto_1

    .line 728
    :sswitch_2
    const/4 v3, 0x0

    .line 729
    .local v3, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    iget-object v5, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 730
    iget-object v5, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    check-cast v3, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 731
    .restart local v3       #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    iput-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedSong:Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 733
    :cond_2
    sget-object v5, Lcom/htc/music/online/SinaActions;->ADD_TO_FAVORITE:Lcom/htc/music/online/SinaActions;

    invoke-virtual {p0, v5}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->doAction(Lcom/htc/music/online/SinaActions;)V

    goto :goto_1

    .line 740
    .end local v3           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :sswitch_3
    const/4 v3, 0x0

    .line 741
    .restart local v3       #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 742
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    check-cast v3, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 745
    .restart local v3       #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :cond_3
    if-eqz v3, :cond_4

    .line 747
    iput-boolean v4, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mIsStartMutiProcessActivity:Z

    .line 748
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 749
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "related_weibo"

    invoke-virtual {v3}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v5, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mContext:Landroid/content/Context;

    const/16 v6, 0xce

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v0}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    goto :goto_1

    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_4
    move v4, v5

    .line 754
    goto :goto_1

    .line 758
    .end local v3           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :sswitch_4
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 759
    iget-object v6, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 760
    .restart local v3       #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    if-nez v3, :cond_5

    .line 761
    const-string v6, "[FriendsCollectionDetailActivity]"

    const-string v7, "[onHtcContextItemSelected][SHARE] song is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_5
    invoke-static {p0, v3, v5}, Lcom/htc/music/online/Util;->shareMusicInfo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;Z)V

    goto :goto_1

    .line 777
    .end local v3           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->shareToWeibo()V

    goto :goto_0

    .line 781
    :sswitch_6
    iget-object v4, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 782
    .restart local v3       #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    new-instance v1, Lcom/htc/music/online/util/AsyncSongDetailGetter;

    invoke-direct {v1, p0}, Lcom/htc/music/online/util/AsyncSongDetailGetter;-><init>(Landroid/content/Context;)V

    .line 783
    .local v1, getter:Lcom/htc/music/online/util/AsyncSongDetailGetter;
    invoke-virtual {v3}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    invoke-virtual {v1, v4, v5}, Lcom/htc/music/online/util/AsyncSongDetailGetter;->start(ILcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;)V

    goto/16 :goto_0

    .line 713
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x12 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1b -> :sswitch_1
        0x1c -> :sswitch_3
        0x1d -> :sswitch_2
        0x20 -> :sswitch_6
    .end sparse-switch
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 669
    const-string v0, "[FriendsCollectionDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    add-int/lit8 v0, p3, -0x1

    invoke-direct {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->playSelectedSong(I)V

    .line 671
    return-void
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 693
    const-string v2, "[FriendsCollectionDetailActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemLongClick, position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    add-int/lit8 v0, p3, -0x1

    .line 696
    .local v0, i:I
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    .line 697
    :cond_0
    const/4 v2, 0x0

    .line 704
    :goto_0
    return v2

    .line 699
    :cond_1
    const v2, 0x7f08005a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 700
    .local v1, ib:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 702
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->showTrackOptions()V

    .line 704
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 456
    invoke-virtual {p0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setIntent(Landroid/content/Intent;)V

    .line 458
    const-string v1, "collectionid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, albumId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->clearData()V

    .line 462
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->notifyDataSetChanged()V

    .line 464
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mStopping:Z

    .line 466
    iput-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    .line 467
    const-string v1, "creatorname"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;

    .line 468
    const-string v1, "collectionname"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;

    .line 470
    const-string v1, "[FriendsCollectionDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate(Bundle)] mAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mArtistId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mGenre="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->backPressed(I)V

    .line 483
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mOrientation:I

    .line 480
    sget-object v1, Lcom/htc/music/online/SinaActions;->GET_COLLECTION_DETAIL:Lcom/htc/music/online/SinaActions;

    invoke-virtual {p0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->doAction(Lcom/htc/music/online/SinaActions;)V

    .line 482
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mNonUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;

    invoke-virtual {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$NonUIHandler;->queryTrackList()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->hideErorrMsg()V

    .line 530
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onPause()V

    .line 531
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onResume()V

    .line 428
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setMainTitle(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setSecondaryTitle(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 445
    const-string v0, "[FriendsCollectionDetailActivity]"

    const-string v1, "onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 450
    const-string v0, "[FriendsCollectionDetailActivity]"

    const-string v1, "onServiceDisconnected, Service is disconnected abnormally."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onStart()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mStopping:Z

    .line 518
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mStopping:Z

    .line 523
    invoke-super {p0}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->onStop()V

    .line 524
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 681
    iget-boolean v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mIsStartMutiProcessActivity:Z

    if-eqz v0, :cond_0

    .line 682
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 684
    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mIsStartMutiProcessActivity:Z

    .line 685
    invoke-super {p0, p1}, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterListActivity;->startActivity(Landroid/content/Intent;)V

    .line 686
    invoke-virtual {p0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 690
    :cond_1
    return-void
.end method
