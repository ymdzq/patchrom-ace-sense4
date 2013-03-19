.class public Lcom/htc/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;
.implements Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;,
        Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;,
        Lcom/htc/music/MediaPlaybackService$IMediaChooser;,
        Lcom/htc/music/MediaPlaybackService$PublicServiceStub;,
        Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;,
        Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;,
        Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;,
        Lcom/htc/music/MediaPlaybackService$LocalPlayer;,
        Lcom/htc/music/MediaPlaybackService$MultiPlayer;,
        Lcom/htc/music/MediaPlaybackService$Shuffler;,
        Lcom/htc/music/MediaPlaybackService$DockEventListener;,
        Lcom/htc/music/MediaPlaybackService$QueryHandler;,
        Lcom/htc/music/MediaPlaybackService$NonUiHandler;,
        Lcom/htc/music/MediaPlaybackService$ORIENTATION;
    }
.end annotation


# static fields
.field private static final ACTION_A2DP_PLUG:Ljava/lang/String; = "android.intent.action.A2DP_PLUG"

.field public static final ALBUMID:I = 0x0

.field public static final AND_NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final AND_PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final AND_PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final AND_TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field public static final ANIMATION_CHANGE_ART:Ljava/lang/String; = "com.htc.music.changeart"

.field public static final ANIMATION_COMPLETE:Ljava/lang/String; = "com.htc.music.animationcomplete"

.field private static final ANIMATION_ENDED:I = 0x1

.field public static final ANIMATION_MOVE_NEXT:Ljava/lang/String; = "com.htc.music.rotateright"

.field public static final ANIMATION_MOVE_PREV:Ljava/lang/String; = "com.htc.music.rotateleft"

.field public static final ANIMATION_QUICKLY:Ljava/lang/String; = "com.htc.music.rotatequickly"

.field public static final ANIMATION_REFRESH:Ljava/lang/String; = "com.htc.music.refresh"

.field public static final ANIMATION_ROTATE_SELF_NEXT:Ljava/lang/String; = "com.htc.music.rotatecircle_next"

.field public static final ANIMATION_ROTATE_SELF_PREV:Ljava/lang/String; = "com.htc.music.rotatecircle_previous"

.field public static final ANIMATION_SHUFFLE:Ljava/lang/String; = "com.htc.music.shuffle"

.field public static final ARTISTID:I = 0x1

.field public static final ASYNC_OPEN:Ljava/lang/String; = "com.htc.music.asyncopen"

.field public static final ASYNC_OPEN_BUFFERRING:Ljava/lang/String; = "com.htc.music.bufferring"

.field public static final ASYNC_OPEN_COMPLETE:Ljava/lang/String; = "com.htc.music.asyncopencomplete"

.field private static final BINDPLUGIN_ON_BIND_COMPLETE:I = 0x4

.field public static final BLUETOOTH_AVRCP:Ljava/lang/String; = "com.broadcom.bluetooth.avrcp"

.field public static final BLUETOOTH_AVRCP_NOTIFY:Ljava/lang/String; = "com.broadcom.bluetooth.avrcp.notify"

.field private static final BOOKMARKCOLIDX:I = 0x9

.field public static final CMDBINDPLUGIN:Ljava/lang/String; = "bindplugin"

.field public static final CMDFFSTART:Ljava/lang/String; = "ffstart"

.field public static final CMDFFSTOP:Ljava/lang/String; = "ffstop"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPLAY:Ljava/lang/String; = "play"

.field public static final CMDPLAYALBUM:Ljava/lang/String; = "play_album"

.field public static final CMDPLAYARTIST:Ljava/lang/String; = "play_artist"

.field public static final CMDPLAYPLAYLIST:Ljava/lang/String; = "play_playlist"

.field public static final CMDPLAYTRACK:Ljava/lang/String; = "play_track"

.field public static final CMDPNEXT:I = 0x4

.field public static final CMDPPAUSE:I = 0x2

.field public static final CMDPPLAY:I = 0x0

.field public static final CMDPPREV:I = 0x3

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDPSTOP:I = 0x1

.field public static final CMDP_APPLY_SOUNDEFFECT:I = 0xb

.field public static final CMDP_RESTORE_SOUNDEFFECT:I = 0xc

.field public static final CMDRESUME:Ljava/lang/String; = "resume"

.field public static final CMDRWSTART:Ljava/lang/String; = "rwstart"

.field public static final CMDRWSTOP:Ljava/lang/String; = "rwstop"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final CMD_DECODE_NOTIFICATION_ALBUMART:I = 0x10

.field private static final CMD_NOTIFY_CHANGE:I = 0x11

.field public static final CMD_NOTIFY_CHANGE_FOR_RELOAD_QUEUE:I = 0xf

.field public static final CMD_PLAY_ALL:I = 0x14

.field public static final CMD_REFRESH_PLAYLIST:I = 0x12

.field public static final CMD_RELOAD_QUEUE:I = 0xd

.field public static final CMD_TRANSFERURL:I = 0x17

.field public static final CMD_TRANSFER_URL_WHEN_COMPLETE:I = 0x18

.field private static final CMD_ULOG_MUSIC_COUNT:I = 0x15

.field private static final CMD_ULOG_PLAYBACK_TIME:I = 0x16

.field public static final CMD_WORKER_PLAY:I = 0xe

.field public static final ENABLE_SINA_LOG:Z = true

.field public static final EXTRA_CURRENT_PLAYING_POS:Ljava/lang/String; = "current_playing_pos"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field private static final FADEIN:I = 0x4

.field private static final FFRW_REPEAT_FF:I = 0x1

.field private static final FFRW_REPEAT_NONE:I = 0x0

.field private static final FFRW_REPEAT_RW:I = 0x2

.field private static final FF_RW:I = 0x5

.field public static final GENREID:I = 0x2

.field public static final HTC_RCC_ALBUMART_PREFIX:Ljava/lang/String; = "htc_rcc_albumart_prefix_"

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final LICENSE_EXPIRED:I = 0x6

.field private static final MAX_HISTORY_SIZE:I = 0xa

.field private static final MEDIACHOOSER_TYPE_LOCAL:I = 0x1

.field private static final MEDIACHOOSER_TYPE_ONLINE:I = 0x2

.field private static final MEDIA_ERROR_STATE:I = -0x26

.field public static final META_CHANGED:Ljava/lang/String; = "com.htc.music.metachanged"

.field public static final MODE_CAR:Ljava/lang/String; = "car"

.field private static final MSG_ARG_STATE_CHANGED:I = 0x7bd

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.next"

.field public static final NOW:I = 0x1

.field private static final NO_ANIMATION:I = 0x0

.field public static final ONLINE_SEND_INFO:I = 0x13

.field private static final OPENASYNC:I = 0x7

.field public static final OS_ART_PATH_SHUFFLE_UPDATED:Ljava/lang/String; = "com.htc.music.artpathshuffleupdated"

.field public static final OS_ART_PATH_UPDATED:Ljava/lang/String; = "com.htc.music.artpathupdated"

.field public static final OS_BUFFERING:Ljava/lang/String; = "buffering"

.field public static final OS_EXTRASTATE:Ljava/lang/String; = "extrastate"

.field public static final OS_NOWPLAYING_QUEUE_UPDATED:Ljava/lang/String; = "com.htc.music.nowplayingqueueupdated"

.field public static final OS_ON_ERROR:Ljava/lang/String; = "com.htc.music.onerror"

.field public static final OS_TRACK_DETAILS_UPDATED:Ljava/lang/String; = "com.htc.music.trackdetailsupdated"

.field public static final OS_WAITING:Ljava/lang/String; = "waiting"

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.playbackcomplete"

.field public static final PLAYBACK_RINGTONE:Ljava/lang/String; = "android.htc.intent.action.PLAYBACK_RINGTONE"

.field public static final PLAYLISTID:I = 0x3

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.playstatechanged"

.field private static final PLAY_NEXT_ANIMATION:I = 0x2

.field private static final PLAY_PREV_ANIMATION:I = 0x1

.field public static final PLAY_STARTED:Ljava/lang/String; = "com.htc.music.playstarted"

.field private static final PLUGIN_NOTIFY_CHANGE:I = 0x3

.field public static final PLUGIN_SERVICE_BINDED:Ljava/lang/String; = "com.htc.music.pluginservicebinded"

.field private static final PLUGIN_UPDATE_NOTIFICATION:I = 0x2

.field private static final PODCASTCOLIDX:I = 0x8

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.queuechanged"

.field public static final RECENTLY_PLAYED_ALBUM_CHANGED:Ljava/lang/String; = "com.htc.music.recentlyplayedalbumchanged"

.field public static final RECENT_PLAYED_CHANGED:Ljava/lang/String; = "com.htc.music.recentplayedchanged"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final SAVE_STATUS_NONE:I = 0x0

.field public static final SAVE_STATUS_PERMANENT:I = 0x2

.field public static final SAVE_STATUS_TEMP:I = 0x1

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MediaPlaybackService]"

.field private static final TIME_NOTIFY_CHANGED_DELAY:I = 0x3e8

.field public static final TIME_OUT:Ljava/lang/String; = "com.htc.music.timeout"

.field private static final TOAST_SERVICE_NOTINREGION:I = 0x8

.field private static final TOAST_WARNING:I = 0x6

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.htc.music.musicservicecommand.togglepause"

.field public static final TRACKID:I = 0x4

.field private static final TRACK_ENDED:I = 0x1

.field private static final UNBINDPLUGIN_ON_BIND_COMPLETE:I = 0x5

.field private static final UPDATE_NOTIFICATION_ALBUMART:I = 0x7

.field private static final mDoAnimationViaHeadset:Z = false

.field private static final mMaxNotifyAlbumArtSideLen:I = 0x48


# instance fields
.field private final MAX_RECENT_TRACK_LIST_SIZE:I

.field private final RECENT_ALBUM_LIST_COUNT:I

.field private volatile hasSetMediaChooser:Z

.field private final hexdigits:[C

.field private final localmediachooser:Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;

.field private mA2DPReceiver:Landroid/content/BroadcastReceiver;

.field private mActivityIsLive:Z

.field private mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

.field private mAlbum:Ljava/lang/String;

.field private mAlbumId:I

.field private mAlbumList:[I

.field private mAlbumListLen:I

.field private mAnimation:Z

.field private mArtist:Ljava/lang/String;

.field private mArtistId:I

.field private volatile mAsyncComplete:Z

.field private volatile mAsyncOpening:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private volatile mAutoControl:Z

.field private mAutoShuffleList:[I

.field private mBindFailedCounter:I

.field private final mBinder:Landroid/os/IBinder;

.field private mBookmark:J

.field private mCAlbumId:I

.field private mCArtistId:I

.field private mCComposer:Ljava/lang/StringBuilder;

.field private mCGenreId:I

.field private mCPlaylistId:I

.field private mCardId:I

.field private mCategory:I

.field private mComposer:Ljava/lang/String;

.field private volatile mCurrentBuff:I

.field mCursorCols:[Ljava/lang/String;

.field private mData:Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDisplayName:Ljava/lang/String;

.field private mDockEventListener:Landroid/content/BroadcastReceiver;

.field private mDrmConsumed:Z

.field private mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

.field private mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

.field private mFFRWRepeat:I

.field private mFFToEndIsPlaying:Z

.field private mFileToPlay:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mHasUrlTransferFromCompletion:Z

.field private mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mId:J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFileExist:Z

.field mIsInMirror:Z

.field private mIsNeedDelayNotifyChange:Z

.field private mIsPodcast:I

.field private volatile mIsReloadingQueue:Z

.field private mIsSupposedToBePlaying:Z

.field private mIsSystemReady:Z

.field private volatile mIsTransferOKFromComplete:Z

.field private volatile mIsWaitAnimation:Z

.field private mLastAlbumArtPath:Ljava/lang/String;

.field private mLastAlbumId:I

.field private mLastRepeatTime:J

.field private mLastSeekEventTime:J

.field private final mLocalImplPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

.field private mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

.field private mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/music/online/MusicArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockForMediachooser:Ljava/lang/Object;

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mMimeType:Ljava/lang/String;

.field private mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

.field private mMuteByTransientLossOfFocusCanDuck:Z

.field private mNonShuffleAlbumList:[I

.field private mNonShufflePlayList:[I

.field private mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

.field private mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

.field private mNotificationLock:Ljava/lang/Object;

.field private final mOnlineImplPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

.field private mOpenFailedCounter:I

.field private mOpts:Landroid/graphics/BitmapFactory$Options;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[I

.field private mPlayListLen:I

.field private mPlayOnNextPrev:Z

.field private mPlayPos:I

.field private mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

.field private mPosOverride:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mPublicBinder:Landroid/os/IBinder;

.field mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

.field private mQueueModified:Z

.field private mQuietMode:Z

.field private final mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

.field private mRecentPlayTrackId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPlayList:Z

.field private mReloadQueueComplete:Z

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRepcnt:I

.field private mRepeatMode:I

.field private mSdCardRemoved:Z

.field private mSeeking:Z

.field private mSeekingForBuffer:Z

.field private mServiceInUse:I

.field private mServiceStartId:I

.field private mShuffleAlbumList:[I

.field private mShuffleMode:I

.field private mShufflePlayList:[I

.field mShuffleSeq:[I

.field private mShuffleSeqLen:I

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSongId:I

.field private mStartPlayMusicTimeStamp:J

.field private mStartSeekPos:J

.field mTest:Z

.field private mTitle:Ljava/lang/String;

.field private mUiHandler:Landroid/os/Handler;

.field private mUnbindFailedCounter:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWakeLockAcquired:Z

.field private mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

.field private noisy_action_time:J

.field private final onlinemediachooser:Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1772
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 152
    new-instance v0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->localmediachooser:Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;

    .line 153
    new-instance v0, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->onlinemediachooser:Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;

    .line 154
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->localmediachooser:Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    .line 157
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->hasSetMediaChooser:Z

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLockForMediachooser:Ljava/lang/Object;

    .line 159
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentBuff:I

    .line 160
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mSeekingForBuffer:Z

    .line 161
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsTransferOKFromComplete:Z

    .line 318
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 319
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 320
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 321
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 322
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 323
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    .line 328
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 331
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mReloadQueueComplete:Z

    .line 332
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 333
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 334
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 335
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 338
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 339
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 340
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 341
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 344
    new-instance v0, Lcom/htc/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$Shuffler;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    .line 345
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 363
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    .line 366
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 368
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    .line 371
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 389
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 390
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 392
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    .line 394
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 397
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 398
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 399
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 402
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 403
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    .line 420
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 421
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 422
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    .line 424
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 425
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    .line 426
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 431
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    .line 434
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 437
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    .line 440
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 444
    new-instance v0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 446
    new-instance v0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    .line 448
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCategory:I

    .line 449
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCArtistId:I

    .line 450
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCAlbumId:I

    .line 451
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mCGenreId:I

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mCComposer:Ljava/lang/StringBuilder;

    .line 453
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mCPlaylistId:I

    .line 458
    new-instance v0, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$LocalImplPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalImplPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    .line 459
    new-instance v0, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/MediaPlaybackService$OnlineImplPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOnlineImplPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    .line 460
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalImplPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    .line 464
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 466
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 468
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 470
    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/music/util/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    .line 472
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    .line 474
    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    .line 476
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    .line 477
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    .line 478
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    .line 479
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    .line 486
    new-instance v0, Lcom/htc/music/online/MusicArrayList;

    invoke-direct {v0}, Lcom/htc/music/online/MusicArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    .line 487
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->RECENT_ALBUM_LIST_COUNT:I

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    .line 490
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->MAX_RECENT_TRACK_LIST_SIZE:I

    .line 492
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 493
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    .line 495
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 497
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    .line 499
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 501
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 505
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 506
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 507
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 508
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 509
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 510
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 511
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 512
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 513
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    .line 514
    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 515
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 516
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 517
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    .line 519
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 520
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 523
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mSongId:I

    .line 527
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z

    .line 528
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAsyncOpening:Z

    .line 529
    iput-boolean v8, p0, Lcom/htc/music/MediaPlaybackService;->mAutoControl:Z

    .line 533
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    .line 987
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    .line 1071
    new-instance v0, Lcom/htc/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$1;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 1217
    new-instance v0, Lcom/htc/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$2;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    .line 1328
    new-instance v0, Lcom/htc/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$3;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1536
    new-instance v0, Lcom/htc/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$4;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 1603
    new-instance v0, Lcom/htc/music/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$5;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    .line 1657
    new-instance v0, Lcom/htc/music/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$6;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1723
    new-instance v0, Lcom/htc/music/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$7;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1740
    new-instance v0, Lcom/htc/music/MediaPlaybackService$8;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$8;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    .line 2004
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    .line 3094
    new-instance v0, Lcom/htc/music/MediaPlaybackService$9;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$9;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 4175
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 8262
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    .line 8263
    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    .line 10631
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mHasUrlTransferFromCompletion:Z

    .line 1773
    return-void

    .line 2004
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static Search([III)I
    .locals 3
    .parameter "array"
    .parameter "value"
    .parameter "len"

    .prologue
    .line 3844
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3845
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 3850
    .end local v0           #i:I
    :goto_1
    return v0

    .line 3844
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3849
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Bad thing ! I don\'t want to see this"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3850
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HdmiPlugReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V

    return-void
.end method

.method static synthetic access$10300(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10402(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$10408(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$10500(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    return v0
.end method

.method static synthetic access$10502(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z

    return p1
.end method

.method static synthetic access$10600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    return v0
.end method

.method static synthetic access$10602(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    return p1
.end method

.method static synthetic access$10700(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-static {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10800(Lcom/htc/music/MediaPlaybackService;[II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->openWithoutCategory([II)V

    return-void
.end method

.method static synthetic access$10900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlugin()V

    return-void
.end method

.method static synthetic access$11200(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11400(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$11500(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11900(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$12000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12100(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumId()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12200(Lcom/htc/music/MediaPlaybackService;)[Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getShortcutInfoList()[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12400(Lcom/htc/music/MediaPlaybackService;[I)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->getRecentAlbumartPath([I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12500(Lcom/htc/music/MediaPlaybackService;[IILcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/htc/music/MediaPlaybackService;[IILcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->openWithCategoryImproved([IILcom/htc/music/NpCategory;)V

    return-void
.end method

.method static synthetic access$12700(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getNowplaying()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12800(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12900(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->addToQueue(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getDefaultTracks()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13000(Lcom/htc/music/MediaPlaybackService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueByDbTable(III)V

    return-void
.end method

.method static synthetic access$13100(Lcom/htc/music/MediaPlaybackService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditions(III)V

    return-void
.end method

.method static synthetic access$13200(Lcom/htc/music/MediaPlaybackService;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditionsByDbTable(IIII)V

    return-void
.end method

.method static synthetic access$13300(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$13400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->setLastAudioEffect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getLastAudioEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13700(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$13702(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    return p1
.end method

.method static synthetic access$13800(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    return-object v0
.end method

.method static synthetic access$13900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$Shuffler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    return-void
.end method

.method static synthetic access$1402(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$14100(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    return-object v0
.end method

.method static synthetic access$14200(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    return v0
.end method

.method static synthetic access$14300(Lcom/htc/music/MediaPlaybackService;[II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    return-void
.end method

.method static synthetic access$14402(Lcom/htc/music/MediaPlaybackService;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    return-object p1
.end method

.method static synthetic access$14500(Lcom/htc/music/MediaPlaybackService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    return-object v0
.end method

.method static synthetic access$14600(Lcom/htc/music/MediaPlaybackService;[II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    return-void
.end method

.method static synthetic access$14700(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    return v0
.end method

.method static synthetic access$14800(Lcom/htc/music/MediaPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$14902(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    return-void
.end method

.method static synthetic access$15002(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15102(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15202(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15302(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15402(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15502(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15602(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    return p1
.end method

.method static synthetic access$15702(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    return-wide p1
.end method

.method static synthetic access$15802(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    return-wide p1
.end method

.method static synthetic access$15902(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->handleCurrentMusicInBack()V

    return-void
.end method

.method static synthetic access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    return-object v0
.end method

.method static synthetic access$16100(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mSongId:I

    return v0
.end method

.method static synthetic access$16202(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mSongId:I

    return p1
.end method

.method static synthetic access$16300(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->doSendSinaMessage()V

    return-void
.end method

.method static synthetic access$16400(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsTransferOKFromComplete:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/music/MediaPlaybackService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->transferURL(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$2702(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$2708(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$2710(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/sinamusic/ISinaEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$3102(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return p1
.end method

.method static synthetic access$3108(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/music/MediaPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/MediaPlaybackService;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->onlinemediachooser:Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/music/MediaPlaybackService;Landroid/app/Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->pluginUpdateNotification(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/MediaPlaybackService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->doWithSina(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return v0
.end method

.method static synthetic access$4102(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return p1
.end method

.method static synthetic access$4108(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return v0
.end method

.method static synthetic access$4202(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return p1
.end method

.method static synthetic access$4208(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToast(II)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$4902(Lcom/htc/music/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/htc/music/MediaPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->handleDMCError(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->resetPlayerForWirelessConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    return v0
.end method

.method static synthetic access$5902(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->updateNotification()V

    return-void
.end method

.method static synthetic access$6400(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$6500(Lcom/htc/music/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$6802(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    return p1
.end method

.method static synthetic access$6902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7008(Lcom/htc/music/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$7102(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$7200(Lcom/htc/music/MediaPlaybackService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->sendMusicCountULogMsg(J)V

    return-void
.end method

.method static synthetic access$7700(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    return v0
.end method

.method static synthetic access$7702(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    return p1
.end method

.method static synthetic access$7800(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAsyncOpening:Z

    return v0
.end method

.method static synthetic access$7802(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mAsyncOpening:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/htc/music/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentBuff:I

    return v0
.end method

.method static synthetic access$7902(Lcom/htc/music/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mCurrentBuff:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentAlbumList()V

    return-void
.end method

.method static synthetic access$802(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->addRecentPlayedPlaylist()V

    return-void
.end method

.method static synthetic access$8200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->notifyChangeDelay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8302(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mIsNeedDelayNotifyChange:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    return v0
.end method

.method static synthetic access$8800(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mHasUrlTransferFromCompletion:Z

    return v0
.end method

.method static synthetic access$8802(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mHasUrlTransferFromCompletion:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAutoControl:Z

    return v0
.end method

.method static synthetic access$8902(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mAutoControl:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HeadSetHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/htc/music/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSeekingForBuffer:Z

    return v0
.end method

.method static synthetic access$9002(Lcom/htc/music/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService;->mSeekingForBuffer:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/htc/music/MediaPlaybackService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    return-void
.end method

.method static synthetic access$9400(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    return-void
.end method

.method static synthetic access$9500(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V

    return-void
.end method

.method static synthetic access$9700(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    return-void
.end method

.method static synthetic access$9800(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V

    return-void
.end method

.method private addRecentAlbumList()V
    .locals 1

    .prologue
    .line 8896
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    invoke-interface {v0}, Lcom/htc/music/MediaPlaybackService$IMediaChooser;->addRecentAlbumList()V

    .line 8898
    return-void
.end method

.method private addRecentPlayedPlaylist()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 9336
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9358
    :goto_0
    return-void

    .line 9338
    :cond_0
    monitor-enter p0

    .line 9339
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 9340
    .local v0, currAudioId:I
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 9341
    .local v1, indexOfAudioId:I
    if-nez v1, :cond_1

    .line 9342
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Current track is the most recent track."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9343
    monitor-exit p0

    goto :goto_0

    .line 9357
    .end local v0           #currAudioId:I
    .end local v1           #indexOfAudioId:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 9345
    .restart local v0       #currAudioId:I
    .restart local v1       #indexOfAudioId:I
    :cond_1
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "addRecentPlayedPlaylist"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9347
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 9348
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9351
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9353
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 9354
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9356
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveRecentPlayedPlaylist()V

    .line 9357
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private addToAlbumList([II)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 3508
    array-length v0, p1

    .line 3509
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 3510
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3511
    const/4 p2, 0x0

    .line 3513
    :cond_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3514
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-le p2, v3, :cond_1

    .line 3515
    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3519
    :cond_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    sub-int v2, v3, p2

    .line 3520
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 3521
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 3520
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3525
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 3526
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v4, p2, v1

    aget v5, p1, v1

    aput v5, v3, v4

    .line 3525
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3528
    :cond_3
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3529
    return-void
.end method

.method private addToPlayList([II)V
    .locals 9
    .parameter "list"
    .parameter "position"

    .prologue
    const/4 v8, 0x1

    .line 3380
    array-length v0, p1

    .line 3381
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 3382
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlayList, position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reset PlayList Length."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3384
    const/4 p2, 0x0

    .line 3386
    :cond_0
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3387
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v4, :cond_1

    .line 3388
    iget p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3392
    :cond_1
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v3, v4, p2

    .line 3393
    .local v3, tailsize:I
    move v1, v3

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 3394
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v7, p2, v1

    sub-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 3393
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3398
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 3399
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v5, p2, v1

    aget v6, p1, v1

    aput v6, v4, v5

    .line 3398
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3401
    :cond_3
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3402
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToPlayList, mPlayListLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v4, v8, :cond_4

    .line 3405
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v4, v5}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v2

    .line 3406
    .local v2, shufflePlayList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v4, v5}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 3407
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 3411
    .end local v2           #shufflePlayList:[I
    :goto_2
    iput-boolean v8, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 3412
    return-void

    .line 3409
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private addToQueue(II)V
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 9528
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->addToQueueByDbTable(III)V

    .line 9529
    return-void
.end method

.method private addToQueue([I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 9532
    array-length v2, p1

    if-gtz v2, :cond_0

    .line 9533
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToQueue size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9551
    :goto_0
    return-void

    .line 9537
    :cond_0
    const/4 v0, 0x0

    .line 9539
    .local v0, combineId:[I
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 9540
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_1

    .line 9541
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [I

    .line 9542
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v7, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9543
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v3, p1

    invoke-static {p1, v7, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9544
    invoke-virtual {p0, v0, v5}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    .line 9549
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0004

    array-length v4, p1

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9550
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 9547
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, v5}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_1
.end method

.method private addToQueueByDbTable(III)V
    .locals 5
    .parameter "table"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 9468
    const/4 v1, 0x0

    .line 9469
    .local v1, audioId:[I
    const/4 v0, 0x0

    .line 9471
    .local v0, albumList:[I
    monitor-enter p0

    .line 9472
    packed-switch p2, :pswitch_data_0

    .line 9524
    :goto_0
    :try_start_0
    monitor-exit p0

    .line 9525
    return-void

    .line 9475
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    .line 9476
    if-eqz v1, :cond_0

    .line 9477
    array-length v2, v1

    new-array v0, v2, [I

    .line 9478
    invoke-static {v0, p3}, Ljava/util/Arrays;->fill([II)V

    .line 9479
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 9480
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 9524
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 9483
    :cond_0
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Cannot get audio id array from album list"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9489
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p3}, Lcom/htc/music/util/MusicUtils;->getAlbumListForArtist(Landroid/content/Context;II)[I

    move-result-object v0

    .line 9490
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 9492
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;II)[I

    move-result-object v1

    .line 9493
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 9497
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/htc/music/util/MusicUtils;->getAlbumListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    .line 9498
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 9500
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v1

    .line 9501
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 9505
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p3

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getAlbumListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 9506
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 9508
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v3, p3

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v1

    .line 9509
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    goto :goto_0

    .line 9513
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/htc/music/util/MusicUtils;->getAlbumListForSong(Landroid/content/Context;I)[I

    move-result-object v0

    .line 9514
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 9516
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 9517
    const/4 v2, 0x0

    aput p3, v1, v2

    .line 9518
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private addToQueueForMultiConditions(III)V
    .locals 1
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 9464
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditionsByDbTable(IIII)V

    .line 9465
    return-void
.end method

.method private addToQueueForMultiConditionsByDbTable(IIII)V
    .locals 4
    .parameter "table"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 9448
    const/4 v1, 0x0

    .line 9449
    .local v1, audioId:[I
    const/4 v0, 0x0

    .line 9450
    .local v0, albumList:[I
    monitor-enter p0

    .line 9451
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p3, p4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v1

    .line 9452
    if-eqz v1, :cond_0

    .line 9453
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->addToQueue([I)V

    .line 9454
    array-length v2, v1

    new-array v0, v2, [I

    .line 9455
    invoke-static {v0, p4}, Ljava/util/Arrays;->fill([II)V

    .line 9456
    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->resetQueueAlbumList([I)V

    .line 9460
    :goto_0
    monitor-exit p0

    .line 9461
    return-void

    .line 9458
    :cond_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Cannot get audio id array from artist"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9460
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private applyShuffleSeq([II)[I
    .locals 3
    .parameter "list"
    .parameter "length"

    .prologue
    .line 4996
    if-nez p1, :cond_1

    .line 4997
    const/4 p1, 0x0

    .line 5018
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 4999
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    .line 5006
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    if-eq p2, v2, :cond_2

    .line 5007
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 5010
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_0

    .line 5014
    new-array v1, p2, [I

    .line 5015
    .local v1, rList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 5016
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    .line 5015
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 5018
    goto :goto_0
.end method

.method private bindPluginService(Ljava/lang/String;)V
    .locals 7
    .parameter "className"

    .prologue
    const/4 v6, 0x0

    .line 6099
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 6133
    :cond_0
    :goto_0
    return-void

    .line 6101
    :cond_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6102
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 6103
    .local v0, bindedClass:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6104
    const/4 v2, 0x1

    .line 6105
    .local v2, isPowerOff:Z
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4, v2}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 6106
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4, p1, v6, v6}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    .line 6128
    .end local v0           #bindedClass:Ljava/lang/String;
    .end local v2           #isPowerOff:Z
    :cond_2
    :goto_1
    const-class v4, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6129
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "set remote control client as pause"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6130
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v4, :cond_0

    .line 6131
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    .line 6109
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager;->getBindingClass()Ljava/lang/String;

    move-result-object v1

    .line 6110
    .local v1, bindingClass:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 6111
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6112
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 6113
    .local v3, msg:Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 6114
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6115
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 6120
    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v4, :cond_5

    .line 6121
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    invoke-virtual {v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V

    .line 6123
    :cond_5
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4, p1, v6, v6}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    goto :goto_1
.end method

.method private checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 5640
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5641
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "getDrmStatus Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5650
    :goto_0
    return v0

    .line 5645
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->consumeRights(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5646
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Consume Rights Failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5650
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIfStopFFRWRepeat()V
    .locals 1

    .prologue
    .line 5513
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    if-nez v0, :cond_0

    .line 5514
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    .line 5515
    :cond_0
    return-void
.end method

.method private clearRecentAlbumList()V
    .locals 1

    .prologue
    .line 9129
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    if-eqz v0, :cond_0

    .line 9130
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v0}, Lcom/htc/music/online/MusicArrayList;->clear()V

    .line 9131
    :cond_0
    return-void
.end method

.method private clearRecentPlayedPlaylist()V
    .locals 1

    .prologue
    .line 9433
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 9434
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9435
    :cond_0
    return-void
.end method

.method private consumeRights(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5658
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 5659
    .local v0, drmCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 5660
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "consumeRights: drmCursor is null"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5670
    :goto_0
    return v4

    .line 5665
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5666
    const-string v5, "_data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5668
    .local v2, filepath:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {p0, p1, v2, v5}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 5669
    .local v1, error:I
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "consumeRights(uri) error code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5670
    if-nez v1, :cond_1

    .line 5672
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5673
    const/4 v0, 0x0

    move v4, v3

    .line 5670
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 5672
    .end local v1           #error:I
    .end local v2           #filepath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5673
    const/4 v0, 0x0

    .line 5672
    throw v3
.end method

.method private doAutoShuffleUpdate()V
    .locals 8

    .prologue
    .line 4543
    const/4 v2, 0x0

    .line 4545
    .local v2, notify:Z
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 4546
    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v6, v6, -0x9

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/MediaPlaybackService;->removeTracks(II)I

    .line 4547
    const/4 v2, 0x1

    .line 4550
    :cond_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v5, :cond_1

    const/4 v5, -0x1

    :goto_0
    sub-int v5, v6, v5

    rsub-int/lit8 v3, v5, 0x7

    .line 4551
    .local v3, to_add:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 4553
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    .line 4554
    .local v1, idx:I
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4555
    .local v4, which:Ljava/lang/Integer;
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 4556
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 4557
    const/4 v2, 0x1

    .line 4551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4550
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v3           #to_add:I
    .end local v4           #which:Ljava/lang/Integer;
    :cond_1
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 4559
    .restart local v0       #i:I
    .restart local v3       #to_add:I
    :cond_2
    if-eqz v2, :cond_3

    .line 4561
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4563
    :cond_3
    return-void
.end method

.method private doSendSinaMessage()V
    .locals 4

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getCurrentMusicInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 636
    .local v0, data:Landroid/os/Bundle;
    const/4 v2, -0x1

    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "playlength"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "totallength"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 640
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 641
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v2, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 652
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 645
    :cond_0
    const-string v2, "[SinaInterface]"

    const-string v3, "Do not send sina info"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doWithSina(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    invoke-interface {v1, p1}, Lcom/htc/music/online/sinamusic/ISinaEngine;->doSinaPlaySongLog(Landroid/os/Bundle;)V

    .line 618
    :goto_0
    return-void

    .line 610
    :cond_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "The Sina Engine is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 615
    .local v0, e1:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->printErrorInfo()V

    .line 616
    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->printStackTrace()V

    goto :goto_0
.end method

.method private ensureAlbumListCapacity(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 3448
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    .line 3452
    :cond_0
    shl-int/lit8 v4, p1, 0x1

    new-array v2, v4, [I

    .line 3453
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3454
    .local v1, len:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    if-eqz v4, :cond_1

    .line 3455
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3456
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 3455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3459
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    .line 3461
    shl-int/lit8 v4, p1, 0x1

    new-array v3, v4, [I

    .line 3462
    .local v3, shuffleNewList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    if-eqz v4, :cond_2

    .line 3463
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3464
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 3463
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3467
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    .line 3469
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3470
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3477
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    .end local v3           #shuffleNewList:[I
    :cond_3
    :goto_2
    return-void

    .line 3472
    .restart local v1       #len:I
    .restart local v2       #nonShuffleNewList:[I
    .restart local v3       #shuffleNewList:[I
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_2
.end method

.method private ensurePlayListCapacity(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 3347
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v4, v4

    if-le p1, v4, :cond_3

    .line 3351
    :cond_0
    mul-int/lit8 v4, p1, 0x2

    new-array v2, v4, [I

    .line 3352
    .local v2, nonShuffleNewList:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3353
    .local v1, len:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v4, :cond_1

    .line 3354
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3355
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 3354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3358
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    .line 3360
    mul-int/lit8 v4, p1, 0x2

    new-array v3, v4, [I

    .line 3361
    .local v3, shuffleNewList:[I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v4, :cond_2

    .line 3362
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3363
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 3362
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3366
    .end local v0           #i:I
    :cond_2
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    .line 3368
    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3369
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 3376
    .end local v1           #len:I
    .end local v2           #nonShuffleNewList:[I
    .end local v3           #shuffleNewList:[I
    :cond_3
    :goto_2
    return-void

    .line 3371
    .restart local v1       #len:I
    .restart local v2       #nonShuffleNewList:[I
    .restart local v3       #shuffleNewList:[I
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    goto :goto_2
.end method

.method private ensureRecentlyPlayedAlbumList()V
    .locals 19

    .prologue
    .line 8992
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v15

    .line 8993
    .local v15, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8995
    const-string v1, "[MediaPlaybackService]"

    const-string v4, "[ensureRecentlyPlayedAlbumList] Storage not mounted!"

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9119
    :cond_0
    :goto_0
    return-void

    .line 8999
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9006
    .local v16, tempRecentAlbumList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicArrayList;->trasfertoLocalAlbumId()Ljava/util/List;

    move-result-object v14

    .line 9007
    .local v14, justLocalAlbumId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 9015
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 9017
    const-string v1, "[MediaPlaybackService]"

    const-string v4, "dont neet to do ensureRecentlyPlayedAlbumList,cancel to check "

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9025
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 9026
    const-string v1, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "actuall recent album size = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9027
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 9028
    .local v17, where:Ljava/lang/StringBuilder;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 9030
    .local v5, whereArgument:[Ljava/lang/String;
    const-string v1, "_id in ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9031
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_5

    .line 9032
    const-string v1, "?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9033
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12

    .line 9034
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-eq v12, v1, :cond_4

    .line 9035
    const-string v1, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9031
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 9037
    :cond_5
    const-string v1, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9039
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    .line 9042
    .local v3, cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 9046
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 9047
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 9048
    .local v13, ididx:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 9049
    .local v8, count:I
    const-string v1, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "cursor.getCount() = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9050
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_8

    .line 9051
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 9052
    .local v9, curAlbumId:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9053
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 9054
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v9, v1, :cond_7

    .line 9055
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9050
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 9058
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 9062
    .end local v8           #count:I
    .end local v9           #curAlbumId:I
    .end local v13           #ididx:I
    :cond_8
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 9068
    .end local v3           #cols:[Ljava/lang/String;
    .end local v5           #whereArgument:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #i:I
    .end local v17           #where:Ljava/lang/StringBuilder;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v1

    const/16 v4, 0x8

    if-ge v1, v4, :cond_e

    .line 9070
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v11, v1, 0x8

    .line 9071
    .local v11, diff:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album COLLATE NOCASE ASC LIMIT 0,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9073
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 9074
    .restart local v17       #where:Ljava/lang/StringBuilder;
    const-string v1, "album != \'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9075
    const-string v1, " AND album != \'<unknown>\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9076
    const/4 v5, 0x0

    .line 9077
    .restart local v5       #whereArgument:[Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 9078
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 9080
    const-string v1, " AND _id not in ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9081
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_b

    .line 9082
    const-string v1, "?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9083
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12

    .line 9084
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-eq v12, v1, :cond_a

    .line 9085
    const-string v1, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9081
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 9087
    :cond_b
    const-string v1, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9089
    .end local v12           #i:I
    :cond_c
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 9090
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    .line 9094
    .restart local v3       #cols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 9097
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_d

    .line 9098
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9099
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 9100
    .restart local v8       #count:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_5
    if-ge v12, v8, :cond_d

    .line 9101
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 9103
    .local v7, albumId:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9104
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 9100
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 9107
    .end local v7           #albumId:I
    .end local v8           #count:I
    .end local v12           #i:I
    :cond_d
    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 9111
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #cols:[Ljava/lang/String;
    .end local v5           #whereArgument:[Ljava/lang/String;
    .end local v6           #sortOrder:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #diff:I
    .end local v17           #where:Ljava/lang/StringBuilder;
    :cond_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9112
    const-string v1, "[MediaPlaybackService]"

    const-string v4, "LocalAlbumid may call here to clear!"

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicArrayList;->clear()V

    .line 9114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/htc/music/online/MusicArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9115
    const-string v1, "com.htc.music.recentlyplayedalbumchanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private ensureShuffleSeqCapacity(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 3481
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    .line 3485
    :cond_0
    shl-int/lit8 v3, p1, 0x1

    new-array v2, v3, [I

    .line 3486
    .local v2, newlist:[I
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    .line 3487
    .local v1, len:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    if-eqz v3, :cond_1

    .line 3488
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3489
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 3488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3492
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 3496
    .end local v1           #len:I
    .end local v2           #newlist:[I
    :cond_2
    return-void
.end method

.method private forcePlay()V
    .locals 3

    .prologue
    .line 4522
    monitor-enter p0

    .line 4523
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_1

    .line 4524
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4525
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forcePlay mPlayOnNextPrev= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4526
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_0

    .line 4527
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4528
    :cond_0
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 4530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 4532
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1

    .line 4533
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4534
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4537
    :cond_1
    monitor-exit p0

    .line 4538
    return-void

    .line 4537
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private genJasonString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 9642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9643
    .local v0, comp:Ljava/lang/StringBuilder;
    const-string v5, "[htc_lockscreen_music_control]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9644
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9645
    .local v1, data:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 9646
    .local v4, jasonStr:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9647
    .local v2, dropIntent:Landroid/content/Intent;
    const/high16 v5, 0x1400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9652
    const-string v5, "from-lockscreen"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9655
    :try_start_0
    const-string v5, "drop_intent"

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9656
    const-string v5, "albumart"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9657
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 9663
    :goto_0
    if-eqz v4, :cond_0

    .line 9664
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9667
    :cond_0
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genJasonString() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9669
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 9658
    :catch_0
    move-exception v3

    .line 9659
    .local v3, e:Lorg/json/JSONException;
    const/4 v4, 0x0

    .line 9660
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "Failed to generate JSON string."

    invoke-static {v5, v6, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getAudioEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9608
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBookmark()J
    .locals 2

    .prologue
    .line 5272
    monitor-enter p0

    .line 5273
    :try_start_0
    iget-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    monitor-exit p0

    return-wide v0

    .line 5274
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCurrentMusicInfo()Landroid/os/Bundle;
    .locals 7

    .prologue
    const-wide/16 v5, 0x3e8

    .line 622
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 623
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "id"

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->onlinemediachooser:Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->getSongId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    const-string v2, "name"

    new-instance v3, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v1, "playlength"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 627
    const-string v1, "totallength"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    return-object v0

    .line 625
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    goto :goto_0
.end method

.method private getCursorForArtPath(I)Landroid/database/Cursor;
    .locals 1
    .parameter "id"

    .prologue
    .line 5381
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    invoke-interface {v0, p1}, Lcom/htc/music/MediaPlaybackService$IMediaChooser;->getCursorForArtPath(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultTracks()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 5631
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5636
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private getLastAudioEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9616
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getLastAudioEffect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNowplaying()[I
    .locals 4

    .prologue
    .line 6241
    monitor-enter p0

    .line 6242
    :try_start_0
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v3, :cond_0

    .line 6243
    const/4 v2, 0x0

    monitor-exit p0

    .line 6250
    :goto_0
    return-object v2

    .line 6245
    :cond_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 6246
    .local v1, len:I
    new-array v2, v1, [I

    .line 6247
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 6248
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 6247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6250
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 6251
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getPluginClass(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 6136
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 6137
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 6139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginCount()I
    .locals 1

    .prologue
    .line 6144
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 6145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginCount()I

    move-result v0

    .line 6147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 6174
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 6175
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 6177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6166
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 6167
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 6152
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 6153
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginName(I)Ljava/lang/String;

    move-result-object v0

    .line 6155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6200
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6201
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    .line 6203
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPluginUpdateNotification()Landroid/app/Notification;
    .locals 19

    .prologue
    .line 8433
    new-instance v11, Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-direct {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;-><init>()V

    .line 8434
    .local v11, status:Lcom/htc/wrap/android/app/HtcWrapNotification;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 8435
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f03005f

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 8444
    .local v14, views:Landroid/widget/RemoteViews;
    const v15, 0x7f0800b9

    const-string v16, "music_notification_pause_btn"

    const v17, 0x7f02005d

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 8445
    const v15, 0x7f0800b9

    const-string v16, "setBackgroundResource"

    const-string v17, "music_notification_b_transport_middle"

    const v18, 0x7f020064

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v14 .. v17}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8450
    const/4 v4, 0x0

    .local v4, artist:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, album:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, track:Ljava/lang/String;
    const/4 v10, 0x0

    .line 8452
    .local v10, salbumartpath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v10

    .line 8453
    if-nez v10, :cond_5

    .line 8455
    const v15, 0x7f080064

    const v16, 0x7f020058

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 8521
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 8522
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v13

    .line 8523
    const v15, 0x7f0800ba

    invoke-virtual {v14, v15, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8524
    if-eqz v4, :cond_0

    const-string v15, "<unknown>"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 8525
    :cond_0
    const v15, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8527
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 8528
    if-eqz v3, :cond_2

    const-string v15, "<unknown>"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 8529
    :cond_2
    const v15, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8532
    :cond_3
    const v15, 0x7f0800bb

    const v16, 0x7f0701f7

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/16 v18, 0x1

    aput-object v3, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8537
    iput-object v14, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentView:Landroid/widget/RemoteViews;

    .line 8538
    iget v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    const/high16 v16, 0x4

    or-int v15, v15, v16

    iput v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    .line 8539
    const v15, 0x7f020067

    iput v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->icon:I

    .line 8541
    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8542
    .local v12, statusintent:Landroid/content/Intent;
    const/4 v15, 0x0

    const/high16 v16, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v12, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    iput-object v15, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentIntent:Landroid/app/PendingIntent;

    .line 8544
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 8545
    .local v8, pauseIntent:Landroid/content/Intent;
    const-string v15, "command"

    const-string v16, "pause"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8546
    const-string v15, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8548
    const v15, 0x7f0800b9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v15, v0}, Lcom/htc/notification/NotificationExtra;->setButtonAction(Landroid/app/Notification;ILandroid/app/PendingIntent;)V

    .line 8553
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v15

    if-ltz v15, :cond_4

    .line 8554
    invoke-virtual {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 8555
    .local v6, extras:Landroid/os/Bundle;
    const-string v15, "music_track"

    invoke-virtual {v6, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8556
    const-string v15, "music_artist"

    invoke-virtual {v6, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8557
    const-string v15, "music_album"

    invoke-virtual {v6, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8558
    const-string v15, "music_albumid"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8568
    .end local v3           #album:Ljava/lang/String;
    .end local v4           #artist:Ljava/lang/String;
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v8           #pauseIntent:Landroid/content/Intent;
    .end local v10           #salbumartpath:Ljava/lang/String;
    .end local v12           #statusintent:Landroid/content/Intent;
    .end local v13           #track:Ljava/lang/String;
    .end local v14           #views:Landroid/widget/RemoteViews;
    :cond_4
    return-object v11

    .line 8458
    .restart local v3       #album:Ljava/lang/String;
    .restart local v4       #artist:Ljava/lang/String;
    .restart local v10       #salbumartpath:Ljava/lang/String;
    .restart local v13       #track:Ljava/lang/String;
    .restart local v14       #views:Landroid/widget/RemoteViews;
    :cond_5
    const/16 v7, 0x48

    .line 8462
    .local v7, maxSideLen:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isOnlineMode()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 8463
    invoke-static {v10}, Lcom/htc/music/online/ImageCacheManager;->getImageFromCacheOrURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 8469
    .local v5, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    if-nez v5, :cond_7

    .line 8471
    const-string v15, "[MediaPlaybackService]"

    const-string v16, " bitmap is null..."

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8472
    const v15, 0x7f080064

    const v16, 0x7f020058

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 8518
    :goto_2
    const-string v15, "[MediaPlaybackService]"

    invoke-static {v15, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8465
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 8484
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-gt v15, v7, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-le v15, v7, :cond_9

    .line 8486
    :cond_8
    const/4 v15, 0x0

    invoke-static {v5, v7, v7, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 8487
    .local v9, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 8488
    const/4 v5, 0x0

    .line 8489
    const v15, 0x7f080064

    invoke-virtual {v14, v15, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 8503
    .end local v9           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_9
    const v15, 0x7f080064

    invoke-virtual {v14, v15, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method private getRecentAlbumId()[I
    .locals 8

    .prologue
    .line 9134
    monitor-enter p0

    .line 9136
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v4

    .line 9137
    .local v4, status:Ljava/lang/String;
    const/4 v1, 0x0

    .line 9138
    .local v1, isMounted:Z
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mounted_ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9140
    :cond_0
    const/4 v1, 0x1

    .line 9143
    :cond_1
    if-eqz v1, :cond_3

    .line 9144
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actuall recent album size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v7}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9146
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->ensureRecentlyPlayedAlbumList()V

    .line 9149
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v5}, Lcom/htc/music/online/MusicArrayList;->trasfertoLocalAlbumId()Ljava/util/List;

    move-result-object v2

    .line 9150
    .local v2, localAlbum:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [I

    .line 9151
    .local v3, localRecentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 9152
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v0

    .line 9151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9155
    :cond_2
    monitor-exit p0

    .line 9157
    .end local v0           #i:I
    .end local v2           #localAlbum:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3           #localRecentAlbumId:[I
    :goto_1
    return-object v3

    :cond_3
    const/4 v5, 0x0

    new-array v3, v5, [I

    monitor-exit p0

    goto :goto_1

    .line 9261
    .end local v1           #isMounted:Z
    .end local v4           #status:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private getRecentAlbumartPath([I)[Ljava/lang/String;
    .locals 14
    .parameter "albumIds"

    .prologue
    const/4 v13, 0x0

    .line 9266
    if-nez p1, :cond_1

    move-object v11, v13

    .line 9330
    :cond_0
    :goto_0
    return-object v11

    .line 9268
    :cond_1
    const/16 v0, 0x8

    new-array v11, v0, [Ljava/lang/String;

    .line 9269
    .local v11, recentAlbumartpath:[Ljava/lang/String;
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getRecentAlbumartPath"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9270
    const/4 v7, 0x0

    .line 9272
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 9273
    .local v12, where:Ljava/lang/StringBuilder;
    array-length v0, p1

    new-array v4, v0, [Ljava/lang/String;

    .line 9275
    .local v4, recentAlbumId:[Ljava/lang/String;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9276
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    :try_start_1
    array-length v0, p1

    if-ge v9, v0, :cond_3

    .line 9277
    const-string v0, "_id = ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9278
    aget v0, p1, v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 9279
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq v9, v0, :cond_2

    .line 9280
    const-string v0, " OR "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9276
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 9282
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9284
    :try_start_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9285
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 9289
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_6

    .line 9290
    :cond_4
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cursor is null or count <= 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 9324
    if-eqz v7, :cond_5

    .line 9325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 9326
    const/4 v7, 0x0

    :cond_5
    move-object v11, v13

    .line 9291
    goto :goto_0

    .line 9282
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 9321
    .end local v4           #recentAlbumId:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 9322
    .local v8, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getRecentAlbumartPath error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 9324
    if-eqz v7, :cond_0

    .line 9325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 9326
    .end local v8           #ex:Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 9294
    .restart local v4       #recentAlbumId:[Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v12       #where:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9295
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    .line 9297
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9

    .line 9298
    :cond_7
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Cursor is null or count <= 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 9324
    if-eqz v7, :cond_8

    .line 9325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 9326
    const/4 v7, 0x0

    :cond_8
    move-object v11, v13

    .line 9299
    goto/16 :goto_0

    .line 9303
    :cond_9
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 9304
    const/4 v9, 0x0

    :goto_3
    :try_start_8
    array-length v0, p1

    if-ge v9, v0, :cond_c

    .line 9305
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9306
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_a

    .line 9307
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 9310
    .local v6, currentAlbumId:I
    aget v0, p1, v9

    if-ne v6, v0, :cond_b

    .line 9311
    const-string v0, "album_art"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v9

    .line 9314
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recentAlbumartpath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v11, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9304
    .end local v6           #currentAlbumId:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 9317
    .restart local v6       #currentAlbumId:I
    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 9306
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 9320
    .end local v6           #currentAlbumId:I
    .end local v10           #j:I
    :cond_c
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 9324
    if-eqz v7, :cond_0

    .line 9325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 9320
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 9324
    .end local v4           #recentAlbumId:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v0

    if-eqz v7, :cond_d

    .line 9325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 9326
    const/4 v7, 0x0

    .line 9324
    :cond_d
    throw v0
.end method

.method private getRecentPlayedPlaylist()[I
    .locals 3

    .prologue
    .line 9438
    monitor-enter p0

    .line 9439
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 9440
    .local v1, recentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 9441
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 9440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9443
    :cond_0
    monitor-exit p0

    return-object v1

    .line 9444
    .end local v0           #i:I
    .end local v1           #recentAlbumId:[I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getShortcutInfoList()[Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 9717
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getShortcutInfoList"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9718
    invoke-static {p0}, Lcom/htc/music/util/LandingUtils;->getShortcutInfoListByContentValues(Landroid/content/Context;)[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    .line 4277
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 4278
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoIdleState: mPlayOnNextPrev: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4281
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4282
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4283
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4286
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 4287
    .local v1, status:Landroid/app/Notification;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 4295
    return-void
.end method

.method private handleCurrentMusicInBack()V
    .locals 4

    .prologue
    .line 10634
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->verifyPlayList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10635
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleCurrentMusicInBack]mHasUrlTransferFromCompletion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mHasUrlTransferFromCompletion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10636
    invoke-static {p0}, Lcom/htc/music/online/Util;->is3GWap(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10637
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Dont support 3gwap network,cancel prepare"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10638
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.timeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 10660
    :cond_0
    :goto_0
    return-void

    .line 10641
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "3gwap network check ok"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10645
    const/4 v0, 0x0

    .line 10646
    .local v0, istransferURLOK:Z
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mHasUrlTransferFromCompletion:Z

    if-nez v1, :cond_2

    .line 10647
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->transferURL()Z

    move-result v0

    .line 10651
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mHasUrlTransferFromCompletion:Z

    .line 10652
    if-eqz v0, :cond_3

    .line 10653
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->requestOpenAsync()V

    .line 10654
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->prepareImage()V

    goto :goto_0

    .line 10649
    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsTransferOKFromComplete:Z

    goto :goto_1

    .line 10656
    :cond_3
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "transferURL fail,so cancel prepare and pop timeout dialog"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10657
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.timeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleDMCError(I)V
    .locals 5
    .parameter "errorId"

    .prologue
    .line 9676
    const/4 v1, 0x1

    .line 9677
    .local v1, isPowerOff:Z
    packed-switch p1, :pswitch_data_0

    .line 9698
    :goto_0
    return-void

    .line 9679
    :pswitch_0
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR disconnect error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9681
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 9682
    .local v0, currentPos:I
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrent pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9683
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v2, :cond_1

    .line 9684
    :cond_0
    const/4 v0, 0x0

    .line 9685
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    .line 9686
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setQueuePosition(I)V

    goto :goto_0

    .line 9689
    .end local v0           #currentPos:I
    :pswitch_1
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMS disconnect error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9690
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    goto :goto_0

    .line 9677
    nop

    :pswitch_data_0
    .packed-switch -0x2716
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDmcOrPushMode()Z
    .locals 1

    .prologue
    .line 6182
    monitor-enter p0

    .line 6183
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 6184
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isDmcOrPushMode()Z

    move-result v0

    monitor-exit p0

    .line 6186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 6188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isPluginMode()Z
    .locals 1

    .prologue
    .line 5889
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5890
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 5891
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginMode()Z

    move-result v0

    .line 5894
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluginReady()Z
    .locals 1

    .prologue
    .line 6192
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6193
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPluginReady()Z

    move-result v0

    .line 6195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPodcast()Z
    .locals 1

    .prologue
    .line 5266
    monitor-enter p0

    .line 5267
    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isServiceConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5898
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5899
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5905
    :cond_0
    :goto_0
    return v0

    .line 5902
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isServiceReady(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/MediaPlaybackService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, mService:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/music/MediaPlaybackService;>;"
    const/4 v0, 0x0

    .line 8600
    if-eqz p0, :cond_1

    .line 8601
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8602
    const/4 v0, 0x1

    .line 8609
    :goto_0
    return v0

    .line 8604
    :cond_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService.get() is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8608
    :cond_1
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadRecentAlbumList(Landroid/content/SharedPreferences;)V
    .locals 12
    .parameter "preferences"

    .prologue
    .line 8939
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "localrecentalbumid"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8940
    .local v7, q:Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 8941
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8942
    .local v1, entries:[Ljava/lang/String;
    array-length v5, v1

    .line 8943
    .local v5, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 8944
    aget-object v8, v1, v2

    .line 8945
    .local v8, revhex:Ljava/lang/String;
    const/4 v6, 0x0

    .line 8946
    .local v6, n:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, j:I
    :goto_1
    if-ltz v4, :cond_2

    .line 8947
    shl-int/lit8 v6, v6, 0x4

    .line 8948
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 8949
    .local v0, c:C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_0

    const/16 v9, 0x39

    if-gt v0, v9, :cond_0

    .line 8950
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v6, v9

    .line 8946
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 8951
    :cond_0
    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    const/16 v9, 0x66

    if-gt v0, v9, :cond_1

    .line 8952
    add-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, -0x61

    add-int/2addr v6, v9

    goto :goto_2

    .line 8955
    :cond_1
    const/4 v5, 0x0

    .line 8959
    .end local v0           #c:C
    :cond_2
    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->restoreRecentAlbumList(I)V

    .line 8943
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8963
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v5           #len:I
    .end local v6           #n:I
    .end local v8           #revhex:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "recentalbumisOnline"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8964
    .local v3, isOnlineListString:Ljava/lang/String;
    const-string v10, "[MediaPlaybackService]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadRecentAlbumList isOnlineList: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, ""

    :goto_3
    invoke-static {v10, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8965
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v9, v3}, Lcom/htc/music/online/MusicArrayList;->setIsOnlineList(Ljava/lang/String;)V

    .line 8966
    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->restoreMediachooserType(Ljava/lang/String;)V

    .line 8968
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->ensureRecentlyPlayedAlbumList()V

    .line 8969
    return-void

    :cond_4
    move-object v9, v3

    .line 8964
    goto :goto_3
.end method

.method private loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;Z)V
    .locals 11
    .parameter "preferences"
    .parameter "newstyle"

    .prologue
    .line 9396
    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "recentplayedplaylist"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9397
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 9398
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 9399
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 9400
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 9401
    if-eqz p2, :cond_3

    .line 9402
    aget-object v7, v1, v2

    .line 9403
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 9404
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 9405
    shl-int/lit8 v5, v5, 0x4

    .line 9406
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 9407
    .local v0, c:C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    .line 9408
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 9404
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 9409
    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    .line 9410
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    .line 9413
    :cond_1
    const/4 v4, 0x0

    .line 9417
    .end local v0           #c:C
    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    .line 9400
    .end local v3           #j:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9419
    :cond_3
    aget-object v8, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/music/MediaPlaybackService;->restoreRecentPlayedPlaylist(I)V

    goto :goto_3

    .line 9423
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_4
    return-void
.end method

.method private makeAutoShuffleList()Z
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 4582
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 4583
    .local v11, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 4585
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4588
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 4602
    :cond_0
    if-eqz v6, :cond_1

    .line 4603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4604
    const/4 v6, 0x0

    :cond_1
    move v0, v13

    .line 4607
    :goto_0
    return v0

    .line 4591
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 4592
    .local v9, len:I
    new-array v10, v9, [I

    .line 4593
    .local v10, list:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 4594
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 4595
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 4593
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4597
    :cond_3
    iput-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mAutoShuffleList:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4602
    if-eqz v6, :cond_4

    .line 4603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4604
    const/4 v6, 0x0

    :cond_4
    move v0, v12

    .line 4598
    goto :goto_0

    .line 4599
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catch_0
    move-exception v7

    .line 4600
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception in makeAutoShuffleList. Ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4602
    if-eqz v6, :cond_5

    .line 4603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4604
    const/4 v6, 0x0

    :cond_5
    move v0, v13

    .line 4607
    goto :goto_0

    .line 4602
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 4603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4604
    const/4 v6, 0x0

    .line 4602
    :cond_6
    throw v0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 3272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3273
    return-void
.end method

.method private notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .parameter "what"
    .parameter "bundle"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 3281
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3283
    .local v1, i:Landroid/content/Intent;
    const-string v6, "id"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3284
    const-string v6, "artist"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3285
    const-string v6, "album"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3286
    const-string v6, "track"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3287
    const-string v6, "albumid"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3288
    const-string v6, "isplaying"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3291
    const-string v6, "isonline"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isOnlineMode()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3294
    const-string v6, "com.htc.music.metachanged"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3295
    const-string v6, "current_playing_pos"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueuePosition()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3296
    if-eqz p2, :cond_2

    .line 3297
    const-string v6, "animationtype"

    invoke-virtual {p2, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3298
    .local v4, type:I
    if-ltz v4, :cond_0

    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    .line 3299
    :cond_0
    const/4 v4, 0x0

    .line 3301
    :cond_1
    const-string v6, "animationtype"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3302
    const-string v6, "updatewidget"

    invoke-virtual {p2, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 3303
    .local v5, updateWidget:Z
    const-string v6, "updatewidget"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3331
    .end local v4           #type:I
    .end local v5           #updateWidget:Z
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3333
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V

    .line 3335
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!=== notifyChange: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    const-string v6, "com.htc.music.pluginservicebinded"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3344
    :goto_1
    return-void

    .line 3305
    :cond_3
    const-string v6, "com.htc.music.playstatechanged"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3306
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    .line 3326
    :cond_4
    :goto_2
    if-eqz p2, :cond_2

    .line 3327
    const-string v6, "extrastate"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3328
    .local v0, extraState:Ljava/lang/String;
    const-string v6, "extrastate"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3310
    .end local v0           #extraState:Ljava/lang/String;
    :cond_5
    iget-wide v6, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    cmp-long v6, v6, v11

    if-lez v6, :cond_4

    .line 3311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    sub-long v2, v6, v8

    .line 3313
    .local v2, playbackDuration:J
    cmp-long v6, v2, v11

    if-lez v6, :cond_6

    .line 3315
    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 3316
    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->sendPlaybackTimeULogMsg(J)V

    .line 3322
    :goto_3
    iput-wide v11, p0, Lcom/htc/music/MediaPlaybackService;->mStartPlayMusicTimeStamp:J

    goto :goto_2

    .line 3319
    :cond_6
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "playbackDuration should not <= 0."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3339
    .end local v2           #playbackDuration:J
    :cond_7
    const-string v6, "com.htc.music.queuechanged"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3340
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_1

    .line 3342
    :cond_8
    invoke-direct {p0, v10}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_1
.end method

.method private notifyChangeDelay(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 10819
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mIsNeedDelayNotifyChange:Z

    if-eqz v1, :cond_0

    .line 10820
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify change delayed 1s, message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10821
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 10822
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10823
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10827
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 10825
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openCurrent()V
    .locals 1

    .prologue
    .line 3870
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    invoke-interface {v0}, Lcom/htc/music/MediaPlaybackService$IMediaChooser;->openCurrent()V

    .line 3872
    return-void
.end method

.method private openWithCategory([IILcom/htc/music/NpCategory;)V
    .locals 2
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    .line 6214
    monitor-enter p0

    .line 6217
    :try_start_0
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 6221
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    .line 6222
    monitor-exit p0

    .line 6223
    return-void

    .line 6222
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private openWithCategoryImproved([IILcom/htc/music/NpCategory;)V
    .locals 1
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    .line 6228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsNeedDelayNotifyChange:Z

    .line 6229
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V

    .line 6230
    return-void
.end method

.method private openWithoutCategory([II)V
    .locals 2
    .parameter "list"
    .parameter "position"

    .prologue
    .line 6234
    monitor-enter p0

    .line 6235
    :try_start_0
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 6236
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->open([II)V

    .line 6237
    monitor-exit p0

    .line 6238
    return-void

    .line 6237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private pauseOtherPlayer()V
    .locals 3

    .prologue
    .line 5686
    new-instance v0, Landroid/content/Intent;

    const-string v2, "kkbox.media.action.pause"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5687
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5689
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/music/MediaPlaybackService$11;

    invoke-direct {v2, p0}, Lcom/htc/music/MediaPlaybackService$11;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5699
    .local v1, setHeadsetOwnerThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5700
    return-void
.end method

.method private pluginNext(Z)V
    .locals 5
    .parameter "playAnim"

    .prologue
    const/4 v4, 0x4

    .line 4248
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4249
    const/4 p1, 0x0

    .line 4252
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v2

    .line 4253
    .local v2, playlistLen:I
    if-gtz v2, :cond_1

    .line 4254
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "pluginNext, No play queue"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4274
    :goto_0
    return-void

    .line 4258
    :cond_1
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v3, :cond_2

    .line 4259
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "pluginNext, ==========skip one next"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4263
    :cond_2
    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v3, :cond_3

    .line 4264
    const-string v3, "com.htc.music.rotatequickly"

    invoke-direct {p0, v3}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4266
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 4268
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4269
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4270
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "playAnim"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4271
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4272
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v3, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private pluginPrev(Z)V
    .locals 12
    .parameter "playAnim"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x3

    .line 4211
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    .line 4212
    .local v1, isDmcOrPushMode:Z
    if-eqz v1, :cond_0

    .line 4213
    const/4 p1, 0x0

    .line 4216
    :cond_0
    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v5, :cond_2

    .line 4217
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "pluginPrev, ===========skip one prev"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4244
    :cond_1
    :goto_0
    return-void

    .line 4223
    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v5

    const-wide/16 v7, 0xbb8

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 4224
    invoke-virtual {p0, v10, v11}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    move-result-wide v3

    .line 4225
    .local v3, seekValue:J
    cmp-long v5, v3, v10

    if-gez v5, :cond_1

    .line 4228
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "pluginPrev, unable to do seek."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    .end local v3           #seekValue:J
    :cond_3
    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v5, :cond_4

    .line 4234
    const-string v5, "com.htc.music.rotatequickly"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4236
    :cond_4
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v5, v9}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 4238
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v5, v9}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4239
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4240
    .local v0, data:Landroid/os/Bundle;
    const-string v5, "playAnim"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4241
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4242
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v5, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private pluginUpdateNotification(Landroid/app/Notification;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 8572
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 8597
    return-void
.end method

.method private prepareImage()V
    .locals 4

    .prologue
    .line 10728
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "start to prepareImage"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10729
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getOnlineAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    .line 10730
    .local v0, artpath:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10731
    :cond_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "artpath is incorrect in prepareImage"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10732
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/online/util/ImageFileUtil;->deleteImage(ZLjava/io/File;)V

    .line 10746
    :goto_0
    return-void

    .line 10735
    :cond_1
    invoke-static {v0}, Lcom/htc/music/online/ImageCacheManager;->decodeByURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10740
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10741
    :cond_2
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "decodeByURL fail,delete pic"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10742
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/online/util/ImageFileUtil;->deleteImage(ZLjava/io/File;)V

    goto :goto_0

    .line 10745
    :cond_3
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/online/util/ImageFileUtil;->saveImage(Landroid/graphics/Bitmap;ZLjava/io/File;)V

    goto :goto_0
.end method

.method private refreshPlaylist()V
    .locals 17

    .prologue
    .line 2787
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_3

    .line 2788
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2789
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "title != \'\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2790
    const-string v1, " AND _id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v11, v1, :cond_1

    .line 2792
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2793
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_0

    .line 2794
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2797
    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2798
    const-string v1, " AND is_music>=1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "title_key"

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2805
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2806
    .local v7, audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 2808
    :cond_2
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlaylist, cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reset PlayList Length."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2810
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2814
    const-string v1, "com.htc.music.queuechanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2815
    if-eqz v10, :cond_3

    .line 2816
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2817
    const/4 v10, 0x0

    .line 2874
    .end local v7           #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v16           #where:Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    return-void

    .line 2822
    .restart local v7       #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #i:I
    .restart local v16       #where:Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2823
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ne v9, v1, :cond_5

    .line 2826
    if-eqz v10, :cond_3

    .line 2827
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2828
    const/4 v10, 0x0

    goto :goto_1

    .line 2833
    :cond_5
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v13

    .line 2834
    .local v13, list:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    new-array v15, v1, [I

    .line 2836
    .local v15, removePosition:[I
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2837
    .restart local v7       #audioIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    :goto_2
    array-length v1, v13

    if-ge v11, v1, :cond_6

    .line 2838
    aget v1, v13, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, v13, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2841
    :cond_6
    const/4 v12, 0x0

    .line 2842
    .local v12, j:I
    const/4 v8, 0x0

    .line 2843
    .local v8, bRemoved:Z
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v11, v1, :cond_7

    .line 2844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2845
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v1, v1

    sub-int/2addr v1, v9

    if-lt v12, v1, :cond_9

    .line 2846
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "CMD_REFRESH_PLAYLIST, list length is wrong!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    :cond_7
    if-eqz v8, :cond_8

    .line 2861
    new-array v14, v12, [I

    .line 2862
    .local v14, removeArray:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v15, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2864
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 2865
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/MediaPlaybackService;->removeQueueTracks([I)I

    .line 2868
    .end local v14           #removeArray:[I
    :cond_8
    if-eqz v10, :cond_3

    .line 2869
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2849
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 2850
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    aput v1, v15, v12

    .line 2854
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 2855
    const/4 v8, 0x1

    .line 2843
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2852
    :cond_b
    aput v11, v15, v12

    goto :goto_4
.end method

.method private refreshPlugin()V
    .locals 1

    .prologue
    .line 6160
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_0

    .line 6161
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 6163
    :cond_0
    return-void
.end method

.method private reloadQueueImpl()V
    .locals 27

    .prologue
    .line 2298
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl +"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    const/16 v20, 0x0

    .line 2300
    .local v20, q:Ljava/lang/String;
    const/16 v18, 0x0

    .line 2301
    .local v18, newstyle:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentAlbumList()V

    .line 2302
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->clearRecentPlayedPlaylist()V

    .line 2303
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    .line 2304
    .local v13, id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2305
    const/16 v18, 0x1

    .line 2306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cardid"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    xor-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2308
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    if-ne v13, v2, :cond_1

    .line 2311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queue"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2312
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: card id is the same."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->loadRecentAlbumList(Landroid/content/SharedPreferences;)V

    .line 2318
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mReloadQueueComplete:Z

    .line 2321
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isOnlineMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2322
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "skip for reloadQueueImpl"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    :goto_0
    return-void

    .line 2327
    :cond_2
    if-eqz v20, :cond_2d

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2d

    .line 2328
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: q != null && q.length() > 1"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2342
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2343
    .local v11, entries:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0

    .line 2344
    .local v16, len:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 2345
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_7

    .line 2346
    if-eqz v18, :cond_6

    .line 2347
    aget-object v22, v11, v12

    .line 2348
    .local v22, revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2349
    .local v17, n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, j:I
    :goto_2
    if-ltz v14, :cond_5

    .line 2350
    shl-int/lit8 v17, v17, 0x4

    .line 2351
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2352
    .local v9, c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_3

    const/16 v2, 0x39

    if-gt v9, v2, :cond_3

    .line 2353
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2349
    :goto_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 2354
    :cond_3
    const/16 v2, 0x61

    if-lt v9, v2, :cond_4

    const/16 v2, 0x66

    if-gt v9, v2, :cond_4

    .line 2355
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_3

    .line 2358
    :cond_4
    const/16 v16, 0x0

    .line 2362
    .end local v9           #c:C
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aput v17, v2, v12

    .line 2345
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2364
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_4

    .line 2367
    :cond_7
    const/4 v8, 0x0

    .line 2369
    .local v8, bRecoverQueue:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v0, v16

    if-le v0, v2, :cond_8

    .line 2371
    const/4 v8, 0x1

    .line 2372
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "bRecoverQueue = true"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    :cond_8
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 2377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queuealbum"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2378
    if-eqz v20, :cond_11

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_11

    .line 2379
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2380
    array-length v0, v11

    move/from16 v16, v0

    .line 2381
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 2382
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 2383
    if-eqz v18, :cond_c

    .line 2384
    aget-object v22, v11, v12

    .line 2385
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2386
    .restart local v17       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .restart local v14       #j:I
    :goto_6
    if-ltz v14, :cond_b

    .line 2387
    shl-int/lit8 v17, v17, 0x4

    .line 2388
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2389
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_9

    const/16 v2, 0x39

    if-gt v9, v2, :cond_9

    .line 2390
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2386
    :goto_7
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 2391
    :cond_9
    const/16 v2, 0x61

    if-lt v9, v2, :cond_a

    const/16 v2, 0x66

    if-gt v9, v2, :cond_a

    .line 2392
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_7

    .line 2395
    :cond_a
    const/16 v16, 0x0

    .line 2399
    .end local v9           #c:C
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aput v17, v2, v12

    .line 2382
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 2401
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_8

    .line 2404
    :cond_d
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2446
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "repeatmode"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 2447
    .local v21, repmode:I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_e

    const/4 v2, 0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_e

    .line 2448
    const/16 v21, 0x0

    .line 2450
    :cond_e
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 2452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 2453
    .local v26, shufmode:I
    const/4 v2, 0x2

    move/from16 v0, v26

    if-eq v0, v2, :cond_f

    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_f

    .line 2454
    const/16 v26, 0x0

    .line 2456
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_10

    .line 2457
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2458
    const/16 v26, 0x0

    .line 2461
    :cond_10
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 2462
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 2463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeue"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2464
    if-eqz v20, :cond_17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_17

    .line 2465
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2466
    array-length v0, v11

    move/from16 v16, v0

    .line 2467
    const/4 v12, 0x0

    :goto_a
    move/from16 v0, v16

    if-ge v12, v0, :cond_16

    .line 2468
    if-eqz v18, :cond_15

    .line 2469
    aget-object v22, v11, v12

    .line 2470
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2471
    .restart local v17       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .restart local v14       #j:I
    :goto_b
    if-ltz v14, :cond_14

    .line 2472
    shl-int/lit8 v17, v17, 0x4

    .line 2473
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2474
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_12

    const/16 v2, 0x39

    if-gt v9, v2, :cond_12

    .line 2475
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2471
    :goto_c
    add-int/lit8 v14, v14, -0x1

    goto :goto_b

    .line 2407
    .end local v9           #c:C
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v21           #repmode:I
    .end local v22           #revhex:Ljava/lang/String;
    .end local v26           #shufmode:I
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto/16 :goto_9

    .line 2476
    .restart local v9       #c:C
    .restart local v14       #j:I
    .restart local v17       #n:I
    .restart local v21       #repmode:I
    .restart local v22       #revhex:Ljava/lang/String;
    .restart local v26       #shufmode:I
    :cond_12
    const/16 v2, 0x61

    if-lt v9, v2, :cond_13

    const/16 v2, 0x66

    if-gt v9, v2, :cond_13

    .line 2477
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_c

    .line 2480
    :cond_13
    const/16 v16, 0x0

    .line 2484
    .end local v9           #c:C
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aput v17, v2, v12

    .line 2467
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 2486
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_d

    .line 2489
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 2494
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflequeuealbum"

    const-string v5, ""

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2495
    if-eqz v20, :cond_24

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_24

    .line 2496
    const-string v2, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2497
    array-length v0, v11

    move/from16 v16, v0

    .line 2498
    const/4 v12, 0x0

    :goto_f
    move/from16 v0, v16

    if-ge v12, v0, :cond_1c

    .line 2499
    if-eqz v18, :cond_1b

    .line 2500
    aget-object v22, v11, v12

    .line 2501
    .restart local v22       #revhex:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2502
    .restart local v17       #n:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .restart local v14       #j:I
    :goto_10
    if-ltz v14, :cond_1a

    .line 2503
    shl-int/lit8 v17, v17, 0x4

    .line 2504
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2505
    .restart local v9       #c:C
    const/16 v2, 0x30

    if-lt v9, v2, :cond_18

    const/16 v2, 0x39

    if-gt v9, v2, :cond_18

    .line 2506
    add-int/lit8 v2, v9, -0x30

    add-int v17, v17, v2

    .line 2502
    :goto_11
    add-int/lit8 v14, v14, -0x1

    goto :goto_10

    .line 2491
    .end local v9           #c:C
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto :goto_e

    .line 2507
    .restart local v9       #c:C
    .restart local v14       #j:I
    .restart local v17       #n:I
    .restart local v22       #revhex:Ljava/lang/String;
    :cond_18
    const/16 v2, 0x61

    if-lt v9, v2, :cond_19

    const/16 v2, 0x66

    if-gt v9, v2, :cond_19

    .line 2508
    add-int/lit8 v2, v9, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v17, v17, v2

    goto :goto_11

    .line 2511
    :cond_19
    const/16 v16, 0x0

    .line 2515
    .end local v9           #c:C
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aput v17, v2, v12

    .line 2498
    .end local v14           #j:I
    .end local v17           #n:I
    .end local v22           #revhex:Ljava/lang/String;
    :goto_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 2517
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget-object v3, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v12

    goto :goto_12

    .line 2520
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 2559
    :cond_1d
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/htc/music/MediaPlaybackService;->loadRecentPlayedPlaylist(Landroid/content/SharedPreferences;Z)V

    .line 2561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "curpos"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 2562
    .local v19, pos:I
    if-ltz v19, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    move/from16 v0, v19

    if-lt v0, v2, :cond_1f

    .line 2564
    :cond_1e
    if-gez v19, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ltz v2, :cond_25

    .line 2568
    const/16 v19, 0x0

    .line 2579
    :cond_1f
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2580
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reloadqueue mPlayPos = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    if-eqz v8, :cond_21

    .line 2582
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2583
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->stop()V

    .line 2586
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 2595
    :cond_21
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "is_music>=1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2620
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_22

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_26

    .line 2621
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V

    .line 2623
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: failed to get data from database."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    if-eqz v9, :cond_23

    .line 2629
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2630
    const/4 v9, 0x0

    .line 2632
    :cond_23
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2522
    .end local v9           #c:Landroid/database/Cursor;
    .end local v19           #pos:I
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    goto/16 :goto_13

    .line 2571
    .restart local v19       #pos:I
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2573
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2574
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2575
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueue -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2635
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_26
    if-eqz v9, :cond_27

    .line 2636
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2637
    const/4 v9, 0x0

    .line 2648
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2649
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -, song is playing now, don\'t do opencurrent.!!! return."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2663
    :cond_28
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 2664
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 2665
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 2666
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 2669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "seekpos"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    .line 2670
    .local v23, seekpos:J
    if-eqz v8, :cond_2b

    .line 2671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v5, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, v5, v6}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    .line 2777
    .end local v8           #bRecoverQueue:Z
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #entries:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v16           #len:I
    .end local v19           #pos:I
    .end local v21           #repmode:I
    .end local v23           #seekpos:J
    .end local v26           #shufmode:I
    :cond_29
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    if-nez v2, :cond_2a

    .line 2778
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2780
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2782
    :cond_2a
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl -"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2674
    .restart local v8       #bRecoverQueue:Z
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v11       #entries:[Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v16       #len:I
    .restart local v19       #pos:I
    .restart local v21       #repmode:I
    .restart local v23       #seekpos:J
    .restart local v26       #shufmode:I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const-wide/16 v5, 0x0

    cmp-long v3, v23, v5

    if-ltz v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J

    move-result-wide v5

    cmp-long v3, v23, v5

    if-gez v3, :cond_2c

    .end local v23           #seekpos:J
    :goto_15
    move-wide/from16 v0, v23

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, v0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    goto :goto_14

    .restart local v23       #seekpos:J
    :cond_2c
    const-wide/16 v23, 0x0

    goto :goto_15

    .line 2687
    .end local v8           #bRecoverQueue:Z
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #entries:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v16           #len:I
    .end local v19           #pos:I
    .end local v21           #repmode:I
    .end local v23           #seekpos:J
    .end local v26           #shufmode:I
    :cond_2d
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: q == null || q.length() <= 1"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2691
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2692
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 2695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "LaunchedBefore"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    .line 2696
    .local v15, launchBefore:Z
    if-nez v15, :cond_29

    .line 2697
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "reloadQueueImpl: !launchBefore"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LaunchedBefore"

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2700
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v4, v2

    .line 2703
    .local v4, ccols:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "is_music>=1"

    const/4 v6, 0x0

    const-string v7, "title COLLATE NOCASE ASC,track"

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2707
    .local v10, cursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 2709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v25

    .line 2710
    .local v25, service:Lcom/htc/music/IMediaPlaybackService;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/htc/music/NpCategory;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    move-object/from16 v0, v25

    invoke-static {v0, v2, v10, v3}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)Z

    .line 2712
    if-eqz v10, :cond_29

    .line 2713
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_14
.end method

.method private removeTracksInternal(II)I
    .locals 13
    .parameter "first"
    .parameter "last"

    .prologue
    .line 4628
    monitor-enter p0

    .line 4629
    :try_start_0
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeTracksInternal, first: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", last: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mPlayListLen: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    if-ge p2, p1, :cond_0

    .line 4631
    const/4 v9, 0x0

    monitor-exit p0

    .line 4717
    :goto_0
    return v9

    .line 4632
    :cond_0
    if-gez p1, :cond_1

    .line 4633
    const/4 p1, 0x0

    .line 4634
    :cond_1
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v9, :cond_2

    .line 4635
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v9, -0x1

    .line 4637
    :cond_2
    const/4 v0, 0x0

    .line 4638
    .local v0, gotonext:Z
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 4639
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v5

    .line 4640
    .local v5, pos:I
    if-gt p1, v5, :cond_6

    if-gt v5, p2, :cond_6

    .line 4641
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeTracksInternal shuffle normal gotonext = true mPlayPos = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4642
    const/4 v0, 0x1

    .line 4655
    .end local v5           #pos:I
    :cond_3
    :goto_1
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v9, p2

    add-int/lit8 v4, v9, -0x1

    .line 4657
    .local v4, num:I
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 4658
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4659
    .local v6, shufflePlayListLen:I
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4660
    .local v2, nonShufflePlayListLen:I
    move v1, p1

    .local v1, i:I
    :goto_2
    if-gt v1, p2, :cond_a

    .line 4661
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v7

    .line 4662
    .local v7, shufflePos:I
    move v3, v1

    .line 4663
    .local v3, nonShufflePos:I
    if-ltz v7, :cond_4

    if-ge v7, v6, :cond_4

    .line 4664
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    invoke-static {v9, v6, v7}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4665
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    invoke-static {v9, v6, v7}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4666
    add-int/lit8 v6, v6, -0x1

    .line 4669
    :cond_4
    if-ltz v3, :cond_5

    if-ge v3, v2, :cond_5

    .line 4670
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    invoke-static {v9, v2, v3}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4672
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    invoke-static {v9, v2, v3}, Lcom/htc/music/util/MusicUtils;->deleteArrayItem([III)V

    .line 4674
    add-int/lit8 v2, v2, -0x1

    .line 4660
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4643
    .end local v1           #i:I
    .end local v2           #nonShufflePlayListLen:I
    .end local v3           #nonShufflePos:I
    .end local v4           #num:I
    .end local v6           #shufflePlayListLen:I
    .end local v7           #shufflePos:I
    .restart local v5       #pos:I
    :cond_6
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v9, p2, :cond_3

    .line 4644
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v10, p2, p1

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 4718
    .end local v0           #gotonext:Z
    .end local v5           #pos:I
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 4647
    .restart local v0       #gotonext:Z
    :cond_7
    :try_start_1
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v9, :cond_8

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v9, p2, :cond_8

    .line 4648
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4649
    const/4 v0, 0x1

    goto :goto_1

    .line 4650
    :cond_8
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v9, p2, :cond_3

    .line 4651
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    sub-int v10, p2, p1

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 4680
    .restart local v4       #num:I
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v4, :cond_a

    .line 4681
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int v10, p1, v1

    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    add-int/lit8 v12, p2, 0x1

    add-int/2addr v12, v1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 4682
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int v10, p1, v1

    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    add-int/lit8 v12, p2, 0x1

    add-int/2addr v12, v1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 4680
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4685
    :cond_a
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v10, p2, p1

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4686
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 4687
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 4701
    if-eqz v0, :cond_b

    .line 4702
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v9, :cond_c

    .line 4703
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4704
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4717
    :cond_b
    :goto_4
    sub-int v9, p2, p1

    add-int/lit8 v9, v9, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 4706
    :cond_c
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v9, v10, :cond_d

    .line 4707
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4709
    :cond_d
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v8

    .line 4710
    .local v8, wasPlaying:Z
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4711
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4712
    if-eqz v8, :cond_b

    .line 4713
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method private requestOpenAsync()V
    .locals 4

    .prologue
    .line 10719
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "URL trasferred ok and request openasync"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10720
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 10721
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10722
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 10724
    :cond_0
    return-void
.end method

.method private resetAudioMetaData()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 9626
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    .line 9627
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    .line 9628
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    .line 9629
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 9630
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    .line 9631
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    .line 9632
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    .line 9634
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 9635
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    .line 9636
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mBookmark:J

    .line 9637
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    .line 9638
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I

    .line 9639
    return-void
.end method

.method private resetPlayerForWirelessConnect(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    const/4 v6, 0x1

    .line 1579
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1580
    monitor-enter p0

    .line 1581
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v2

    .line 1582
    .local v2, isPlaying:Z
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 1583
    .local v0, currentPlaybackPosition:J
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTVOn: mPlayer.isPlaying() == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    if-eqz v2, :cond_0

    .line 1585
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1586
    :cond_0
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mPlayer.stop()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1588
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1589
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eq v3, v6, :cond_3

    .line 1590
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mPlayer.isReInitialized() == false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    :cond_1
    :goto_0
    monitor-exit p0

    .line 1601
    .end local v0           #currentPlaybackPosition:J
    .end local v2           #isPlaying:Z
    :cond_2
    return-void

    .line 1592
    .restart local v0       #currentPlaybackPosition:J
    .restart local v2       #isPlaying:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3, v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    .line 1593
    if-ne v2, v6, :cond_1

    .line 1594
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mPlayer.start()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->start()V

    goto :goto_0

    .line 1599
    .end local v0           #currentPlaybackPosition:J
    .end local v2           #isPlaying:Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private resetQueueAlbumList([I)V
    .locals 4
    .parameter "albumList"

    .prologue
    const/4 v3, 0x0

    .line 9554
    array-length v1, p1

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 9556
    .local v0, combineId:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 9557
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9558
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9563
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 9565
    return-void

    .line 9561
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private restoreMediachooserType(Ljava/lang/String;)V
    .locals 5
    .parameter "isOnlineListString"

    .prologue
    .line 8973
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8974
    :cond_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "isOnlineListString==null or empty in restoreMediachooserType"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8987
    :cond_1
    :goto_0
    return-void

    .line 8977
    :cond_2
    const-string v1, "["

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 8978
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8979
    .local v0, items:[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v1, v0

    if-gtz v1, :cond_4

    .line 8980
    :cond_3
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "items==null or empty in restoreMediachooserType"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8983
    :cond_4
    const-string v1, "true"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8984
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "isOnlineListString check ok , set to MEDIACHOOSER_TYPE_ONLINE"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8985
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->setMediaChooser(I)V

    goto :goto_0
.end method

.method private restoreRecentAlbumList(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 9122
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 9126
    :goto_0
    return-void

    .line 9124
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreRecentAlbumList albumId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9125
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/MusicArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private restoreRecentPlayedPlaylist(I)V
    .locals 3
    .parameter "audioId"

    .prologue
    .line 9426
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreRecentPlayedPlaylist:audioId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9427
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 9430
    :goto_0
    return-void

    .line 9429
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveBookmarkIfNeeded()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    .line 4299
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isOnlineMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4300
    const-string v8, "[MediaPlaybackService]"

    const-string v9, "Current is onlinemode , so cancel saveBookmark"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4329
    :cond_0
    :goto_0
    return-void

    .line 4305
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4306
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    .line 4307
    .local v4, pos:J
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 4308
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    .line 4309
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_2

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_0

    :cond_2
    cmp-long v8, v4, v0

    if-lez v8, :cond_3

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-ltz v8, :cond_0

    .line 4315
    :cond_3
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_4

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_5

    .line 4317
    :cond_4
    const-wide/16 v4, 0x0

    .line 4321
    :cond_5
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 4322
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4323
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/htc/music/MediaPlaybackService;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 4325
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4327
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private saveQueue(Z)V
    .locals 14
    .parameter "full"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2012
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[saveQueue] full="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";mSdCardRemoved="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";mQueueModified="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    const-string v9, "Music"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 2016
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2019
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 2020
    iget-boolean v9, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    if-eqz v9, :cond_3

    .line 2021
    const/4 p1, 0x1

    .line 2022
    iput-boolean v12, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 2051
    :cond_0
    :goto_0
    const-string v9, "version"

    const/4 v10, 0x4

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2055
    if-eqz p1, :cond_13

    .line 2056
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-nez v9, :cond_2

    .line 2057
    :cond_1
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BadQueue mPlayListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2060
    iput v12, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2066
    :cond_2
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2067
    .local v5, l:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 2068
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v7, v9, v4

    .line 2069
    .local v7, n:I
    if-gtz v7, :cond_4

    .line 2070
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " BadQueue mAlbumList["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    .end local v4           #i:I
    .end local v5           #l:I
    .end local v7           #n:I
    :goto_2
    return-void

    .line 2024
    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    .line 2067
    .restart local v4       #i:I
    .restart local v5       #l:I
    .restart local v7       #n:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2082
    .end local v7           #n:I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2090
    .local v8, q:Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2091
    .local v6, len:I
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mPlayListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_8

    .line 2093
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v7, v9, v4

    .line 2094
    .restart local v7       #n:I
    if-nez v7, :cond_6

    .line 2095
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2097
    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    .line 2098
    and-int/lit8 v1, v7, 0xf

    .line 2099
    .local v1, digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 2100
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2102
    .end local v1           #digit:I
    :cond_7
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2106
    .end local v7           #n:I
    :cond_8
    const-string v9, "queue"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2107
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2110
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2111
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveQueue mAlbumListLen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_b

    .line 2113
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    aget v7, v9, v4

    .line 2114
    .restart local v7       #n:I
    if-nez v7, :cond_9

    .line 2115
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2117
    :cond_9
    :goto_8
    if-eqz v7, :cond_a

    .line 2118
    and-int/lit8 v1, v7, 0xf

    .line 2119
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 2120
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 2122
    .end local v1           #digit:I
    :cond_a
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 2125
    .end local v7           #n:I
    :cond_b
    const-string v9, "queuealbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2146
    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v9, v13, :cond_12

    .line 2147
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 2148
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v6, :cond_e

    .line 2149
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v7, v9, v4

    .line 2150
    .restart local v7       #n:I
    if-nez v7, :cond_c

    .line 2151
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2153
    :cond_c
    :goto_b
    if-eqz v7, :cond_d

    .line 2154
    and-int/lit8 v1, v7, 0xf

    .line 2155
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 2156
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 2158
    .end local v1           #digit:I
    :cond_d
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 2161
    .end local v7           #n:I
    :cond_e
    const-string v9, "shufflequeue"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2162
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2164
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 2165
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v6, :cond_11

    .line 2166
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    aget v7, v9, v4

    .line 2167
    .restart local v7       #n:I
    if-nez v7, :cond_f

    .line 2168
    const-string v9, "0;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2170
    :cond_f
    :goto_e
    if-eqz v7, :cond_10

    .line 2171
    and-int/lit8 v1, v7, 0xf

    .line 2172
    .restart local v1       #digit:I
    shr-int/lit8 v7, v7, 0x4

    .line 2173
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 2175
    .end local v1           #digit:I
    :cond_10
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 2178
    .end local v7           #n:I
    :cond_11
    const-string v9, "shufflequeuealbum"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2179
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2200
    :cond_12
    const-string v9, "cardid"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2227
    .end local v4           #i:I
    .end local v5           #l:I
    .end local v6           #len:I
    .end local v8           #q:Ljava/lang/StringBuilder;
    :cond_13
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "save curPos? mReloadQueueComplete:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mReloadQueueComplete:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mPlayPos:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    iget-boolean v9, p0, Lcom/htc/music/MediaPlaybackService;->mReloadQueueComplete:Z

    if-nez v9, :cond_14

    iget v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_15

    .line 2229
    :cond_14
    const-string v9, "curpos"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2231
    iput-boolean v13, p0, Lcom/htc/music/MediaPlaybackService;->mReloadQueueComplete:Z

    .line 2234
    :cond_15
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 2235
    const-string v9, "seekpos"

    iget-object v10, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v10}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v10

    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2237
    :cond_16
    const-string v9, "repeatmode"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2238
    const-string v9, "shufflemode"

    iget v10, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2249
    const/4 v0, 0x0

    .line 2251
    .local v0, className:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v9}, Lcom/htc/music/MusicPluginManager;->getCurrentPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 2252
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_17

    .line 2253
    const-string v9, "plugin"

    invoke-interface {v3, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2257
    :cond_17
    if-nez v0, :cond_18

    .line 2258
    const-string v9, "plugin"

    const-string v10, ""

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2264
    :cond_18
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 2265
    :catch_0
    move-exception v2

    .line 2266
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "Exception in ed.apply: "

    invoke-static {v9, v10, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2257
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-nez v0, :cond_19

    .line 2258
    const-string v10, "plugin"

    const-string v11, ""

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2257
    :cond_19
    throw v9
.end method

.method private saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;)V
    .locals 9
    .parameter "ed"

    .prologue
    .line 8901
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 8903
    .local v5, queue:Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 8905
    .local v2, isOnlineList:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    if-eqz v6, :cond_4

    .line 8906
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v6}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v3

    .line 8907
    .local v3, len:I
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveRecentAlbumList mLocalRecentAlbumId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8908
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 8909
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v6, v1}, Lcom/htc/music/online/MusicArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 8910
    .local v4, n:I
    if-nez v4, :cond_1

    .line 8911
    const-string v6, "0;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8908
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8912
    :cond_1
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 8916
    :goto_2
    if-eqz v4, :cond_2

    .line 8917
    and-int/lit8 v0, v4, 0xf

    .line 8918
    .local v0, digit:I
    shr-int/lit8 v4, v4, 0x4

    .line 8919
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8921
    .end local v0           #digit:I
    :cond_2
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8925
    .end local v4           #n:I
    :cond_3
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;

    invoke-virtual {v6}, Lcom/htc/music/online/MusicArrayList;->getIsOnlineList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8928
    .end local v1           #i:I
    .end local v3           #len:I
    :cond_4
    const-string v6, "localrecentalbumid"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8930
    const-string v6, "recentalbumisOnline"

    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8931
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveRecentAlbumList isOnlineList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8933
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveRecentAlbumList "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8934
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 8935
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8936
    return-void
.end method

.method private saveRecentPlayedPlaylist()V
    .locals 9

    .prologue
    .line 9361
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v6, :cond_0

    .line 9362
    const-string v6, "Music"

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 9366
    :cond_0
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 9367
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 9369
    .local v5, queue:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 9370
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 9371
    .local v3, len:I
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveQueue mRecentPlayTrackId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9372
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 9373
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mRecentPlayTrackId:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 9374
    .local v4, n:I
    if-nez v4, :cond_2

    .line 9375
    const-string v6, "0;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9372
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9376
    :cond_2
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 9380
    :goto_2
    if-eqz v4, :cond_3

    .line 9381
    and-int/lit8 v0, v4, 0xf

    .line 9382
    .local v0, digit:I
    shr-int/lit8 v4, v4, 0x4

    .line 9383
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->hexdigits:[C

    aget-char v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 9385
    .end local v0           #digit:I
    :cond_3
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 9389
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #n:I
    :cond_4
    const-string v6, "recentplayedplaylist"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9390
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveRecentPlayedPlaylist "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9391
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9392
    return-void
.end method

.method private scanBackward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v8, 0x0

    .line 5560
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5562
    if-nez p1, :cond_0

    .line 5563
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 5564
    iput-wide v8, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5588
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5589
    return-void

    .line 5566
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_4

    .line 5568
    const-wide/16 v2, 0xa

    mul-long/2addr p2, v2

    .line 5573
    :goto_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    sub-long v0, v2, p2

    .line 5574
    .local v0, newpos:J
    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    .line 5576
    const-wide/16 v0, 0x0

    .line 5578
    :cond_1
    iget-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    if-gez p1, :cond_3

    .line 5579
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 5580
    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5582
    :cond_3
    if-ltz p1, :cond_5

    .line 5583
    iput-wide v0, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    .line 5571
    .end local v0           #newpos:J
    :cond_4
    const-wide/32 v2, 0xc350

    sub-long v4, p2, v4

    const-wide/16 v6, 0x28

    mul-long/2addr v4, v6

    add-long p2, v2, v4

    goto :goto_1

    .line 5585
    .restart local v0       #newpos:J
    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private scanForward(IJ)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v10, 0x1

    .line 5518
    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5519
    if-nez p1, :cond_0

    .line 5520
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    .line 5521
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5556
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mSeeking:Z

    .line 5557
    return-void

    .line 5523
    :cond_0
    cmp-long v4, p2, v6

    if-gez v4, :cond_4

    .line 5525
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 5530
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 5531
    .local v2, newpos:J
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 5537
    .local v0, duration:J
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    .line 5539
    move-wide v2, v0

    .line 5541
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v4, :cond_1

    .line 5542
    iput-boolean v10, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    .line 5543
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 5546
    :cond_1
    iget-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    if-gez p1, :cond_3

    .line 5547
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 5548
    iput-wide p2, p0, Lcom/htc/music/MediaPlaybackService;->mLastSeekEventTime:J

    .line 5550
    :cond_3
    if-ltz p1, :cond_5

    .line 5551
    iput-wide v2, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0

    .line 5528
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_4
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 5553
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_5
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/MediaPlaybackService;->mPosOverride:J

    goto :goto_0
.end method

.method private sendMusicCountULogMsg(J)V
    .locals 2
    .parameter "delayTime"

    .prologue
    const/16 v1, 0x15

    .line 8869
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v0, :cond_0

    .line 8870
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 8871
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 8876
    :goto_0
    return-void

    .line 8874
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "send Music Count ULog, mNonUiHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPlaybackTimeULogMsg(J)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 8879
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v2, :cond_0

    .line 8880
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 8881
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8882
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "duration"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8883
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8884
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v2, v1}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8889
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 8887
    :cond_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "send Playback Time ULog, mNonUiHandler is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAudioEffect(Ljava/lang/String;ZI)V
    .locals 2
    .parameter "setting"
    .parameter "applyEffect"
    .parameter "saveStatus"

    .prologue
    const/4 v1, 0x0

    .line 9580
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9581
    packed-switch p3, :pswitch_data_0

    .line 9593
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 9596
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9597
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    .line 9605
    :cond_0
    :goto_1
    return-void

    .line 9583
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 9587
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 9588
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 9601
    :cond_1
    if-eqz p2, :cond_0

    .line 9602
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 9581
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAudioMetaData(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 9621
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    invoke-interface {v0, p1}, Lcom/htc/music/MediaPlaybackService$IMediaChooser;->setAudioMetaData(Landroid/database/Cursor;)V

    .line 9623
    return-void
.end method

.method private setCategory(IIIILjava/lang/String;I)V
    .locals 4
    .parameter "category"
    .parameter "artistId"
    .parameter "albumId"
    .parameter "genreId"
    .parameter "composer"
    .parameter "playlistId"

    .prologue
    const/4 v3, -0x1

    .line 5848
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCategory("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5849
    if-ltz p1, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_2

    .line 5850
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Category wrong in setCategory()."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5873
    :cond_1
    :goto_0
    return-void

    .line 5853
    :cond_2
    if-lt p2, v3, :cond_3

    if-lt p3, v3, :cond_3

    const/4 v0, -0x2

    if-lt p4, v0, :cond_3

    if-ge p6, v3, :cond_1

    .line 5854
    :cond_3
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Something wrong in setCategory()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCategory(Lcom/htc/music/NpCategory;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 5845
    return-void
.end method

.method private setDefaultNotificationAlbum(Landroid/widget/RemoteViews;)V
    .locals 2
    .parameter "views"

    .prologue
    .line 8243
    if-eqz p1, :cond_0

    .line 8244
    const v0, 0x7f080064

    const v1, 0x7f020058

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 8260
    :goto_0
    return-void

    .line 8258
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "RemoteViews is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLastAudioEffect(Ljava/lang/String;)V
    .locals 0
    .parameter "szSetting"

    .prologue
    .line 9612
    invoke-static {p0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setLastAudioEffect(Landroid/content/Context;Ljava/lang/String;)V

    .line 9613
    return-void
.end method

.method private setOrientation(I)V
    .locals 0
    .parameter "nOrientation"

    .prologue
    .line 5822
    return-void
.end method

.method private setShuffleAlbumList([II)V
    .locals 3
    .parameter "list"
    .parameter "length"

    .prologue
    .line 3666
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->applyShuffleSeq([II)[I

    move-result-object v0

    .line 3667
    .local v0, shuffleAlbumList:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 3668
    return-void
.end method

.method private setShuffleSeq(II)V
    .locals 7
    .parameter "len"
    .parameter "nFirst"

    .prologue
    .line 4959
    if-gtz p1, :cond_0

    .line 4960
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 4990
    :goto_0
    return-void

    .line 4964
    :cond_0
    if-ge p2, p1, :cond_1

    if-gez p2, :cond_2

    .line 4965
    :cond_1
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setShuffleSeq(), nFirst should be less than len, len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nFirst: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4966
    const/4 p2, 0x0

    .line 4969
    :cond_2
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    .line 4970
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 4971
    .local v2, rnd:Ljava/util/Random;
    move v1, p2

    .line 4973
    .local v1, r:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 4974
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v0, v4, v0

    .line 4973
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4976
    :cond_3
    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_4

    .line 4978
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v3, v4, v0

    .line 4979
    .local v3, temp:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 4980
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeq:[I

    aput v3, v4, v1

    .line 4981
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x1

    sub-int v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v1, v4, v5

    .line 4976
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4988
    .end local v3           #temp:I
    :cond_4
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleSeqLen:I

    goto :goto_0
.end method

.method private showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "albumArt"
    .parameter "key"

    .prologue
    const/4 v2, 0x7

    .line 5797
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5798
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5799
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5800
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 5801
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5802
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 5711
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 5712
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5743
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 5746
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5747
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5776
    return-void
.end method

.method private showToastInUiThread(II)V
    .locals 4
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 5788
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5789
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5790
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "resId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5791
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5792
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5793
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5794
    return-void
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 587
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 597
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startFFRWRepeat(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 5499
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->stopFFRWRepeat()V

    .line 5501
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 5502
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5503
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x104

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5504
    return-void
.end method

.method private stop(Z)V
    .locals 3
    .parameter "remove_status_icon"

    .prologue
    const/4 v2, 0x1

    .line 4106
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4108
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 4110
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4111
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/16 v1, 0x7bd

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4112
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4119
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 4111
    .restart local v0       #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4115
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-enter p0

    .line 4116
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v1, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 4117
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopActivePlugin(Z)V
    .locals 5
    .parameter "isPowerOff"

    .prologue
    const/4 v4, 0x5

    .line 5910
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-nez v1, :cond_1

    .line 5925
    :cond_0
    :goto_0
    return-void

    .line 5913
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5915
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 5916
    .local v0, status:Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 5917
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 5918
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    goto :goto_0

    .line 5920
    .end local v0           #status:Landroid/app/Notification;
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5921
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5922
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopFFRWRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5507
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 5508
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5509
    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 5510
    return-void
.end method

.method private switchToLocal()V
    .locals 5

    .prologue
    .line 9702
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9703
    const-string v3, "DLNA"

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 9707
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9708
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "server"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9709
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9710
    const/4 v1, 0x1

    .line 9711
    .local v1, isPowerOff:Z
    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V

    .line 9712
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Car mode start service force switch to local"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9714
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #isPowerOff:Z
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private transferURL()Z
    .locals 1

    .prologue
    .line 10715
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->transferURL(I)Z

    move-result v0

    return v0
.end method

.method private transferURL(I)Z
    .locals 7
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 10675
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "transferURL in onComplete +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10676
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->verifyPlayList()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10677
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 10679
    .local v2, id:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->onlinemediachooser:Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;

    if-nez v4, :cond_1

    .line 10680
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "onlinemediachooser==null in transferURL ()"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10710
    .end local v2           #id:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 10683
    .restart local v2       #id:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->onlinemediachooser:Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;

    invoke-virtual {v4, v2}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->queryMediaInfo(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 10684
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 10686
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->onlinemediachooser:Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;

    const-string v5, "url"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->originalurl:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->access$16502(Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10692
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10693
    const/4 v0, 0x0

    .line 10700
    invoke-static {p0}, Lcom/htc/music/online/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 10701
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "no network availabe"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10688
    :catch_0
    move-exception v1

    .line 10689
    .local v1, e:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10692
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10693
    const/4 v0, 0x0

    goto :goto_0

    .line 10692
    .end local v1           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10693
    const/4 v0, 0x0

    .line 10692
    throw v3

    .line 10696
    :cond_2
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor==null in transferURL () id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10705
    :cond_3
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->onlinemediachooser:Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;

    #calls: Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->trasferfedURL()Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;->access$16600(Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10709
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #id:Ljava/lang/String;
    :cond_4
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "transferURL in onComplete -"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10710
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V
    .locals 10
    .parameter "albumArt"
    .parameter "key"

    .prologue
    .line 8364
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbumArtInNotification, albumArt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8366
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_0

    .line 8367
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, not playing. return."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8430
    :goto_0
    return-void

    .line 8371
    :cond_0
    if-nez p1, :cond_1

    .line 8372
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "updateAlbumArtInNotification, albumArt is null, return."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8376
    :cond_1
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v7

    .line 8377
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v6, p2, :cond_3

    .line 8378
    :cond_2
    const-string v6, "[MediaPlaybackService]"

    const-string v8, "updateAlbumArtInNotification, (mNotification == null || mNotification.hashCode() != key), return."

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8379
    monitor-exit v7

    goto :goto_0

    .line 8429
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 8382
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iget-object v6, v6, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v6, :cond_4

    .line 8383
    const-string v6, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAlbumArtInNotification, mNotification.extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v9}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8384
    monitor-exit v7

    goto :goto_0

    .line 8387
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 8388
    .local v4, resource:Landroid/content/res/Resources;
    const v6, 0x7f0a002b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 8389
    .local v2, reflectHeight:I
    const/16 v1, 0x48

    .line 8391
    .local v1, maxSideLen:I
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iget-object v5, v6, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentView:Landroid/widget/RemoteViews;

    .line 8393
    .local v5, views:Landroid/widget/RemoteViews;
    if-nez v5, :cond_5

    .line 8394
    const-string v6, "[MediaPlaybackService]"

    const-string v8, "updateAlbumArtInNotification, (views == null) return."

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8395
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8399
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-gt v6, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v6, v1, :cond_7

    .line 8401
    :cond_6
    const/4 v6, 0x0

    invoke-static {p1, v1, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 8402
    .local v3, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 8403
    const/4 p1, 0x0

    .line 8405
    const v6, 0x7f080064

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 8424
    .end local v3           #resizeBitmap:Landroid/graphics/Bitmap;
    :goto_1
    const/4 v6, 0x1

    iget-object v8, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {p0, v6, v8}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8429
    :goto_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 8415
    :cond_7
    const v6, 0x7f080064

    :try_start_4
    invoke-virtual {v5, v6, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 8426
    :catch_0
    move-exception v0

    .line 8427
    .local v0, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v6, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAlbumArtInNotification. Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private updateNotification()V
    .locals 17

    .prologue
    .line 8266
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f03005f

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 8267
    .local v10, views:Landroid/widget/RemoteViews;
    const v11, 0x7f0800b9

    const-string v12, "music_notification_pause_btn"

    const v13, 0x7f02005d

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 8268
    const v11, 0x7f0800b9

    const-string v12, "setBackgroundResource"

    const-string v13, "music_notification_b_transport_middle"

    const v14, 0x7f020064

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8270
    const/4 v3, 0x0

    .local v3, artist:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, album:Ljava/lang/String;
    const/4 v9, 0x0

    .line 8272
    .local v9, track:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    .line 8274
    .local v4, audioID:I
    if-gez v4, :cond_6

    .line 8276
    const v11, 0x7f0800ba

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8277
    const v11, 0x7f0800bb

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8278
    const v11, 0x7f080064

    const v12, 0x7f020058

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 8283
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 8284
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v9

    .line 8285
    const v11, 0x7f0800ba

    invoke-virtual {v10, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8286
    if-eqz v3, :cond_0

    const-string v11, "<unknown>"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 8287
    :cond_0
    const v11, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8289
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 8290
    if-eqz v1, :cond_2

    const-string v11, "<unknown>"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 8291
    :cond_2
    const v11, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8294
    :cond_3
    const v11, 0x7f0800bb

    const v12, 0x7f0701f7

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8296
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v2

    .line 8298
    .local v2, albumID:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/MediaPlaybackService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v12

    .line 8299
    :try_start_0
    new-instance v11, Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-direct {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    .line 8300
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iput-object v10, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentView:Landroid/widget/RemoteViews;

    .line 8301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    iget v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    const/high16 v14, 0x4

    or-int/2addr v13, v14

    iput v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->flags:I

    .line 8302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    const v13, 0x7f020067

    iput v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->icon:I

    .line 8303
    new-instance v8, Landroid/content/Intent;

    const-string v11, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8304
    .local v8, statusintent:Landroid/content/Intent;
    const/high16 v11, 0x400

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8305
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    const/4 v13, 0x0

    const/high16 v14, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v13, v8, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    iput-object v13, v11, Lcom/htc/wrap/android/app/HtcWrapNotification;->contentIntent:Landroid/app/PendingIntent;

    .line 8307
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 8308
    .local v7, pauseIntent:Landroid/content/Intent;
    const-string v11, "command"

    const-string v13, "pause"

    invoke-virtual {v7, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8309
    const-string v11, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8312
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    const v13, 0x7f0800b9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v7, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lcom/htc/notification/NotificationExtra;->setButtonAction(Landroid/app/Notification;ILandroid/app/PendingIntent;)V

    .line 8317
    if-ltz v4, :cond_5

    .line 8319
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v11, :cond_7

    .line 8320
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v13, 0x10

    invoke-virtual {v11, v13}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 8321
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v13, 0x1

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 8322
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v13, 0x10

    invoke-virtual {v11, v13}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 8323
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    iput v11, v6, Landroid/os/Message;->arg1:I

    .line 8324
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v11, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8330
    .end local v6           #msg:Landroid/os/Message;
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    invoke-virtual {v11}, Lcom/htc/wrap/android/app/HtcWrapNotification;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 8331
    .local v5, extras:Landroid/os/Bundle;
    const-string v11, "music_track"

    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8332
    const-string v11, "music_artist"

    invoke-virtual {v5, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8333
    const-string v11, "music_album"

    invoke-virtual {v5, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8334
    const-string v11, "music_albumid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8341
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_5
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 8342
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8361
    return-void

    .line 8280
    .end local v2           #albumID:I
    .end local v7           #pauseIntent:Landroid/content/Intent;
    .end local v8           #statusintent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/music/MediaPlaybackService;->setDefaultNotificationAlbum(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 8327
    .restart local v2       #albumID:I
    .restart local v7       #pauseIntent:Landroid/content/Intent;
    .restart local v8       #statusintent:Landroid/content/Intent;
    :cond_7
    :try_start_1
    const-string v11, "[MediaPlaybackService]"

    const-string v13, "updateNotification, mNonUiHandler is null."

    invoke-static {v11, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8342
    .end local v7           #pauseIntent:Landroid/content/Intent;
    .end local v8           #statusintent:Landroid/content/Intent;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11
.end method

.method private updateRemoteControlClient(Ljava/lang/String;)V
    .locals 6
    .parameter "what"

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 3212
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRemoteControlClient - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3215
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "isDmcOrPushMode() - return"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3250
    :cond_0
    :goto_0
    return-void

    .line 3219
    :cond_1
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3220
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x3

    :cond_3
    invoke-virtual {v2, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    .line 3222
    :cond_4
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "action_complete_one_download"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.htc.musicenhancer.action_reset_albumart"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3225
    :cond_5
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v2, v5}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 3226
    .local v0, ed:Landroid/media/RemoteControlClient$MetadataEditor;
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 3227
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 3228
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 3229
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 3231
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->genJasonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 3248
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_0
.end method

.method private verifyPlayList()Z
    .locals 2

    .prologue
    .line 10664
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    array-length v0, v0

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 10666
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "mPlayList or mPlayPos is wrong in MediaPlaybackService CMD_TRANSFERURL"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10667
    const/4 v0, 0x0

    .line 10670
    :goto_0
    return v0

    .line 10669
    :cond_1
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "verify playlist ok"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10670
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private waitForAnimation()V
    .locals 3

    .prologue
    .line 4497
    monitor-enter p0

    .line 4498
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_0

    .line 4499
    monitor-exit p0

    .line 4519
    :goto_0
    return-void

    .line 4501
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4503
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    .line 4513
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    .line 4514
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1

    .line 4515
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4516
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4518
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4506
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4507
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForAnimation mPlayOnNextPrev= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4508
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_3

    .line 4509
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4510
    :cond_3
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 8634
    return-void
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 8671
    return-void
.end method

.method public OnHdmiPlugReceiver(Lcom/htc/music/util/HdmiPlugReceiver;I)V
    .locals 4
    .parameter "caller"
    .parameter "bIsPluged"

    .prologue
    .line 8710
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnHdmiPlugReceiver bIsPluged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8712
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8713
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "OnHdmiPlugReceiver, If support Global Beats. Do Nothing for HDMI plugging in/out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8740
    :cond_0
    :goto_0
    return-void

    .line 8717
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8718
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "OnHdmiPlugReceiver, Wired/BT headset is plugged. Do Nothing for HDMI plugging in/out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8723
    :cond_2
    if-lez p2, :cond_0

    .line 8725
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8726
    .local v0, currentStyle:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "Original"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8727
    const-string v1, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8731
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public activityGoSleep()V
    .locals 1

    .prologue
    .line 5082
    monitor-enter p0

    .line 5083
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 5084
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_0

    .line 5085
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->forcePlay()V

    .line 5087
    :cond_0
    monitor-exit p0

    .line 5088
    return-void

    .line 5087
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activityWakeup()V
    .locals 1

    .prologue
    .line 5091
    monitor-enter p0

    .line 5092
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 5093
    monitor-exit p0

    .line 5094
    return-void

    .line 5093
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAlbumArtRequests()V
    .locals 1

    .prologue
    .line 6002
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6003
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearAlbumArtRequests()V

    .line 6005
    :cond_0
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 1

    .prologue
    .line 6083
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6084
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->clearNowplayingQueueRequests()V

    .line 6088
    :cond_0
    return-void
.end method

.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 4
    .parameter "storagePath"

    .prologue
    .line 3122
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 3123
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3125
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3128
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 3130
    .local v0, isPlaying:Z
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 3135
    const-string v2, "com.htc.music.metachanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3136
    if-eqz v0, :cond_0

    .line 3137
    const-string v2, "com.htc.music.playstatechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3144
    .end local v0           #isPlaying:Z
    :cond_0
    :goto_0
    return-void

    .line 3141
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 5459
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5460
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    .line 5462
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public endAnimation()V
    .locals 2

    .prologue
    .line 4933
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "endAnimation"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4934
    monitor-enter p0

    .line 4935
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-eqz v0, :cond_0

    .line 4936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 4940
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V

    .line 4944
    :goto_0
    monitor-exit p0

    .line 4946
    return-void

    .line 4942
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Bad !! endAnimation is not pair"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4944
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enqueue([II)V
    .locals 2
    .parameter "list"
    .parameter "action"

    .prologue
    .line 3619
    monitor-enter p0

    .line 3620
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_3

    .line 3621
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3622
    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3636
    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_2

    .line 3637
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3638
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3639
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    .line 3640
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3641
    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3643
    :cond_2
    monitor-exit p0

    .line 3644
    :goto_0
    return-void

    .line 3625
    :cond_3
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3626
    const-string v0, "com.htc.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3627
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3628
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3629
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3630
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_4

    .line 3631
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3632
    :cond_4
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3633
    monitor-exit p0

    goto :goto_0

    .line 3643
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumArtPath()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 5279
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5280
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v6

    .line 5281
    .local v6, position:I
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v7

    if-nez v7, :cond_1

    .line 5282
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v7, v6}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 5369
    .end local v6           #position:I
    :cond_0
    :goto_0
    return-object v0

    .line 5284
    .restart local v6       #position:I
    :cond_1
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v7, v6}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5291
    .end local v6           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v5

    .line 5292
    .local v5, id:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 5297
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isOnlineMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5298
    iget-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z

    if-nez v7, :cond_3

    .line 5299
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "Still downloading music,so dont show pic in getAlbumArtPath"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5300
    const-string v0, ""

    goto :goto_0

    .line 5303
    :cond_3
    :try_start_0
    iget-boolean v7, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/online/util/ImageFileUtil;->getImageFile(ZLjava/io/File;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 5304
    :catch_0
    move-exception v4

    .line 5305
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 5306
    const-string v0, ""

    goto :goto_0

    .line 5311
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    monitor-enter p0

    .line 5313
    :try_start_1
    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    if-ne v7, v5, :cond_5

    .line 5314
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5316
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5320
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 5321
    .local v1, albumName:Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v7, "<unknown>"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5322
    :cond_6
    monitor-enter p0

    .line 5323
    :try_start_3
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 5324
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 5325
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 5331
    :cond_7
    const/4 v3, 0x0

    .line 5334
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_4
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->getCursorForArtPath(I)Landroid/database/Cursor;

    move-result-object v3

    .line 5335
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_9

    .line 5336
    :cond_8
    const-string v0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 5372
    if-eqz v3, :cond_0

    .line 5373
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5374
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 5341
    :cond_9
    :try_start_5
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isOnlineMode()Z

    move-result v7

    if-nez v7, :cond_b

    .line 5343
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 5344
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    .line 5345
    if-eqz v3, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_b

    .line 5346
    :cond_a
    const-string v7, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find album art with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 5372
    if-eqz v3, :cond_0

    .line 5373
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5352
    :cond_b
    :try_start_6
    const-string v7, "album_art"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 5353
    .local v2, artColumnIndex:I
    if-gez v2, :cond_c

    .line 5354
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "Cannot find art column index"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 5372
    if-eqz v3, :cond_0

    .line 5373
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5358
    :cond_c
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 5359
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5360
    .local v0, albumArtPath:Ljava/lang/String;
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 5361
    if-eqz v0, :cond_d

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 5362
    iput v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 5363
    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 5365
    :cond_d
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 5372
    if-eqz v3, :cond_0

    .line 5373
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5365
    :catchall_2
    move-exception v7

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 5372
    .end local v0           #albumArtPath:Ljava/lang/String;
    .end local v2           #artColumnIndex:I
    :catchall_3
    move-exception v7

    if-eqz v3, :cond_e

    .line 5373
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5374
    const/4 v3, 0x0

    .line 5372
    :cond_e
    throw v7

    .line 5368
    .restart local v2       #artColumnIndex:I
    :cond_f
    :try_start_b
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "Cannot move to first position"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 5372
    if-eqz v3, :cond_0

    .line 5373
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 6048
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6050
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 6051
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 6060
    :goto_0
    return-object v0

    .line 6053
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6060
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/htc/music/MediaPlaybackService$IMediaChooser;->getAlbumArtPathFromDB(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "shufflePosition"

    .prologue
    .line 6066
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6067
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    .line 6070
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 5243
    monitor-enter p0

    .line 5244
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5245
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAlbumId()I

    move-result v0

    monitor-exit p0

    .line 5247
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    monitor-exit p0

    goto :goto_0

    .line 5249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5224
    monitor-enter p0

    .line 5225
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5226
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5237
    :goto_0
    return-object v0

    .line 5228
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5229
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getAlbumName: mAlbum == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5232
    :cond_1
    const-string v0, "<unknown>"

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5233
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getAlbumName: mAlbum == UNKNOWN_STRING"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5234
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 5239
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5237
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAlbumQueue()[I
    .locals 5

    .prologue
    .line 5031
    monitor-enter p0

    .line 5032
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5036
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v1

    .line 5039
    .local v1, len:I
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5040
    const/4 v1, 0x1

    .line 5043
    :cond_0
    new-array v2, v1, [I

    .line 5044
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 5045
    aput v0, v2, v0

    .line 5044
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5047
    :cond_1
    monitor-exit p0

    move-object v3, v2

    .line 5055
    .end local v2           #list:[I
    .local v3, list:[I
    :goto_1
    return-object v3

    .line 5050
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v3           #list:[I
    :cond_2
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 5051
    .restart local v1       #len:I
    new-array v2, v1, [I

    .line 5052
    .restart local v2       #list:[I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 5053
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 5052
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5055
    :cond_3
    monitor-exit p0

    move-object v3, v2

    .end local v2           #list:[I
    .restart local v3       #list:[I
    goto :goto_1

    .line 5057
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v3           #list:[I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAlbumQueuePosition()I
    .locals 1

    .prologue
    .line 5062
    monitor-enter p0

    .line 5063
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5066
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5067
    const/4 v0, 0x0

    monitor-exit p0

    .line 5073
    :goto_0
    return v0

    .line 5070
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 5078
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5073
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAlbumQueueSize()I
    .locals 1

    .prologue
    .line 5108
    monitor-enter p0

    .line 5109
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5112
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5113
    const/4 v0, 0x1

    monitor-exit p0

    .line 5119
    :goto_0
    return v0

    .line 5116
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 5121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5119
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAnimationStatus()Z
    .locals 1

    .prologue
    .line 4949
    monitor-enter p0

    .line 4950
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4951
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 5214
    monitor-enter p0

    .line 5215
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5216
    const/4 v0, -0x1

    monitor-exit p0

    .line 5218
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtistId:I

    monitor-exit p0

    goto :goto_0

    .line 5220
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5195
    monitor-enter p0

    .line 5196
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5197
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getArtistName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5208
    :goto_0
    return-object v0

    .line 5199
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5200
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getArtistName: mArtist == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5203
    :cond_1
    const-string v0, "<unknown>"

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5204
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getArtistName: mArtist == UNKNOWN_STRING"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5205
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 5210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5208
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 2

    .prologue
    .line 5141
    monitor-enter p0

    .line 5142
    :try_start_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z

    if-eqz v0, :cond_2

    .line 5143
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    monitor-exit p0

    .line 5146
    :goto_0
    return v0

    .line 5145
    :cond_2
    monitor-exit p0

    .line 5146
    const/4 v0, -0x1

    goto :goto_0

    .line 5145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 5153
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5154
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getAudioSessionId()I

    move-result v0

    .line 5156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->getAudioSessionId()I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)I

    move-result v0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 5993
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    invoke-interface {v0}, Lcom/htc/music/MediaPlaybackService$IMediaChooser;->getBufferingPercent()I

    move-result v0

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5928
    monitor-enter p0

    .line 5929
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5930
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getComposer()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5932
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5934
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDrmConstraint(Landroid/net/Uri;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 2
    .parameter "uri"

    .prologue
    .line 5654
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "drmuri"

    .prologue
    .line 5592
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 5593
    .local v12, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "content_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "content_boundary_offset"

    aput-object v1, v2, v0

    .line 5599
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 5600
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 5602
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5603
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5604
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 5605
    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5606
    .local v9, data:Ljava/lang/String;
    const-string v0, "content_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 5608
    .local v7, contentOffset:I
    const-string v0, "content_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5610
    .local v8, contentid:Ljava/lang/String;
    const-string v0, "content_boundary_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5613
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_header_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_trailor_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sd_content_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 5617
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 5618
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5619
    const/4 v11, 0x0

    .line 5623
    :cond_1
    return-object v10

    .line 5617
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    .line 5618
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5619
    const/4 v11, 0x0

    .line 5617
    :cond_2
    throw v0
.end method

.method public getExternalPluginCount()I
    .locals 1

    .prologue
    .line 5998
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5938
    monitor-enter p0

    .line 5939
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5940
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getFileName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5942
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5944
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 9

    .prologue
    .line 5948
    monitor-enter p0

    .line 5949
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5950
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getGenre()Ljava/lang/String;

    move-result-object v8

    monitor-exit p0

    .line 5975
    :goto_0
    return-object v8

    .line 5952
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v6

    .line 5953
    .local v6, audioId:I
    const/4 v8, 0x0

    .line 5954
    .local v8, genre:Ljava/lang/String;
    if-ltz v6, :cond_2

    .line 5955
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 5959
    .local v2, CursorCols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in (select genre_id from audio_genres_map where audio_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5962
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5965
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 5966
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5967
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5970
    :cond_1
    if-eqz v7, :cond_2

    .line 5971
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5975
    .end local v2           #CursorCols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 5977
    .end local v6           #audioId:I
    .end local v8           #genre:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5981
    monitor-enter p0

    .line 5982
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5983
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getLocation()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5985
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5987
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 4922
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getNowplayingQueue(I)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 6075
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6076
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getNowplayingQueue(I)V

    .line 6080
    :cond_0
    return-void
.end method

.method public getOnlineAlbumArtPath()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 10750
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v4

    .line 10751
    .local v4, id:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 10806
    :cond_0
    :goto_0
    return-object v0

    .line 10755
    :cond_1
    monitor-enter p0

    .line 10758
    :try_start_0
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    if-ne v5, v4, :cond_2

    .line 10759
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 10761
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10763
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 10764
    .local v1, albumName:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v5, "<unknown>"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10765
    :cond_3
    monitor-enter p0

    .line 10766
    :try_start_2
    iput v4, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I

    .line 10767
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;

    .line 10768
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 10774
    :cond_4
    const/4 v3, 0x0

    .line 10777
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_3
    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackService;->getCursorForArtPath(I)Landroid/database/Cursor;

    move-result-object v3

    .line 10778
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_6

    .line 10779
    :cond_5
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 10809
    if-eqz v3, :cond_0

    .line 10810
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 10811
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 10784
    :cond_6
    :try_start_4
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isOnlineMode()Z

    move-result v5

    if-nez v5, :cond_8

    .line 10786
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 10787
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    .line 10788
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_8

    .line 10789
    :cond_7
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find album art with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 10809
    if-eqz v3, :cond_0

    .line 10810
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 10795
    :cond_8
    :try_start_5
    const-string v5, "album_art"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 10796
    .local v2, artColumnIndex:I
    if-gez v2, :cond_9

    .line 10797
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "Cannot find art column index"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 10809
    if-eqz v3, :cond_0

    .line 10810
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 10801
    :cond_9
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 10802
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    .line 10809
    .local v0, albumArtPath:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 10810
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 10805
    .end local v0           #albumArtPath:Ljava/lang/String;
    :cond_a
    :try_start_7
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "Cannot move to first position"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 10809
    if-eqz v3, :cond_0

    .line 10810
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 10809
    .end local v2           #artColumnIndex:I
    :catchall_2
    move-exception v5

    if-eqz v3, :cond_b

    .line 10810
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 10811
    const/4 v3, 0x0

    .line 10809
    :cond_b
    throw v5
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5130
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5131
    const-string v0, "plugin_file_path"

    .line 5133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4917
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    .line 4918
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 4
    .parameter "shufflePosition"

    .prologue
    const/4 v2, -0x1

    .line 6008
    monitor-enter p0

    .line 6009
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6010
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getPositionByShufflePosition(I)I

    move-result v1

    monitor-exit p0

    .line 6023
    :goto_0
    return v1

    .line 6012
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 6014
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 6016
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v0, v3, p1

    .line 6018
    .local v0, audioId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    .line 6019
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    .line 6020
    monitor-exit p0

    goto :goto_0

    .line 6025
    .end local v0           #audioId:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6018
    .restart local v0       #audioId:I
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6023
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getQueue()[I
    .locals 4

    .prologue
    .line 3858
    monitor-enter p0

    .line 3859
    :try_start_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3860
    .local v1, len:I
    new-array v2, v1, [I

    .line 3861
    .local v2, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3862
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 3861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3864
    :cond_0
    monitor-exit p0

    return-object v2

    .line 3865
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 5165
    monitor-enter p0

    .line 5167
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5168
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueuePosition()I

    move-result v0

    monitor-exit p0

    .line 5171
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    goto :goto_0

    .line 5172
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 5097
    monitor-enter p0

    .line 5099
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5100
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    monitor-exit p0

    .line 5103
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    monitor-exit p0

    goto :goto_0

    .line 5104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 4897
    monitor-enter p0

    .line 4898
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4899
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getRepeatMode()I

    move-result v0

    monitor-exit p0

    .line 4901
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    monitor-exit p0

    goto :goto_0

    .line 4903
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 4875
    monitor-enter p0

    .line 4876
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4877
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getShuffleMode()I

    move-result v0

    monitor-exit p0

    .line 4879
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    monitor-exit p0

    goto :goto_0

    .line 4881
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 6029
    monitor-enter p0

    .line 6030
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6031
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1}, Lcom/htc/music/MusicPluginManager;->getShufflePositionByPosition(I)I

    move-result v1

    monitor-exit p0

    .line 6042
    :goto_0
    return v1

    .line 6033
    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v3, :cond_1

    if-gez p1, :cond_2

    .line 6035
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 6037
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v0, v3, p1

    .line 6039
    .local v0, audioId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v1, v3, :cond_4

    .line 6040
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mShufflePlayList:[I

    aget v3, v3, v1

    if-ne v3, v0, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 6044
    .end local v0           #audioId:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6039
    .restart local v0       #audioId:I
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6042
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getTrackDetails(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 6091
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6092
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->getTrackDetails(I)V

    .line 6096
    :cond_0
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5253
    monitor-enter p0

    .line 5254
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5255
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getTrackName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 5260
    :goto_0
    return-object v0

    .line 5257
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5258
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "getTrackName: mTitle == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5260
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5262
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 4912
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getVolume()I

    move-result v0

    .line 4913
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 5
    .parameter "newStatus"
    .parameter "isBeatsHeadset"

    .prologue
    .line 8675
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headSetStatusChanged, newStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isBeatsHeadset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8677
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8706
    :cond_0
    :goto_0
    return-void

    .line 8686
    :cond_1
    if-nez p1, :cond_0

    .line 8688
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyleIndex(Landroid/content/Context;)I

    move-result v1

    .line 8690
    .local v1, selectSoundStyleIndes:I
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8691
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v1, v2, :cond_0

    .line 8692
    const-string v2, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8693
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Original"

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 8697
    :cond_2
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v1, v2, :cond_0

    .line 8698
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v0

    .line 8700
    .local v0, effect:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    .line 8701
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public isOnlineMode()Z
    .locals 3

    .prologue
    .line 9737
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLockForMediachooser:Ljava/lang/Object;

    monitor-enter v1

    .line 9738
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->localmediachooser:Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;

    if-ne v0, v2, :cond_0

    .line 9739
    const/4 v0, 0x0

    monitor-exit v1

    .line 9741
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 9743
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 4144
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->isPlaying()Z

    move-result v0

    .line 4147
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSystemReady()Z
    .locals 3

    .prologue
    .line 4492
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemReady= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4493
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 5
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 3786
    monitor-enter p0

    .line 3787
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v2, :cond_0

    .line 3788
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p1, v2, -0x1

    .line 3790
    :cond_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v2, :cond_1

    .line 3791
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v2, -0x1

    .line 3793
    :cond_1
    if-ge p1, p2, :cond_5

    .line 3794
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 3795
    .local v1, tmp:I
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 3796
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 3795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3798
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 3799
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_4

    .line 3800
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3816
    .end local v0           #i:I
    .end local v1           #tmp:I
    :cond_3
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 3817
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3818
    monitor-exit p0

    .line 3819
    return-void

    .line 3801
    .restart local v0       #i:I
    .restart local v1       #tmp:I
    :cond_4
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p1, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p2, :cond_3

    .line 3802
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3818
    .end local v0           #i:I
    .end local v1           #tmp:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3804
    :cond_5
    if-ge p2, p1, :cond_3

    .line 3805
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v1, v2, p1

    .line 3806
    .restart local v1       #tmp:I
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-le v0, p2, :cond_6

    .line 3807
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 3806
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3809
    :cond_6
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aput v1, v2, p2

    .line 3810
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-ne v2, p1, :cond_7

    .line 3811
    iput p2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 3812
    :cond_7
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p2, :cond_3

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p1, :cond_3

    .line 3813
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public next(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 4195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    .line 4196
    return-void
.end method

.method public next(ZZ)V
    .locals 1
    .parameter "force"
    .parameter "playAnim"

    .prologue
    .line 4199
    monitor-enter p0

    .line 4200
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4201
    invoke-direct {p0, p2}, Lcom/htc/music/MediaPlaybackService;->pluginNext(Z)V

    .line 4205
    :goto_0
    monitor-exit p0

    .line 4206
    return-void

    .line 4203
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V
    invoke-static {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;ZZ)V

    goto :goto_0

    .line 4205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nextAlbum(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 4489
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 2879
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2880
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2882
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2884
    .local v0, action:Ljava/lang/String;
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    const-class v1, Lcom/htc/music/IHtcMediaPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2888
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "onBind IHtcMediaPlaybackService"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPublicBinder:Landroid/os/IBinder;

    .line 2894
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 19

    .prologue
    .line 1777
    const-string v16, "[MediaPlaybackService]"

    const-string v17, "onCreate"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mEngine:Lcom/htc/music/online/sinamusic/ISinaEngine;

    .line 1784
    const-string v16, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 1785
    new-instance v12, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const-class v17, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    .local v12, rec:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1788
    new-instance v8, Landroid/content/Intent;

    const-string v16, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v8, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v8, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1790
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1793
    .local v9, mediaPendingIntent:Landroid/app/PendingIntent;
    new-instance v16, Landroid/media/RemoteControlClient;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1796
    const/16 v6, 0xbd

    .line 1802
    .local v6, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 1804
    new-instance v14, Landroid/app/Notification;

    invoke-direct {v14}, Landroid/app/Notification;-><init>()V

    .line 1805
    .local v14, status:Landroid/app/Notification;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1806
    const-string v16, "Music"

    const/16 v17, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1807
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/MediaPlaybackService;->mCardId:I

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "plugin"

    const-string v18, ""

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1809
    .local v7, lastPluginClass:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    .line 1810
    .local v15, storageStatus:Ljava/lang/String;
    const-string v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "mounted_ro"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    const/16 v16, 0x1

    :goto_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    .line 1813
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1814
    if-eqz v7, :cond_0

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1815
    :cond_0
    new-instance v16, Lcom/htc/music/MusicPluginManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 1820
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 1822
    new-instance v16, Landroid/os/HandlerThread;

    const-string v17, "MediaPlaybackServiceWorker"

    invoke-direct/range {v16 .. v17}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->start()V

    .line 1824
    new-instance v16, Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/os/Looper;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 1826
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 1829
    new-instance v16, Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-object/from16 v16, v0

    const/16 v17, 0xd

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-object/from16 v16, v0

    const/16 v17, 0xf

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1843
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1844
    .local v3, commandFilter:Landroid/content/IntentFilter;
    const-string v16, "com.htc.music.musicservicecommand"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1845
    const-string v16, "com.htc.music.musicservicecommand.togglepause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1846
    const-string v16, "com.htc.music.musicservicecommand.pause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1847
    const-string v16, "com.htc.music.musicservicecommand.next"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1848
    const-string v16, "com.htc.music.musicservicecommand.previous"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1849
    const-string v16, "com.android.music.musicservicecommand.togglepause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1850
    const-string v16, "com.android.music.musicservicecommand.pause"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1851
    const-string v16, "com.android.music.musicservicecommand.next"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1852
    const-string v16, "com.android.music.musicservicecommand.previous"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1854
    const-string v16, "android.media.AUDIO_BECOMING_NOISY"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1855
    const-string v16, "com.android.music.musicservicecommand"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1856
    const-string v16, "com.htc.music.onerror"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1857
    const-string v16, "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/IntentFilter;

    const-string v18, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-direct/range {v17 .. v18}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1870
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1871
    .local v13, shutdownReceiver:Landroid/content/IntentFilter;
    const-string v16, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1872
    const-string v16, "android.intent.action.QUICKBOOT_POWEROFF"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/IntentFilter;

    const-string v18, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-direct/range {v17 .. v18}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1878
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/MediaPlaybackService;->mIsInMirror:Z

    .line 1880
    new-instance v16, Lcom/htc/music/MediaPlaybackService$DockEventListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/MediaPlaybackService$DockEventListener;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 1881
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1882
    .local v5, dockEventReceiver:Landroid/content/IntentFilter;
    const-string v16, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1885
    new-instance v16, Lcom/htc/music/MediaPlaybackService$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService$QueryHandler;-><init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/ContentResolver;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    .line 1889
    const-string v16, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 1890
    .local v11, pm:Landroid/os/PowerManager;
    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 1896
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const-wide/32 v17, 0xea60

    move-object/from16 v0, v16

    move-wide/from16 v1, v17

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1899
    const-wide/16 v16, 0x2710

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->sendMusicCountULogMsg(J)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    .line 1908
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1909
    .local v4, dlArtFilter:Landroid/content/IntentFilter;
    const-string v16, "action_complete_one_download"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1911
    const-string v16, "com.htc.musicenhancer.action_reset_albumart"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1915
    const-string v16, "[MediaPlaybackService]"

    const-string v17, "onCreate finished"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    return-void

    .line 1810
    .end local v3           #commandFilter:Landroid/content/IntentFilter;
    .end local v4           #dlArtFilter:Landroid/content/IntentFilter;
    .end local v5           #dockEventReceiver:Landroid/content/IntentFilter;
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #pm:Landroid/os/PowerManager;
    .end local v13           #shutdownReceiver:Landroid/content/IntentFilter;
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1817
    :cond_3
    new-instance v16, Lcom/htc/music/MusicPluginManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/music/MusicPluginManager;-><init>(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1921
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy Begin]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1930
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1932
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1933
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mA2DPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1934
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHtcTVDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1936
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1937
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1938
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDockEventListener:Landroid/content/BroadcastReceiver;

    .line 1941
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1942
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1943
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1946
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1947
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 1948
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1949
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1950
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    .line 1953
    :cond_3
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1954
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1956
    :cond_4
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNotification:Lcom/htc/wrap/android/app/HtcWrapNotification;

    .line 1957
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_5

    .line 1958
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 1961
    :cond_5
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 1962
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1963
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mAirPlaneReceiver:Landroid/content/BroadcastReceiver;

    .line 1966
    :cond_6
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 1967
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1968
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1971
    :cond_7
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_8

    .line 1972
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1973
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mEnhancerCompleteOneDlListener:Landroid/content/BroadcastReceiver;

    .line 1976
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1978
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V

    .line 1981
    :cond_9
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 1982
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v0}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    .line 1985
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->release()V

    .line 1986
    iput-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    .line 1988
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1989
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1991
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1992
    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 1995
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    if-eqz v0, :cond_a

    .line 1996
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->resetMusicPluginManager()V

    .line 1997
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->stopHandlerThread()V

    .line 2000
    :cond_a
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2001
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "[onDestroy End]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    return-void
.end method

.method public onPluginSelected(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 8145
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8146
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 8168
    :cond_0
    :goto_0
    return-void

    .line 8150
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8151
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 8154
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0

    .line 8157
    :cond_3
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 8158
    const/4 v0, 0x1

    .line 8159
    .local v0, isPowerOff:Z
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, v0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 8160
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/MusicPluginManager;->setLastPluginClass(Ljava/lang/String;)V

    .line 8161
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 8163
    .end local v0           #isPowerOff:Z
    :cond_4
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager;->getExternalPluginCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 8164
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->onPluginSelected(I)V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2900
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2901
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 2903
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2904
    .local v0, action:Ljava/lang/String;
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onRebind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 2909
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    .line 2911
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2913
    if-nez p1, :cond_0

    .line 2914
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2915
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand intent NULL"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    const/4 v11, 0x1

    .line 3043
    :goto_0
    return v11

    .line 2919
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2920
    .local v1, action:Ljava/lang/String;
    const-string v11, "command"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2921
    .local v3, cmd:Ljava/lang/String;
    const-string v11, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2922
    .local v8, mode:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "car"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2923
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->switchToLocal()V

    .line 2927
    :cond_1
    const-string v11, "forcePlay"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2928
    .local v5, forcePlay:Z
    const-string v11, "classname"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2929
    .local v2, className:Ljava/lang/String;
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 2930
    .local v10, tm:Landroid/telephony/TelephonyManager;
    if-nez v10, :cond_2

    .line 2931
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2932
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand TelephonyManager NULL"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    const/4 v11, 0x1

    goto :goto_0

    .line 2935
    :cond_2
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v11

    if-nez v11, :cond_3

    const/4 v7, 0x1

    .line 2936
    .local v7, isPhoneIdle:Z
    :goto_1
    if-nez v7, :cond_4

    .line 2937
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->shutdownServcieDelay()V

    .line 2938
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand call state is not idle"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    const/4 v11, 0x1

    goto :goto_0

    .line 2935
    .end local v7           #isPhoneIdle:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 2942
    .restart local v7       #isPhoneIdle:Z
    :cond_4
    const-string v11, "next"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "com.android.music.musicservicecommand.next"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2943
    :cond_5
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDNEXT"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    if-eqz v5, :cond_6

    .line 2945
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 2947
    :cond_6
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/htc/music/MediaPlaybackService;->next(ZZ)V

    .line 3040
    :cond_7
    :goto_2
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3041
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 3042
    .local v9, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v12, 0xea60

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3043
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2948
    .end local v9           #msg:Landroid/os/Message;
    :cond_8
    const-string v11, "previous"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2949
    :cond_9
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDPREVIOUS"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    if-eqz v5, :cond_a

    .line 2951
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    .line 2953
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/htc/music/MediaPlaybackService;->prev(Z)V

    goto :goto_2

    .line 2954
    :cond_b
    const-string v11, "togglepause"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2955
    :cond_c
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDTOGGLEPAUSE"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    cmp-long v11, v11, v13

    if-ltz v11, :cond_7

    .line 2961
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2962
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 2963
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto :goto_2

    .line 2965
    :cond_d
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v11, :cond_7

    .line 2966
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v11}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v11

    if-nez v11, :cond_e

    .line 2967
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2968
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2970
    :cond_e
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2971
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 2974
    :cond_f
    const-string v11, "pause"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2975
    :cond_10
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 2976
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_2

    .line 2977
    :cond_11
    const-string v11, "play"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 2978
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 2979
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0xe

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 2980
    :cond_12
    const-string v11, "stop"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2981
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 2982
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 2983
    const-wide/16 v11, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    .line 2984
    const-string v11, "com.htc.music.playstatechanged"

    invoke-direct {p0, v11}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2985
    :cond_13
    const-string v11, "ffstart"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 2986
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDFFSTART"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 2988
    const/4 v11, 0x1

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2989
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2990
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x104

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2991
    .end local v9           #msg:Landroid/os/Message;
    :cond_14
    const-string v11, "rwstart"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 2992
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDRWSTART"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2993
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mRepcnt:I

    .line 2994
    const/4 v11, 0x2

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 2995
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2996
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x104

    invoke-virtual {v11, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 2997
    .end local v9           #msg:Landroid/os/Message;
    :cond_15
    const-string v11, "ffstop"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "rwstop"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 2998
    :cond_16
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDFF/RWSTOP"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    const/4 v11, 0x0

    iput v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I

    .line 3001
    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-eqz v11, :cond_7

    .line 3002
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_2

    .line 3005
    :cond_17
    const-string v11, "resume"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 3006
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDRESUME"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    iget-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v11, :cond_7

    .line 3010
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V

    .line 3011
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_2

    .line 3013
    :cond_18
    const-string v11, "bindplugin"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 3014
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand CMDBINDPLUGIN"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3017
    :cond_19
    const-string v11, "play_artist"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    const-string v11, "play_album"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    const-string v11, "play_playlist"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    const-string v11, "play_track"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3021
    :cond_1a
    const-string v11, "id"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 3022
    .local v6, iID:I
    const-string v11, "[MediaPlaybackService]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onStartCommand, cmd = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", iID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    if-eqz v11, :cond_1c

    .line 3024
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 3025
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 3027
    :cond_1b
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 3028
    .restart local v9       #msg:Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3029
    .local v4, data:Landroid/os/Bundle;
    const-string v11, "command"

    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    const-string v11, "id"

    invoke-virtual {v4, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3031
    invoke-virtual {v9, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3032
    iget-object v11, p0, Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    invoke-virtual {v11, v9}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 3035
    .end local v4           #data:Landroid/os/Bundle;
    .end local v9           #msg:Landroid/os/Message;
    :cond_1c
    const-string v11, "[MediaPlaybackService]"

    const-string v12, "onStartCommand, mNonUiHandler = null!"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 3048
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3051
    .local v0, action:Ljava/lang/String;
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_1

    .line 3052
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "incorrect service refer count, try to recover it"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    :cond_0
    :goto_0
    return v5

    .line 3056
    :cond_1
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    .line 3057
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayback is onUnbind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ref count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I

    if-gtz v2, :cond_0

    .line 3064
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    .line 3067
    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    .line 3069
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v2, :cond_3

    .line 3072
    :cond_2
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind isPlaying() || mResumeAfterCall"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3079
    :cond_3
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3080
    :cond_4
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 3081
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3082
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind mPlayListLen > 0"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3087
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 3088
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackService;->stopSelf(I)V

    .line 3090
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "onUnbind finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Z)V
    .locals 17
    .parameter "path"
    .parameter "oneshot"

    .prologue
    .line 3911
    monitor-enter p0

    .line 3912
    if-nez p1, :cond_0

    .line 3913
    :try_start_0
    monitor-exit p0

    .line 4094
    :goto_0
    return-void

    .line 3916
    :cond_0
    const/4 v11, 0x0

    .line 3917
    .local v11, drmFileToPlay:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 3918
    new-instance v2, Lcom/htc/music/NpCategory;

    const/16 v4, 0x15

    invoke-direct {v2, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V

    .line 3919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_1

    .line 3920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 3922
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 3923
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3924
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3925
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3926
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v4, 0x0

    const/4 v7, -0x1

    aput v7, v2, v4

    .line 3935
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3942
    :cond_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/music/MediaPlaybackService;->mId:J

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-gtz v2, :cond_4

    .line 3947
    const-string v2, "content://media/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3948
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3949
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 3950
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3971
    .local v6, selectionArgs:[Ljava/lang/String;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3972
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 3973
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 3974
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3975
    const/4 v9, 0x0

    .line 3997
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/music/MediaPlaybackService;->setAudioMetaData(Landroid/database/Cursor;)V

    .line 3998
    if-eqz v9, :cond_4

    .line 3999
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4006
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_4
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/music/MediaPlaybackService;->mId:J

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-lez v2, :cond_11

    .line 4007
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;

    .line 4008
    .local v10, data:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4009
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 4010
    move-object/from16 p1, v10

    .line 4021
    .end local v10           #data:Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 4022
    if-eqz v11, :cond_13

    .line 4023
    const-string v2, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drmFileToPlay= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_12

    .line 4028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2, v11}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 4030
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z

    .line 4043
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_17

    .line 4044
    const/16 v12, 0xa

    .line 4045
    .local v12, min:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/16 v4, 0xa

    if-ge v2, v4, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_6

    .line 4046
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4049
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-lt v2, v12, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_15

    .line 4050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_7

    .line 4051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x1

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 4062
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-ge v2, v12, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_b

    .line 4064
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-le v2, v12, :cond_8

    .line 4065
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 4068
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-eqz v2, :cond_a

    .line 4073
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v2, :cond_a

    .line 4074
    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->hasValidRights()Z

    move-result v2

    if-nez v2, :cond_16

    .line 4076
    :cond_9
    const v2, 0x7f070096

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    .line 4083
    :cond_a
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    .line 4093
    .end local v12           #min:I
    :cond_b
    :goto_8
    monitor-exit p0

    goto/16 :goto_0

    .end local v11           #drmFileToPlay:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3951
    .restart local v11       #drmFileToPlay:Ljava/lang/String;
    :cond_c
    :try_start_3
    const-string v2, "/sdcard/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3952
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3953
    .restart local v3       #uri:Landroid/net/Uri;
    const-string v5, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    .line 3956
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "/sdcard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 3960
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3962
    .restart local v3       #uri:Landroid/net/Uri;
    :goto_9
    const-string v5, "_data=? AND (is_music>=1 OR is_ringtone>=1)"

    .line 3965
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 3960
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_9

    .line 3977
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_f
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3978
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3979
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 3980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v2, v4

    .line 3981
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3982
    const/4 v8, -0x1

    .line 3983
    .local v8, albumID:I
    if-eqz v9, :cond_10

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_10

    .line 3984
    const-string v2, "album_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3987
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/MediaPlaybackService;->ensureAlbumListCapacity(I)V

    .line 3988
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    .line 3989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    const/4 v4, 0x0

    aput v8, v2, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 4002
    .end local v8           #albumID:I
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 4013
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_11
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4014
    const-string v2, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "open, wasDrmContent, path: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", reset playlist length"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 4016
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4017
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_4

    .line 4032
    :cond_12
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "drm setDataSource fail, because mPlayer = null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4035
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_14

    .line 4036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4038
    :cond_14
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "setDataSource fail, because mPlayer = null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4054
    .restart local v12       #min:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    if-eqz v2, :cond_7

    .line 4055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    const/4 v4, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto/16 :goto_6

    .line 4078
    :cond_16
    const v2, 0x7f070068

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V

    goto/16 :goto_7

    .line 4089
    .end local v12           #min:I
    :cond_17
    if-nez v11, :cond_b

    .line 4090
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_8
.end method

.method public open([II)V
    .locals 2
    .parameter "list"
    .parameter "position"

    .prologue
    .line 3655
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->hasSetMediaChooser:Z

    if-nez v0, :cond_0

    .line 3656
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "has not set mediachooser , so set default = MEDIACHOOSER_TYPE_LOCAL"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3657
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->setMediaChooser(I)V

    .line 3659
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->hasSetMediaChooser:Z

    .line 3661
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    invoke-interface {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService$IMediaChooser;->open([II)V

    .line 3663
    return-void
.end method

.method public openAsync(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 3875
    monitor-enter p0

    .line 3876
    if-nez p1, :cond_0

    .line 3877
    :try_start_0
    monitor-exit p0

    .line 3901
    :goto_0
    return-void

    .line 3891
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getQueueSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 3892
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "QueueSize=0,so cancel setDataSourceAsync"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    monitor-exit p0

    goto :goto_0

    .line 3900
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3896
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 3899
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    .line 3900
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 4134
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    invoke-interface {v0}, Lcom/htc/music/MediaPlaybackService$IMediaChooser;->pause()V

    .line 4135
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 4101
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    invoke-interface {v0}, Lcom/htc/music/MediaPlaybackService$IMediaChooser;->play()V

    .line 4103
    return-void
.end method

.method public playAlbum(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 5387
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5388
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->getQueueSize()I

    move-result v0

    .line 5389
    .local v0, len:I
    if-eqz v0, :cond_0

    if-lt p1, v0, :cond_1

    .line 5390
    :cond_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "playAlbum, Plugin mode, Something bad happened"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    .line 5449
    .end local v0           #len:I
    .end local p1
    :goto_0
    return p1

    .line 5394
    .restart local v0       #len:I
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    goto :goto_0

    .line 5400
    .end local v0           #len:I
    :cond_2
    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    if-lt p1, v3, :cond_4

    .line 5401
    :cond_3
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Something bad happened"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    .line 5402
    goto :goto_0

    .line 5404
    :cond_4
    monitor-enter p0

    .line 5406
    :try_start_0
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 5408
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5413
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 5418
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_5

    .line 5419
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 5420
    :cond_5
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 5421
    monitor-exit p0

    move p1, v2

    goto :goto_0

    .line 5437
    :cond_6
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5441
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 5445
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_7

    .line 5446
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 5447
    :cond_7
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 5449
    monitor-exit p0

    goto :goto_0

    .line 5450
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pluginAlbumArtPathByShuffleUpdated(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 8212
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 8221
    :cond_0
    :goto_0
    return-void

    .line 8214
    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 8215
    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 8217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathshuffleupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8218
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8219
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8220
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginAlbumArtPathUpdated(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 8200
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 8209
    :cond_0
    :goto_0
    return-void

    .line 8202
    :cond_1
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 8203
    const-string v1, "com.htc.music.changeart"

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 8205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.artpathupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8206
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8207
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8208
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "action"
    .parameter "extra"

    .prologue
    const/4 v4, 0x2

    .line 8171
    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z

    if-nez v3, :cond_3

    .line 8172
    const-string v3, "com.htc.music.playstatechanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.htc.music.playbackcomplete"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.htc.music.metachanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8176
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8178
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8181
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->getPluginUpdateNotification()Landroid/app/Notification;

    move-result-object v2

    .line 8182
    .local v2, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 8183
    .local v1, msg:Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8184
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8188
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #notification:Landroid/app/Notification;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 8189
    .restart local v1       #msg:Landroid/os/Message;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8190
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pluginNotifyChange: extra "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8192
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "extrastate"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8193
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8195
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 8197
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public pluginNowplayingQueueUpdated([Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 8224
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, p2, :cond_1

    .line 8231
    :cond_0
    :goto_0
    return-void

    .line 8226
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.nowplayingqueueupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8227
    .local v0, i:Landroid/content/Intent;
    const-string v1, "start"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8228
    const-string v1, "end"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8229
    const-string v1, "values"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8230
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V
    .locals 2
    .parameter "position"
    .parameter "values"

    .prologue
    .line 8234
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    .line 8240
    :cond_0
    :goto_0
    return-void

    .line 8236
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.trackdetailsupdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8237
    .local v0, i:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8238
    const-string v1, "values"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8239
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 5470
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5471
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->position()J

    move-result-wide v0

    .line 5473
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 4178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackService;->prev(Z)V

    .line 4179
    return-void
.end method

.method public prev(Z)V
    .locals 1
    .parameter "playAnim"

    .prologue
    .line 4182
    monitor-enter p0

    .line 4183
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4184
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService;->pluginPrev(Z)V

    .line 4188
    :goto_0
    monitor-exit p0

    .line 4189
    return-void

    .line 4186
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->prev(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$7300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    goto :goto_0

    .line 4188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prevAlbum()V
    .locals 0

    .prologue
    .line 4380
    return-void
.end method

.method printATSPauseMusictoStopLog()V
    .locals 5

    .prologue
    .line 8827
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_1

    .line 8847
    :cond_0
    :goto_0
    return-void

    .line 8831
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8832
    const-string v1, "stop_"

    .line 8833
    .local v1, playingType:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 8835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8840
    :goto_1
    const-string v2, "MASD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ATS][com.htc.music]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][successful]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8841
    const-string v2, "MASD"

    const-string v3, "[ATS][com.htc.music][stop_play_music][successful]"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8844
    .end local v1           #playingType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 8845
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Exception in printATSPauseMusictoStopLog. no influence ignore"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8838
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #playingType:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "printATSPauseMusictoStopLog mCursor is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method printATSPlayMusicLog()V
    .locals 6

    .prologue
    .line 8803
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_1

    .line 8824
    :cond_0
    :goto_0
    return-void

    .line 8807
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8808
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 8809
    .local v0, audioId:I
    const-string v2, "play_"

    .line 8810
    .local v2, playingType:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 8812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8817
    :goto_1
    const-string v3, "MASD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ATS][com.htc.music]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][successful]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8818
    const-string v3, "MASD"

    const-string v4, "[ATS][com.htc.music][play_music][successful]"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8821
    .end local v0           #audioId:I
    .end local v2           #playingType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 8822
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "Exception in printATSPlayMusicLog. no influence ignore"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8815
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #audioId:I
    .restart local v2       #playingType:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "printATSPlayMusicLog mMimeType is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method printATSStopMusicByPhoneCallLog()V
    .locals 5

    .prologue
    .line 8850
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_1

    .line 8866
    :cond_0
    :goto_0
    return-void

    .line 8854
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8855
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 8856
    .local v2, tm:Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 8857
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 8858
    .local v1, isPhoneIdle:Z
    :goto_1
    if-nez v1, :cond_0

    .line 8859
    const-string v3, "MASD"

    const-string v4, "[ATS][com.htc.music][play_music][stop]"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8863
    .end local v1           #isPhoneIdle:Z
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 8864
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "ATS Log exception, no influence ignore."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8857
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 3152
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 3153
    new-instance v1, Lcom/htc/music/MediaPlaybackService$10;

    invoke-direct {v1, p0}, Lcom/htc/music/MediaPlaybackService$10;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 3201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3202
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3203
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3204
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3205
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3206
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3207
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3209
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public reloadQueue()V
    .locals 2

    .prologue
    .line 2273
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    if-eqz v0, :cond_0

    .line 2275
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue: mIsReloadingQueue = true"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    monitor-enter p0

    .line 2281
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2289
    :goto_0
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "reloadQueue -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    return-void

    .line 2281
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2283
    :cond_0
    monitor-enter p0

    .line 2284
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 2285
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->reloadQueueImpl()V

    .line 2286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsReloadingQueue:Z

    .line 2287
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public removeQueueTracks([I)I
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 4753
    const/4 v1, 0x0

    .line 4754
    .local v1, numremoved:I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 4756
    monitor-enter p0

    .line 4757
    :try_start_0
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4758
    aget v2, p1, v0

    aget v3, p1, v0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 4757
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4760
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4762
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_1

    .line 4763
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 4764
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumId:I

    .line 4766
    :cond_1
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeQueueTracks numremoved = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    if-lez v1, :cond_3

    .line 4768
    iget-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    if-nez v2, :cond_2

    .line 4769
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "removeQueueTracks mQueueModified = true"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4770
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4772
    :cond_2
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4774
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mRefreshPlayList:Z

    .line 4777
    :cond_3
    return v1

    .line 4760
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTrack(I)I
    .locals 5
    .parameter "id"

    .prologue
    .line 4728
    const/4 v1, 0x0

    .line 4729
    .local v1, numremoved:I
    monitor-enter p0

    .line 4730
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 4731
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 4732
    invoke-direct {p0, v0, v0}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 4733
    add-int/lit8 v0, v0, -0x1

    .line 4730
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4736
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4738
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTracks id numremoved = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4739
    if-lez v1, :cond_2

    .line 4740
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4741
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4743
    :cond_2
    return v1

    .line 4736
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTracks(II)I
    .locals 2
    .parameter "first"
    .parameter "last"

    .prologue
    .line 4619
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 4620
    .local v0, numremoved:I
    if-lez v0, :cond_0

    .line 4621
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4622
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4624
    :cond_0
    return v0
.end method

.method public removeTracksReduceBroadcast([I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 4787
    const/4 v3, 0x0

    .line 4788
    .local v3, numRemoved:I
    const/4 v0, 0x0

    .line 4789
    .local v0, countToBroadcast:I
    array-length v4, p1

    .line 4790
    .local v4, removeTrackCount:I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 4792
    monitor-enter p0

    .line 4793
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_5

    .line 4795
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    :try_start_0
    iget v5, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v2, v5, :cond_1

    .line 4796
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v5, v5, v2

    aget v6, p1, v1

    if-ne v5, v6, :cond_0

    .line 4797
    invoke-direct {p0, v2, v2}, Lcom/htc/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 4795
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4800
    :cond_1
    if-lez v3, :cond_2

    .line 4801
    add-int/lit8 v0, v0, 0x1

    .line 4803
    :cond_2
    const/16 v5, 0x32

    if-ne v0, v5, :cond_3

    .line 4804
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "removeTracksReduceBroadcast 50"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4805
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4806
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4807
    const/4 v0, 0x0

    .line 4809
    :cond_3
    add-int/lit8 v5, v4, -0x1

    if-ne v1, v5, :cond_4

    .line 4810
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "removeTracksReduceBroadcast removeTrackCount - "

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4811
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4812
    const-string v5, "com.htc.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4793
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4815
    .end local v2           #j:I
    :cond_5
    monitor-exit p0

    .line 4816
    return v3

    .line 4815
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public seek(J)J
    .locals 4
    .parameter "pos"

    .prologue
    .line 5484
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V

    .line 5486
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5488
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->duration()J

    move-result-wide v0

    .local v0, mDuration:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 5489
    move-wide p1, v0

    .line 5491
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/music/MusicPluginManager;->seek(J)J

    move-result-wide v2

    .line 5494
    .end local v0           #mDuration:J
    :goto_0
    return-wide v2

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v2, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setAlbumQueue([I)V
    .locals 1
    .parameter "list"

    .prologue
    .line 5022
    monitor-enter p0

    .line 5023
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/htc/music/MediaPlaybackService;->addToAlbumList([II)V

    .line 5025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z

    .line 5026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mIsSystemReady:Z

    .line 5027
    monitor-exit p0

    .line 5028
    return-void

    .line 5027
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMediaChooser(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 9723
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mLockForMediachooser:Ljava/lang/Object;

    monitor-enter v1

    .line 9724
    :try_start_0
    const-string v0, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in setMediaChooser  type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->hasSetMediaChooser:Z

    .line 9726
    if-ne p1, v4, :cond_1

    .line 9727
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->localmediachooser:Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    .line 9728
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalImplPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    .line 9733
    :cond_0
    :goto_0
    monitor-exit v1

    .line 9734
    return-void

    .line 9729
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 9730
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->onlinemediachooser:Lcom/htc/music/MediaPlaybackService$OnlineMediaChooser;

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mediachooser:Lcom/htc/music/MediaPlaybackService$IMediaChooser;

    .line 9731
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mOnlineImplPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    goto :goto_0

    .line 9733
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPlaylist([IZ)V
    .locals 9
    .parameter "list"
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    .line 3703
    monitor-enter p0

    .line 3704
    :try_start_0
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 3705
    const/4 v6, 0x1

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 3707
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    .line 3708
    .local v4, oldId:I
    array-length v2, p1

    .line 3710
    .local v2, listlength:I
    const/4 v3, 0x1

    .line 3714
    .local v3, newlist:Z
    if-nez p2, :cond_1

    .line 3715
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v6, v2, :cond_1

    .line 3716
    const/4 v3, 0x0

    .line 3717
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3718
    aget v6, p1, v0

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v7, v7, v0

    if-eq v6, v7, :cond_8

    .line 3719
    const/4 v3, 0x1

    .line 3725
    .end local v0           #i:I
    :cond_1
    if-eqz v3, :cond_2

    .line 3726
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v6, v8, :cond_9

    .line 3728
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-direct {p0, v2, v6}, Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V

    .line 3730
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iget v7, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I

    invoke-direct {p0, v6, v7}, Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V

    .line 3733
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 3741
    :goto_1
    const/4 v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V

    .line 3742
    const-string v6, "com.htc.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3745
    :cond_2
    const/4 v5, 0x0

    .line 3746
    .local v5, playPosFound:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v6, :cond_3

    .line 3747
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    aget v6, v6, v0

    if-ne v6, v4, :cond_a

    .line 3748
    iput v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3749
    const/4 v5, 0x1

    .line 3753
    :cond_3
    if-nez v5, :cond_5

    .line 3754
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "setPlaylist: cannot find the same audio id. Some thing must be wrong."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3755
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3756
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 3757
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    .line 3758
    .local v1, isPlaying:Z
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 3759
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3760
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 3762
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mQuietMode:Z

    .line 3767
    .end local v1           #isPlaying:Z
    :cond_5
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 3769
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 3771
    if-nez v5, :cond_6

    .line 3772
    const-string v6, "com.htc.music.metachanged"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3774
    :cond_6
    iget-boolean v6, p0, Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z

    if-eqz v6, :cond_7

    .line 3775
    const-string v6, "com.htc.music.refresh"

    invoke-direct {p0, v6}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3777
    :cond_7
    monitor-exit p0

    .line 3778
    return-void

    .line 3717
    .end local v5           #playPosFound:Z
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3737
    .end local v0           #i:I
    :cond_9
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v6, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    goto :goto_1

    .line 3777
    .end local v2           #listlength:I
    .end local v3           #newlist:Z
    .end local v4           #oldId:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3746
    .restart local v0       #i:I
    .restart local v2       #listlength:I
    .restart local v3       #newlist:Z
    .restart local v4       #oldId:I
    .restart local v5       #playPosFound:Z
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 5180
    monitor-enter p0

    .line 5181
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5182
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setQueuePosition(I)V

    .line 5191
    :goto_0
    monitor-exit p0

    .line 5192
    return-void

    .line 5184
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 5185
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 5186
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 5187
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v0, :cond_1

    .line 5188
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 5189
    :cond_1
    const-string v0, "com.htc.music.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 5191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 4885
    monitor-enter p0

    .line 4886
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4887
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setRepeatMode(I)V

    .line 4893
    :goto_0
    const-string v0, "com.broadcom.bluetooth.avrcp.notify"

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4894
    monitor-exit p0

    .line 4895
    return-void

    .line 4889
    :cond_0
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I

    .line 4890
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_0

    .line 4894
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 4
    .parameter "shufflemode"

    .prologue
    const/4 v3, 0x1

    .line 4820
    monitor-enter p0

    .line 4821
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4822
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v1, p1}, Lcom/htc/music/MusicPluginManager;->setShuffleMode(I)V

    .line 4870
    :cond_0
    :goto_0
    const-string v1, "com.broadcom.bluetooth.avrcp.notify"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4871
    monitor-exit p0

    .line 4872
    :goto_1
    return-void

    .line 4824
    :cond_1
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, p1, :cond_3

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_3

    .line 4826
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->isOnlineMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4827
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4830
    :cond_2
    monitor-exit p0

    goto :goto_1

    .line 4871
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4832
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 4833
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 4834
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4835
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode, shufflemode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", makeAutoShuffleList, reset playlist lenght."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4836
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    .line 4837
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 4838
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4839
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->openCurrent()V

    .line 4840
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_4

    .line 4841
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 4842
    :cond_4
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4843
    monitor-exit p0

    goto :goto_1

    .line 4846
    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    .line 4849
    :cond_6
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v3, :cond_7

    .line 4851
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    new-array v0, v1, [I

    .line 4852
    .local v0, nonShufflePlayList:[I
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iget v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/MusicUtils;->arrayDeepClone([I[II)V

    .line 4853
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    goto :goto_0

    .line 4854
    .end local v0           #nonShufflePlayList:[I
    :cond_7
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I

    if-nez v1, :cond_0

    .line 4855
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    .line 4856
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I

    .line 4859
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4861
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 4862
    const-string v1, "com.htc.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 4863
    iget v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    if-gez v1, :cond_0

    .line 4864
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 4865
    const-string v1, "com.htc.music.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setVolume(I)V
    .locals 1
    .parameter "nVol"

    .prologue
    .line 4908
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1}, Lcom/htc/music/MusicPluginManager;->setVolume(I)V

    .line 4909
    :cond_0
    return-void
.end method

.method public showPluginToast(Ljava/lang/String;I)V
    .locals 4
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 5779
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5780
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5781
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5782
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5783
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5784
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5785
    return-void
.end method

.method shutdownServcieDelay()V
    .locals 4

    .prologue
    .line 5703
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5704
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5705
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5706
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 4926
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4927
    monitor-enter p0

    .line 4928
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService;->mAnimation:Z

    .line 4929
    monitor-exit p0

    .line 4930
    return-void

    .line 4929
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 4125
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "!!!! @@@@ stop()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/MediaPlaybackService;->stop(Z)V

    .line 4127
    return-void
.end method

.method public syncNowPlayingQueue([I)V
    .locals 5
    .parameter "list"

    .prologue
    .line 3822
    monitor-enter p0

    .line 3823
    :try_start_0
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncNowPlayingQueue :: mPlayPos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPlayListLen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3825
    if-nez p1, :cond_0

    .line 3826
    monitor-exit p0

    .line 3841
    :goto_0
    return-void

    .line 3828
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    aget v1, v2, v3

    .line 3829
    .local v1, tmp:I
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tmp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3831
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 3833
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 3834
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mNonShufflePlayList:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 3833
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3836
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayList:[I

    iget v3, p0, Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v2, v1, v3}, Lcom/htc/music/MediaPlaybackService;->Search([III)I

    move-result v2

    iput v2, p0, Lcom/htc/music/MediaPlaybackService;->mPlayPos:I

    .line 3838
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z

    .line 3839
    const-string v2, "com.htc.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3840
    monitor-exit p0

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #tmp:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method wasDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 5627
    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 1
    .parameter "newStatus"

    .prologue
    .line 8637
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8657
    :cond_0
    return-void
.end method
