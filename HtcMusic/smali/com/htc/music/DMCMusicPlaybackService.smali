.class public Lcom/htc/music/DMCMusicPlaybackService;
.super Landroid/app/Service;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;,
        Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;,
        Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;,
        Lcom/htc/music/DMCMusicPlaybackService$DmcUiPlaybackServiceStub;,
        Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;,
        Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.htc.music.DMCMusicPlaybackService"

.field public static final CMDDMC_CURRENTINDEX:Ljava/lang/String; = "com.htc.music.dmc_currentindex"

.field public static final CMDDMC_DMR:Ljava/lang/String; = "com.htc.music.dmc_dmr"

.field public static final CMDDMC_PLAYLIST:Ljava/lang/String; = "com.htc.music.dmc_playlist"

.field public static final CMDDMC_SETDMR:Ljava/lang/String; = "com.htc.music.dmc_setdmr"

.field public static final CMDDMC_SETSRC:Ljava/lang/String; = "com.htc.music.dmc_setsrc"

.field public static final CMDFORCEPLAY:Ljava/lang/String; = "forcePlay"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDREFRESH_PLAYLIST:Ljava/lang/String; = "com.htc.music.refreshplaylist"

.field public static final DLNA_COOKIE_MUSIC:I = 0x1

.field private static final DLNA_ERROR_HANDLE:I = 0x4

.field public static final DLNA_SOURCE_LOCAL:I = 0x0

.field public static final DLNA_SOURCE_REMOTE:I = 0x1

.field public static final DMCSERVICE_DLNA_CONNECTED:Ljava/lang/String; = "com.htc.music.dmcservice.dlna_connected"

.field public static final DMCSERVICE_RELEASED:Ljava/lang/String; = "com.htc.music.dmcservice.released"

.field public static final DMCSERVICE_REPEAT_CHANGED:Ljava/lang/String; = "com.htc.music.dmcservice.repeat_changed"

.field public static final DMCSERVICE_SET_PLAYBACK_COTNROL_ENABLED:Ljava/lang/String; = "com.htc.music.dmcservice.set_playback_control_enabled"

.field public static final DMCSERVICE_SHUFFLE_CHANGED:Ljava/lang/String; = "com.htc.music.dmcservice.shuffle_changed"

.field public static final ERROR_CANNOT_PAUSE:I = -0x2712

.field public static final ERROR_CANNOT_SEEK:I = -0x2713

.field public static final ERROR_DEFAULT:I = -0x2710

.field public static final ERROR_DMR_DISCONNECT:I = -0x2715

.field public static final ERROR_DMR_RESPONSE_TIMEOUT:I = -0x2717

.field public static final ERROR_DMS_DISCONNECT:I = -0x2716

.field public static final ERROR_NOT_SURRPOT_FORMAT:I = -0x2714

.field public static final ERROR_UNABLE_TO_PALY:I = -0x2711

.field public static final ERROR_UNKNOWN_ERROR:I = -0x2718

.field public static final EXTRA_IS_ENABLED:Ljava/lang/String; = "is_enabled"

.field private static final IDLE_DELAY:I = 0xea60

.field private static final MEDIA_ERROR_BASE:I = -0x2710

.field private static final NOTIFY_UPPER:I = 0x5

.field public static final PLAYBACKSERVICE_STATUS:I = 0x2

.field private static final PLUGIN_META_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.metachanged"

.field private static final PLUGIN_PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.plugin.playbackcomplete"

.field private static final PLUGIN_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.statechanged"

.field private static final PLUGIN_PLAYSTATE_CHANGED_BUFFERING:Ljava/lang/String; = "com.htc.music.plugin.statechanged.buffering"

.field private static final PLUGIN_PLAYSTATE_CHANGED_WAITING:Ljava/lang/String; = "com.htc.music.plugin.statechanged.waiting"

.field private static final PLUGIN_QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.queuechanged"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[DMCMusicPlaybackService]"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field private final CV_CONTENT:Ljava/lang/String;

.field private final CV_POSITION:Ljava/lang/String;

.field private final CV_SERVER:Ljava/lang/String;

.field private final CV_SHUFFLE_MODE:Ljava/lang/String;

.field private final DLNA_CALLER_MUSIC:I

.field private final DMC_SERVICE_PREFERENCES:Ljava/lang/String;

.field private final DMC_SOURCE:Ljava/lang/String;

.field private final MAX_PLAYABCK_CONTROL_TIMEOUT:I

.field private final MAX_TRANSITIONING_COUNT:I

.field private final MSG_CLEAR_ALBUMART_REQ_QUEUE:I

.field private final MSG_GET_NOW_PLAYING_QUEUE:I

.field private final MSG_HANDLE_ALBUMART:I

.field private final MSG_NEXT:I

.field private final MSG_PLAYER_ERROR_HANDLE:I

.field private final MSG_PREV:I

.field private final MSG_REQUEST_ALBUMART:I

.field private final MSG_SET_DATA_SOURCE:I

.field private final STATE_NONE:I

.field private final STATE_PAUSED:I

.field private final STATE_PAUSED_TRANSITIONING:I

.field private final STATE_PLAYING:I

.field private final STATE_PLAYING_TRANSITIONING:I

.field private final UI_PLAYBACK_CONTROL_TIMEOUT:I

.field private final UI_REQUEST_NEXT:I

.field private final UI_REQUEST_PAUSE:I

.field private final UI_REQUEST_PLAY:I

.field private final UI_REQUEST_PREV:I

.field private final hexdigits:[C

.field isPlaybackDisabled:Z

.field private mAlbumArtNameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSize:I

.field private mArtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;

.field private mContainerID:Ljava/lang/String;

.field private mContentID:Ljava/lang/String;

.field private mContentPath:Ljava/lang/String;

.field private mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

.field private mControllerListener:Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;

.field private mCurPLDirection:I

.field private mCurPLEndIdx:J

.field private mCurPLStartIdx:J

.field mCurrentDMRID:Ljava/lang/String;

.field mCurrentDMRName:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCols:[Ljava/lang/String;

.field private mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

.field private mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDLNAServiceStatusListener:Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDirection:I

.field private mEndIdx:J

.field mForcePlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsAlbumArtGetting:Z

.field private mIsDLNAManagerConnected:Z

.field private mIsPlayPressed:Z

.field private mIsServiceConnected:Z

.field private mIsSupposedToBePlaying:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMediaPlayerHandler:Landroid/os/Handler;

.field private volatile mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

.field private volatile mNonUILooper:Landroid/os/Looper;

.field private mNotify:Lcom/htc/music/IPluginIPCNotify;

.field private mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPlayList:[I

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayState:I

.field private mPlaybackHandler:Landroid/os/Handler;

.field private mQueryContentID:Ljava/lang/String;

.field private mQueryPosition:I

.field private mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererStatusListener:Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;

.field private mRepeatMode:I

.field private mServerID:Ljava/lang/String;

.field private mServiceInUse:I

.field private mServiceStartId:I

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mShuffleMode:I

.field private final mSortOrder:Ljava/lang/String;

.field private mSquareAlbum:Landroid/graphics/Bitmap;

.field private mStartIdx:J

.field private mTransCanvas:Landroid/graphics/Canvas;

.field private mTransitionCount:I

.field private final mUiBinder:Landroid/os/IBinder;

.field private mUriPath:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mlCurPosition:J

.field mnSource:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const-wide/16 v5, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->DLNA_CALLER_MUSIC:I

    .line 106
    const-string v0, "server"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->CV_SERVER:Ljava/lang/String;

    .line 107
    const-string v0, "content"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->CV_CONTENT:Ljava/lang/String;

    .line 108
    const-string v0, "position"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->CV_POSITION:Ljava/lang/String;

    .line 109
    const-string v0, "shuffle"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->CV_SHUFFLE_MODE:Ljava/lang/String;

    .line 111
    const-string v0, "index_id COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSortOrder:Ljava/lang/String;

    .line 140
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAServiceStatusListener:Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;

    .line 141
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerListener:Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;

    .line 142
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 144
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 145
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 146
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$DmcUiPlaybackServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$DmcUiPlaybackServiceStub;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mUiBinder:Landroid/os/IBinder;

    .line 148
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    .line 150
    iput-wide v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLStartIdx:J

    .line 151
    iput-wide v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLEndIdx:J

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLDirection:I

    .line 154
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    .line 165
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z

    .line 167
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListLen:I

    .line 168
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    .line 169
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 171
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    .line 172
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceStartId:I

    .line 176
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    .line 178
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 179
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsPlayPressed:Z

    .line 185
    new-instance v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAContentItemDetails;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 187
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;-><init>(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/music/DMCMusicPlaybackService$1;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRendererStatusListener:Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->STATE_NONE:I

    .line 191
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->STATE_PLAYING:I

    .line 192
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->STATE_PLAYING_TRANSITIONING:I

    .line 193
    iput v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->STATE_PAUSED:I

    .line 194
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->STATE_PAUSED_TRANSITIONING:I

    .line 196
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MAX_TRANSITIONING_COUNT:I

    .line 197
    const v0, 0x88b8

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MAX_PLAYABCK_CONTROL_TIMEOUT:I

    .line 199
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    .line 202
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->UI_REQUEST_PLAY:I

    .line 203
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->UI_REQUEST_PAUSE:I

    .line 204
    iput v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->UI_REQUEST_NEXT:I

    .line 205
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->UI_REQUEST_PREV:I

    .line 207
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    .line 208
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->isPlaybackDisabled:Z

    .line 212
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->UI_PLAYBACK_CONTROL_TIMEOUT:I

    .line 214
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z

    .line 215
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    .line 217
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 218
    const-string v0, "dmc_service"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->DMC_SERVICE_PREFERENCES:Ljava/lang/String;

    .line 219
    const-string v0, "dmc_source"

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->DMC_SOURCE:Ljava/lang/String;

    .line 222
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_PREV:I

    .line 223
    iput v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_NEXT:I

    .line 224
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_SET_DATA_SOURCE:I

    .line 225
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_REQUEST_ALBUMART:I

    .line 226
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_HANDLE_ALBUMART:I

    .line 227
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_CLEAR_ALBUMART_REQ_QUEUE:I

    .line 228
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_GET_NOW_PLAYING_QUEUE:I

    .line 229
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->MSG_PLAYER_ERROR_HANDLE:I

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    .line 527
    iput-wide v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mStartIdx:J

    .line 528
    iput-wide v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mEndIdx:J

    .line 529
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDirection:I

    .line 530
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 531
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 534
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 535
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    .line 537
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mUriPath:Ljava/lang/String;

    .line 540
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueryPosition:I

    .line 541
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    .line 544
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "content_id"

    aput-object v1, v0, v2

    const-string v1, "content_name"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "container"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "uri_path"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "artist_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "albumart_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "serve_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "index_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 552
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$1;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    .line 716
    const/16 v0, 0x100

    iput v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    .line 717
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    .line 719
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    .line 720
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    .line 721
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 800
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->hexdigits:[C

    .line 930
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    .line 931
    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRName:Ljava/lang/String;

    .line 932
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mForcePlay:Z

    .line 933
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    .line 1047
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$2;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1063
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$3;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    .line 1152
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsServiceConnected:Z

    .line 1153
    iput-wide v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mlCurPosition:J

    .line 2486
    new-instance v0, Lcom/htc/music/DMCMusicPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/htc/music/DMCMusicPlaybackService$4;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    return-void

    .line 800
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

.method static synthetic access$100(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->initErrorRetryHandle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->ensurePathExists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->eraseAllFilesIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/DMCMusicPlaybackService;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/music/DMCMusicPlaybackService;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/DMCMusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumId()I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/htc/music/DMCMusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsAlbumArtGetting:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/DMCMusicPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->close(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p9}, Lcom/htc/music/DMCMusicPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/htc/music/DMCMusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->setRenderer()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->startToPlay()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/DMCMusicPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$3102(Lcom/htc/music/DMCMusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$3202(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/music/DMCMusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/music/DMCMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$3502(Lcom/htc/music/DMCMusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    return p1
.end method

.method static synthetic access$3600(Lcom/htc/music/DMCMusicPlaybackService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->handleError(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/DMCMusicPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private checkFileExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 636
    const/4 v1, 0x0

    .line 638
    .local v1, retval:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    .local v0, albumArtFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    const/4 v1, 0x1

    .line 644
    :cond_0
    return v1
.end method

.method private close(Z)V
    .locals 7
    .parameter "isPowerOff"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 994
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Goto Music, passing ContentID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 999
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v4, "powerOffDMR()"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    if-eqz p1, :cond_0

    .line 1001
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->powerOff()V

    .line 1002
    :cond_0
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDLNAManager render = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1008
    .local v1, rtt:Landroid/content/Intent;
    const-string v2, "com.htc.music.dmcservice.released"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1014
    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1017
    const-string v2, "Server"

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1018
    const-string v2, "container"

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1019
    const-string v2, "content"

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    const-string v2, "startIdx"

    iget-wide v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLStartIdx:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1022
    const-string v2, "endIdx"

    iget-wide v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLEndIdx:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1023
    const-string v2, "direction"

    iget v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLDirection:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1024
    const-string v2, "filepath"

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    :goto_1
    const-string v2, "Render"

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    const-string v2, "SaveRender"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1043
    const-string v2, "forcePlay"

    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1044
    invoke-direct {p0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->notifyChange(Landroid/content/Intent;)V

    .line 1045
    return-void

    .line 1004
    .end local v1           #rtt:Landroid/content/Intent;
    :cond_1
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v4, "renderer is null donot close"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    .restart local v1       #rtt:Landroid/content/Intent;
    :cond_2
    const-string v4, "Server"

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const-string v4, "container"

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    const/4 v0, 0x0

    .line 1032
    .local v0, playPos:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v2, :cond_3

    .line 1033
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getQueuePosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1034
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :goto_2
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1036
    :cond_3
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v4, "mControllerInfo is null"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private disablePlaybakControl()V
    .locals 5

    .prologue
    const/16 v4, 0x2710

    .line 2463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2464
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2465
    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2466
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->isPlaybackDisabled:Z

    .line 2467
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 2468
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2469
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2470
    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x88b8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2473
    :cond_1
    return-void
.end method

.method private enablePlaybakControl()V
    .locals 4

    .prologue
    const/16 v3, 0x2710

    .line 2476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2477
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2478
    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2479
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->isPlaybackDisabled:Z

    .line 2480
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2481
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2482
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2484
    :cond_0
    return-void
.end method

.method private ensurePathExists(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 662
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 667
    :cond_0
    return-void
.end method

.method private eraseAllFilesIfNeeded(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 671
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 673
    .local v1, fileArray:[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_0

    .line 674
    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 675
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 676
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 675
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private getAlbumArtPath(I)Ljava/lang/String;
    .locals 17
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1580
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-nez v13, :cond_3

    .line 1583
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-nez v13, :cond_1

    .line 1584
    const-string v13, "[DMCMusicPlaybackService]"

    const-string v14, "mControllerInfo is null"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    const/4 v11, 0x0

    .line 1697
    :cond_0
    :goto_0
    return-object v11

    .line 1587
    :cond_1
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...LOCAL, current=> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v15, v15, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...path => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v15, v15, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v13, v13, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1590
    const/4 v11, 0x0

    goto :goto_0

    .line 1592
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v11, v13, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    goto :goto_0

    .line 1593
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    .line 1594
    const/4 v11, 0x0

    .line 1595
    .local v11, retval:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v13}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getContentID()Ljava/lang/String;

    move-result-object v1

    .line 1597
    .local v1, contentID:Ljava/lang/String;
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...REMOTE, current=> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_5

    .line 1601
    :cond_4
    const-string v13, "[DMCMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()...REMOTE, contentID is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1607
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1608
    .local v12, status:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1609
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...SD card is not ready...status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1618
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v13, :cond_8

    .line 1619
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1620
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMCMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1632
    :cond_7
    :goto_1
    if-nez v11, :cond_0

    .line 1638
    :cond_8
    const/4 v6, 0x0

    .line 1639
    .local v6, duplicatedRequest:Z
    const/4 v2, 0x0

    .line 1640
    .local v2, curCV:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 1641
    .local v3, curCV_contentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1643
    .local v4, curCV_shuffleMode:Ljava/lang/Integer;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_9

    .line 1644
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curCV:Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 1645
    .restart local v2       #curCV:Landroid/content/ContentValues;
    if-nez v2, :cond_b

    .line 1646
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    :cond_9
    :goto_3
    const/4 v13, 0x1

    if-ne v6, v13, :cond_11

    .line 1676
    const-string v13, "[DMCMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()..Duplated Album art request. Ignore this request and break it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1623
    .end local v2           #curCV:Landroid/content/ContentValues;
    .end local v3           #curCV_contentId:Ljava/lang/String;
    .end local v4           #curCV_shuffleMode:Ljava/lang/Integer;
    .end local v6           #duplicatedRequest:Z
    .end local v9           #i:I
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1624
    .local v7, fileName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMCMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1626
    .local v8, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/DMCMusicPlaybackService;->checkFileExist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    move-object v11, v8

    goto :goto_1

    .line 1650
    .end local v7           #fileName:Ljava/lang/String;
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v2       #curCV:Landroid/content/ContentValues;
    .restart local v3       #curCV_contentId:Ljava/lang/String;
    .restart local v4       #curCV_shuffleMode:Ljava/lang/Integer;
    .restart local v6       #duplicatedRequest:Z
    .restart local v9       #i:I
    :cond_b
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 1651
    :cond_c
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...There is no content id or shuffle information in curCV when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1658
    :cond_d
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1659
    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1661
    if-eqz v3, :cond_e

    if-nez v4, :cond_f

    .line 1662
    :cond_e
    const-string v13, "[DMCMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...curCV_contentId or curCV_shuffleMode is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1668
    :cond_f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_10

    .line 1670
    const/4 v6, 0x1

    .line 1671
    goto/16 :goto_3

    .line 1643
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1683
    :cond_11
    if-nez v11, :cond_0

    .line 1685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1686
    .local v10, msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1687
    .local v5, data:Landroid/os/Bundle;
    const-string v13, "shuffle"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1688
    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1689
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v13, "content"

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v10, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    invoke-virtual {v13, v10}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1697
    .end local v1           #contentID:Ljava/lang/String;
    .end local v2           #curCV:Landroid/content/ContentValues;
    .end local v3           #curCV_contentId:Ljava/lang/String;
    .end local v4           #curCV_shuffleMode:Ljava/lang/Integer;
    .end local v5           #data:Landroid/os/Bundle;
    .end local v6           #duplicatedRequest:Z
    .end local v9           #i:I
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #retval:Ljava/lang/String;
    .end local v12           #status:Ljava/lang/String;
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private getAlbumId()I
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 2031
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-ne v0, v5, :cond_1

    .line 2065
    :cond_0
    :goto_0
    return v6

    .line 2034
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2036
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayPos = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v10, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    int-to-long v7, v0

    .line 2038
    .local v7, audioId:J
    new-array v2, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 2041
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2045
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2046
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2047
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2049
    const-string v0, "album_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2051
    .local v6, albumId:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2052
    const/4 v9, 0x0

    .line 2053
    goto :goto_0

    .line 2055
    .end local v6           #albumId:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2056
    const/4 v9, 0x0

    .line 2057
    goto :goto_0

    .line 2063
    .end local v2           #cols:[Ljava/lang/String;
    .end local v7           #audioId:J
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbumId() mControllerInfo "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbumId() mPlayList "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 596
    const/4 v1, 0x0

    .line 599
    .local v1, cpClient:Landroid/content/ContentProviderClient;
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://dlna/images"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 603
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "$$ albumArtDownloadedNotify: No provider client: cpClient..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x0

    .line 632
    :goto_0
    return-object v0

    .line 608
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 610
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 612
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: afDescriptor => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 629
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 630
    const/4 v1, 0x0

    .line 632
    goto :goto_0

    .line 616
    :cond_1
    :try_start_1
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "getAssetFileDescriptorFromPath: afDescriptor is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 618
    :catch_0
    move-exception v2

    .line 619
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 622
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 624
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getContentIDFromID(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 1874
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDLNAErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDmpAlbumArtDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, retval:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/DMCMusicPlaybackService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 651
    .local v1, vSDcard:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.dmp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    :goto_0
    return-object v0

    .line 654
    :cond_0
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "getDmpAlbumArtDirPath()...vSDcard is null and return path as null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    .line 1128
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1129
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1130
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1132
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1133
    .local v1, status:Landroid/app/Notification;
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/DMCMusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1134
    return-void
.end method

.method private handleError(I)V
    .locals 3
    .parameter "errorId"

    .prologue
    const/4 v1, 0x7

    .line 2502
    sparse-switch p1, :sswitch_data_0

    .line 2541
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    const/16 v0, -0x2718

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2547
    :goto_0
    return-void

    .line 2504
    :sswitch_0
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    goto :goto_0

    .line 2507
    :sswitch_1
    const/16 v0, -0x2713

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    goto :goto_0

    .line 2515
    :sswitch_2
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2516
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    goto :goto_0

    .line 2520
    :sswitch_3
    const/16 v0, -0x2714

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2521
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    goto :goto_0

    .line 2526
    :sswitch_4
    const/16 v0, -0x2715

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2527
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    goto :goto_0

    .line 2531
    :sswitch_5
    const/16 v0, -0x2717

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2532
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    goto :goto_0

    .line 2536
    :sswitch_6
    const/16 v0, -0x2716

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    .line 2537
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    goto :goto_0

    .line 2502
    :sswitch_data_0
    .sparse-switch
        -0x13c -> :sswitch_2
        -0x13a -> :sswitch_0
        -0x134 -> :sswitch_2
        -0x133 -> :sswitch_5
        -0x12f -> :sswitch_2
        -0x12e -> :sswitch_2
        -0x12d -> :sswitch_6
        -0x12c -> :sswitch_4
        -0x1 -> :sswitch_4
        0x2c0 -> :sswitch_3
        0x2c6 -> :sswitch_1
        0x2ca -> :sswitch_3
        0x2cc -> :sswitch_2
    .end sparse-switch
.end method

.method private initErrorRetryHandle()V
    .locals 0

    .prologue
    .line 798
    return-void
.end method

.method private notifyChange(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    return-void
.end method

.method private pluginNotifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 1137
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1138
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1139
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "notify"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1141
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1142
    return-void
.end method

.method private pluginNotifyError(I)V
    .locals 4
    .parameter "nErrId"

    .prologue
    .line 1145
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1146
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1147
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "error_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1148
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1149
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMediaPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1150
    return-void
.end method

.method private reloadQueue()V
    .locals 1

    .prologue
    .line 807
    const-string v0, "com.htc.music.plugin.queuechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method private resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "afd"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x4000

    const/4 v5, 0x0

    .line 725
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    :cond_0
    move-object v1, v5

    .line 794
    :goto_0
    return-object v1

    .line 729
    :cond_1
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    if-nez v6, :cond_2

    .line 730
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    .line 732
    :cond_2
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v6, :cond_3

    .line 733
    new-instance v6, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v7, 0x2

    invoke-direct {v6, v11, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 738
    :cond_3
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 739
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 740
    const/4 v6, 0x1

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 741
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 747
    :goto_1
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v10

    if-gez v6, :cond_4

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_5

    .line 748
    :cond_4
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 749
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 750
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 789
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 791
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "[DMCMusicPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeThumb(), thumbnail resize failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 794
    goto :goto_0

    .line 753
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :try_start_1
    const-string v6, "[DMCMusicPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeThumb(), thumbnail 1st resize width "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 757
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 758
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 762
    .local v0, bitmapOrg:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v6

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v6, v8, :cond_6

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_2
    int-to-float v6, v6

    div-float v4, v7, v6

    .line 766
    .local v4, scale:F
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 767
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 768
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 770
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 771
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumSize:I

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 775
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 776
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 777
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 782
    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSquareAlbum:Landroid/graphics/Bitmap;

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 785
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 786
    const/4 v3, 0x0

    .line 788
    goto/16 :goto_0

    .line 762
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v4           #scale:F
    :cond_6
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 8
    .parameter "afd"
    .parameter "filepath"

    .prologue
    .line 682
    const/4 v3, 0x0

    .line 684
    .local v3, retval:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 685
    :cond_0
    const/4 v4, 0x0

    .line 712
    :goto_0
    return v4

    .line 688
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 691
    .local v2, newAlbumArt:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, fos:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_3

    .line 693
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 697
    :goto_1
    if-eqz v1, :cond_4

    .line 698
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 699
    const/4 v3, 0x1

    .line 709
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v2, :cond_2

    .line 710
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move v4, v3

    .line 712
    goto :goto_0

    .line 695
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_1
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "saveAlbumArtToSDCard(), newAlbumArt is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 703
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 701
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_2
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "saveAlbumArtToSDCard()..fos is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 705
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 706
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private saveQueue(Z)V
    .locals 0
    .parameter "full"

    .prologue
    .line 804
    return-void
.end method

.method private setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V
    .locals 5
    .parameter "serverId"
    .parameter "containerId"
    .parameter "contentId"
    .parameter "startIdx"
    .parameter "endIdx"
    .parameter "dir"
    .parameter "filePath"

    .prologue
    const/4 v4, 0x1

    .line 1985
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "setDlnaPlaylist"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    .line 1988
    new-instance v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 1989
    .local v0, dlnaRemotePLInfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    iput-object p2, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 1990
    iput-object p3, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 1991
    iput p8, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 1992
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 1993
    iput-wide p4, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 1994
    iput-wide p6, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 1995
    iput v4, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 1996
    iput-object p1, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 1997
    iget-object v2, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 1998
    iget-object v2, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 1999
    iget-object v2, v0, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 2000
    iput-wide p4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLStartIdx:J

    .line 2001
    iput-wide p6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLEndIdx:J

    .line 2002
    iput p8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLDirection:I

    .line 2003
    iput-object p9, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    .line 2008
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2009
    :cond_0
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    .line 2011
    :cond_1
    new-instance v1, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v1}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 2012
    .local v1, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v4, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 2013
    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 2014
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 2015
    const-string v2, "HtcMusic"

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 2017
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 2018
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V

    .line 2019
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 2020
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2022
    :cond_2
    iget-boolean v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mForcePlay:Z

    if-eqz v2, :cond_3

    .line 2023
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->play()V

    .line 2024
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mForcePlay:Z

    .line 2027
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->reloadQueue()V

    .line 2028
    return-void
.end method

.method private setRenderer()V
    .locals 5

    .prologue
    .line 1879
    new-instance v1, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v1}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 1880
    .local v1, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    const/4 v2, 0x1

    iput v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 1881
    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 1882
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 1883
    const-string v2, "HtcMusic"

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 1886
    const/4 v0, 0x0

    .line 1887
    .local v0, newDmrId:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 1888
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v3, "Render"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1889
    if-nez v0, :cond_0

    .line 1890
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "renderer is null in Intent. Try to get renderer from dlnamanager"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v0

    .line 1898
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1899
    :cond_1
    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    .line 1900
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRenderer currentDMRId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1902
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRID:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 1910
    :goto_1
    return-void

    .line 1894
    :cond_2
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "intent is nul. get dmr from dlna manager"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1904
    :cond_3
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "mCurrentDMRID is null close dmc service"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const/16 v2, -0x2715

    invoke-direct {p0, v2}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V

    goto :goto_1

    .line 1908
    :cond_4
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "DMR id is the same don\'t set DMR"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startToPlay()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1913
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 1915
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "command"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1916
    .local v0, cmd:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "forcePlay"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mForcePlay:Z

    .line 1917
    const-string v4, "com.htc.music.refreshplaylist"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1919
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "startToPlay CMDREFRESH_PLAYLIST"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "com.htc.music.dmc_setsrc"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    .line 1923
    iget v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-nez v4, :cond_4

    .line 1924
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "com.htc.music.dmc_playlist"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    .line 1925
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "com.htc.music.dmc_currentindex"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1926
    .local v3, nCurIndex:I
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    if-eqz v4, :cond_3

    .line 1927
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "startToPlay CMDREFRESH_PLAYLIST:playlist ok, setDataSource..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startToPlay CMDREFRESH_PLAYLIST:nCurIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    invoke-virtual {v4, v5, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource([II)V

    .line 1933
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->saveQueue()V

    .line 1964
    .end local v3           #nCurIndex:I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 1965
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 1966
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->play()V

    .line 1968
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->reloadQueue()V

    .line 1969
    iput-object v8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    .line 1977
    .end local v0           #cmd:Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1978
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1979
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1980
    return-void

    .line 1931
    .end local v2           #msg:Landroid/os/Message;
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v3       #nCurIndex:I
    :cond_3
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "startToPlay CMDREFRESH_PLAYLIST:playlist null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1935
    .end local v3           #nCurIndex:I
    :cond_4
    iget v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-ne v4, v7, :cond_0

    .line 1936
    new-instance v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    invoke-direct {v1}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;-><init>()V

    .line 1937
    .local v1, dlnaRemotePLInfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "container"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    .line 1938
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    .line 1939
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "direction"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    .line 1940
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->durationMillis:J

    .line 1941
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "startIdx"

    invoke-virtual {v4, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    .line 1942
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "endIdx"

    invoke-virtual {v4, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    .line 1943
    iput v7, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    .line 1944
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "Server"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    .line 1945
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    const-string v5, "filepath"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    .line 1946
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mContentPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    iget-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 1948
    iget-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 1949
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand mServerID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const-string v4, "[DMCMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand contentID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    iget-object v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 1954
    iget-wide v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    iput-wide v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLStartIdx:J

    .line 1955
    iget-wide v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    iput-wide v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLEndIdx:J

    .line 1956
    iget v4, v1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    iput v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLDirection:I

    .line 1958
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V

    .line 1959
    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    goto/16 :goto_1

    .line 1972
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #dlnaRemotePLInfo:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :cond_5
    const-string v4, "[DMCMusicPlaybackService]"

    const-string v5, "intent is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private stop(Z)V
    .locals 1
    .parameter "remove_status_icon"

    .prologue
    const/4 v0, 0x0

    .line 1191
    iput-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsPlayPressed:Z

    .line 1199
    if-eqz p1, :cond_0

    .line 1200
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->gotoIdleState()V

    .line 1204
    :cond_0
    if-eqz p1, :cond_1

    .line 1205
    iput-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1206
    iput-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsPlayPressed:Z

    .line 1207
    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 1209
    :cond_1
    return-void
.end method


# virtual methods
.method public clearAlbumArtRequests()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1540
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "clearAlbumArtRequests()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    .line 1542
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1546
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "clearNowplayingQueueRequests()...do nothing..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    return-void
.end method

.method public duration()J
    .locals 6

    .prologue
    .line 1279
    const-wide/16 v0, 0x0

    .line 1280
    .local v0, duration:J
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v2, :cond_0

    .line 1281
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 1283
    :cond_0
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    return-wide v0
.end method

.method public getAlbumArtByIndex(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "index"

    .prologue
    .line 1421
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlbumArtByIndex()...index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumArtPath()V
    .locals 0

    .prologue
    .line 1418
    return-void
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 7
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1551
    iget v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-nez v5, :cond_1

    .line 1552
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumArtPath(I)Ljava/lang/String;

    move-result-object v3

    .line 1575
    :cond_0
    :goto_0
    return-object v3

    .line 1553
    :cond_1
    iget v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1554
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1555
    .local v2, key:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1556
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 1557
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1561
    :cond_2
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    .end local v1           #file:Ljava/io/File;
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumArtPath(I)Ljava/lang/String;

    move-result-object v3

    .line 1566
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1567
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v3, v4

    .line 1572
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #path:Ljava/lang/String;
    :cond_4
    move-object v3, v4

    .line 1575
    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1702
    invoke-virtual {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1319
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "getAlbumName()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1323
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1327
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "getArtistName()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1331
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 5

    .prologue
    .line 1162
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1163
    const/4 v0, -0x1

    .line 1172
    :cond_0
    :goto_0
    return v0

    .line 1165
    :cond_1
    const/4 v0, -0x1

    .line 1166
    .local v0, audioId:I
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1168
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v3, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    aget v0, v1, v2

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1857
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 1536
    const/4 v0, 0x0

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1475
    const/4 v0, 0x0

    .line 1476
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_0

    .line 1477
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 1479
    :cond_0
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1459
    const/4 v0, 0x0

    .line 1460
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_0

    .line 1461
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 1463
    :cond_0
    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1467
    const/4 v0, 0x0

    .line 1468
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_0

    .line 1469
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 1471
    :cond_0
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1483
    const/4 v0, 0x0

    .line 1484
    .local v0, location:Ljava/lang/String;
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1485
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    .line 1531
    :goto_0
    return-object v1

    .line 1493
    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    if-eqz v1, :cond_1

    .line 1494
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v0, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 1495
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v1, v0

    .line 1531
    goto :goto_0

    .line 1497
    :cond_1
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "mDLNAContentItemDetails is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1436
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNowplayingQueue(I)V
    .locals 16
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1706
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNowplayingQueue()... interval => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    const/4 v11, 0x0

    .line 1709
    .local v11, queueLen:I
    const/4 v14, 0x0

    .line 1710
    .local v14, tmpCursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1712
    .local v9, nowPlayingQueue:[Landroid/content/ContentValues;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1713
    .local v15, where:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serve_id= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    const-string v1, " AND _id IN ("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListLen:I

    if-ge v8, v1, :cond_1

    .line 1720
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    aget v1, v1, v8

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1721
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_0

    .line 1722
    const-string v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1725
    :cond_1
    const-string v1, ")"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "content_name"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "artist_name"

    aput-object v4, v3, v1

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "index_id COLLATE NOCASE ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1767
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_7

    .line 1768
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1770
    const/4 v12, 0x0

    .line 1771
    .local v12, sentTime:I
    if-nez p1, :cond_2

    .line 1772
    move/from16 p1, v11

    .line 1775
    :cond_2
    move/from16 v0, p1

    if-le v11, v0, :cond_5

    .line 1776
    move/from16 v0, p1

    new-array v9, v0, [Landroid/content/ContentValues;

    .line 1780
    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_6

    .line 1781
    rem-int v10, v8, p1

    .line 1783
    .local v10, queueIdx:I
    const-string v1, "content_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1785
    .local v13, title:Ljava/lang/String;
    const-string v1, "artist_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1789
    .local v7, artist:Ljava/lang/String;
    move/from16 v0, p1

    if-lt v8, v0, :cond_3

    if-nez v10, :cond_3

    .line 1790
    add-int/lit8 v12, v12, 0x1

    .line 1791
    if-eqz v9, :cond_3

    array-length v1, v9

    if-lez v1, :cond_3

    .line 1792
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    add-int/lit8 v2, v12, -0x1

    mul-int v2, v2, p1

    mul-int v3, p1, v12

    add-int/lit8 v3, v3, -0x1

    const-string v4, "com.htc.music.DMCMusicPlaybackService"

    invoke-interface {v1, v9, v2, v3, v4}, Lcom/htc/music/IPluginIPCNotify;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V

    .line 1797
    :cond_3
    aget-object v1, v9, v10

    if-nez v1, :cond_4

    .line 1798
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    aput-object v1, v9, v10

    .line 1800
    :cond_4
    aget-object v1, v9, v10

    const-string v2, "title"

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    aget-object v1, v9, v10

    const-string v2, "artist"

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 1780
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1778
    .end local v7           #artist:Ljava/lang/String;
    .end local v10           #queueIdx:I
    .end local v13           #title:Ljava/lang/String;
    :cond_5
    new-array v9, v11, [Landroid/content/ContentValues;

    goto :goto_1

    .line 1806
    :cond_6
    if-eqz v9, :cond_7

    if-lez v11, :cond_7

    .line 1807
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    mul-int v2, p1, v12

    add-int/lit8 v3, v11, -0x1

    const-string v4, "com.htc.music.DMCMusicPlaybackService"

    invoke-interface {v1, v9, v2, v3, v4}, Lcom/htc/music/IPluginIPCNotify;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V

    .line 1811
    .end local v12           #sentTime:I
    :cond_7
    if-eqz v14, :cond_8

    .line 1812
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1813
    const/4 v14, 0x0

    .line 1815
    :cond_8
    return-void
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1432
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1844
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getDLNAErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 1
    .parameter "shufflePosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1820
    const/4 v0, 0x0

    return v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 1177
    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method public getQueueSize()I
    .locals 4

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    long-to-int v0, v1

    .line 1413
    .local v0, queueSize:I
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQueueSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    return v0
.end method

.method public getRepeatMode()I
    .locals 5

    .prologue
    .line 1391
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    .line 1392
    .local v0, nDlnaRepeatmode:I
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRepeatMode()...DLNA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const/4 v1, 0x0

    .line 1396
    .local v1, nRepeatmode:I
    packed-switch v0, :pswitch_data_0

    .line 1407
    :goto_0
    return v1

    .line 1398
    :pswitch_0
    const/4 v1, 0x0

    .line 1399
    goto :goto_0

    .line 1401
    :pswitch_1
    const/4 v1, 0x1

    .line 1402
    goto :goto_0

    .line 1404
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 1396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getShuffleMode()I
    .locals 3

    .prologue
    .line 1361
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShuffleMode()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    const/4 v0, 0x1

    .line 1366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1840
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackDetails(I)V
    .locals 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1825
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackDetails()... position => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayListLen:I

    if-lt p1, v0, :cond_1

    .line 1828
    :cond_0
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackDetails()...position is illegal, position => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    :goto_0
    return-void

    .line 1832
    :cond_1
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueryPosition:I

    .line 1833
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getContentID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    .line 1834
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1311
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "getTrackName()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1315
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<unknown>"

    goto :goto_0
.end method

.method public getVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getVolume()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 1181
    const/4 v0, 0x0

    .line 1182
    .local v0, isPlaying:Z
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I

    if-nez v1, :cond_0

    .line 1183
    const/4 v0, 0x1

    .line 1187
    :goto_0
    return v0

    .line 1185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluginReady()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1848
    const/4 v0, 0x0

    .line 1853
    .local v0, retval:Z
    const/4 v1, 0x1

    return v1
.end method

.method loadDMSInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 2601
    const-string v1, "DLNA"

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2603
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "server"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 2604
    const-string v1, "container"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 2605
    const-string v1, "content"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 2606
    const-string v1, "startIdx"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLStartIdx:J

    .line 2607
    const-string v1, "endIdx"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLEndIdx:J

    .line 2608
    const-string v1, "direction"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCurPLDirection:I

    .line 2609
    const-string v1, "filepath"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentPath:Ljava/lang/String;

    .line 2610
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContainerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContentID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    return-void
.end method

.method loadQueue()V
    .locals 11

    .prologue
    .line 2657
    iget-object v8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "queue"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2658
    .local v6, q:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2659
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2660
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 2661
    .local v4, len:I
    new-array v8, v4, [I

    iput-object v8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    .line 2662
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 2663
    aget-object v7, v1, v2

    .line 2664
    .local v7, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2665
    .local v5, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 2666
    shl-int/lit8 v5, v5, 0x4

    .line 2667
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2668
    .local v0, c:C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_0

    const/16 v8, 0x39

    if-gt v0, v8, :cond_0

    .line 2669
    add-int/lit8 v8, v0, -0x30

    add-int/2addr v5, v8

    .line 2665
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2670
    :cond_0
    const/16 v8, 0x61

    if-lt v0, v8, :cond_1

    const/16 v8, 0x66

    if-gt v0, v8, :cond_1

    .line 2671
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, -0x61

    add-int/2addr v5, v8

    goto :goto_2

    .line 2673
    :cond_1
    const/4 v4, 0x0

    .line 2677
    .end local v0           #c:C
    :cond_2
    iget-object v8, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    aput v5, v8, v2

    .line 2662
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2680
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v5           #n:I
    .end local v7           #revhex:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public next(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/4 v3, 0x0

    .line 1266
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== next()...force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iput v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    .line 1268
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    .line 1269
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1271
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1273
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mlCurPosition:J

    .line 1274
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "=== next()...END "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    return-void
.end method

.method notifyDlnaConnected()V
    .locals 2

    .prologue
    .line 2627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.dlna_connected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2628
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2629
    return-void
.end method

.method notifyRepeatChanged()V
    .locals 2

    .prologue
    .line 2617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.repeat_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2618
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2619
    return-void
.end method

.method notifyShuffleChanged()V
    .locals 2

    .prologue
    .line 2622
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.dmcservice.shuffle_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2623
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2624
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 812
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 813
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    .line 814
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, action:Ljava/lang/String;
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBind()...MediaPlayback is onBind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->reloadQueue()V

    .line 820
    const-class v1, Lcom/htc/music/IDmcUiPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, ">> onBind IDmcUiPlaybackService!! <<"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mUiBinder:Landroid/os/IBinder;

    .line 824
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 829
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "onCreate()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 832
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 833
    new-instance v1, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;

    invoke-direct {v1, p0, v5}, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;-><init>(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/music/DMCMusicPlaybackService$1;)V

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerListener:Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;

    .line 834
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mControllerListener:Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 835
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRendererStatusListener:Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;)V

    .line 836
    new-instance v1, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;

    invoke-direct {v1, p0, v5}, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/music/DMCMusicPlaybackService$1;)V

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAServiceStatusListener:Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;

    .line 839
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[DMCMusicPlaybackService]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 841
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 842
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUILooper:Landroid/os/Looper;

    .line 843
    new-instance v1, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;-><init>(Lcom/htc/music/DMCMusicPlaybackService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    .line 846
    iput-boolean v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z

    .line 847
    const-string v1, "dmc_service"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 849
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "dmc_source"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    .line 850
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-ne v1, v3, :cond_1

    .line 851
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->loadDMSInfo()V

    .line 855
    :goto_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAServiceStatusListener:Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    .line 861
    return-void

    .line 853
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->loadQueue()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 866
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "onDestroy()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->saveDmcInfo()V

    .line 882
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 883
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z

    .line 886
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 889
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 891
    iput-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 895
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mArtMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 897
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->stopForeground(Z)V

    .line 903
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 904
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 907
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    .line 908
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 910
    :cond_4
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 911
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 913
    :cond_5
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V

    .line 914
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 916
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "onDestroy finished."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 921
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "onRebind()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 923
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    .line 924
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, action:Ljava/lang/String;
    const-string v1, "[DMCMusicPlaybackService]"

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

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 928
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    .line 937
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "onStartCommand()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iput p3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceStartId:I

    .line 939
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 940
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    .line 944
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-class v0, Lcom/htc/music/IDmcUiPlaybackService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "start IDmcUiPlaybackService"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_0
    :goto_0
    return v2

    .line 949
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z

    if-eqz v0, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->setRenderer()V

    .line 951
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->startToPlay()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 963
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "onUnbind()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, action:Ljava/lang/String;
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    if-gtz v1, :cond_0

    .line 969
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "incorrect service refer count, try to recover it"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :goto_0
    return v4

    .line 973
    :cond_0
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    .line 974
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayback is onUnbind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ref count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    if-lez v1, :cond_1

    .line 977
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnbind() mServiceInUse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 981
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 982
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->saveCurrentPos()V

    .line 983
    invoke-virtual {p0, v4}, Lcom/htc/music/DMCMusicPlaybackService;->stopForeground(Z)V

    .line 984
    iget v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->stopSelf(I)V

    .line 987
    :cond_2
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "onUnbind finished"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1217
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "pause()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iput-boolean v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsPlayPressed:Z

    .line 1220
    monitor-enter p0

    .line 1221
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1223
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    .line 1224
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    .line 1225
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1227
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1230
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->gotoIdleState()V

    .line 1231
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsSupposedToBePlaying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1237
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1238
    return-void

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1237
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1241
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "play()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mIsPlayPressed:Z

    .line 1245
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    .line 1246
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    .line 1247
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1249
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1251
    :cond_0
    return-void
.end method

.method public position()J
    .locals 6

    .prologue
    .line 1289
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 1290
    .local v0, position:J
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    return-wide v0
.end method

.method public prev()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1254
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "=== prev()...Begin"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iput v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I

    .line 1256
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    .line 1257
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1259
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1261
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mlCurPosition:J

    .line 1262
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "=== prev()...End"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    return-void
.end method

.method public registerCallback(Lcom/htc/music/IPluginIPCNotify;)V
    .locals 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1441
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback()...cb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    if-eqz p1, :cond_0

    .line 1444
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 1446
    :cond_0
    return-void
.end method

.method saveCurrentPos()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 2552
    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    if-nez v2, :cond_0

    .line 2553
    const-string v2, "Music"

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/DMCMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2556
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2557
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "curpos"

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2558
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2573
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 2561
    :cond_0
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2562
    const-string v2, "DLNA"

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/DMCMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2564
    .restart local v1       #preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2565
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "curpos"

    iget v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2566
    const-string v2, "content"

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2567
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2570
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_1
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveCurrentPos(), mContentID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method saveDMSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V
    .locals 4
    .parameter "serverId"
    .parameter "containerId"
    .parameter "contentId"
    .parameter "startIdx"
    .parameter "endIdx"
    .parameter "dir"
    .parameter "filePath"

    .prologue
    .line 2583
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "saveDMSInfo"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    const-string v2, "DLNA"

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2586
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2587
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "server"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2588
    const-string v2, "container"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2589
    const-string v2, "content"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2590
    const-string v2, "repeatmode"

    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getRepeatMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2591
    const-string v2, "shufflemode"

    invoke-virtual {p0}, Lcom/htc/music/DMCMusicPlaybackService;->getShuffleMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2592
    const-string v2, "startIdx"

    invoke-interface {v0, v2, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2593
    const-string v2, "endIdx"

    invoke-interface {v0, v2, p6, p7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2594
    const-string v2, "direction"

    invoke-interface {v0, v2, p8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2595
    const-string v2, "filepath"

    invoke-interface {v0, v2, p9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2597
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2598
    return-void
.end method

.method saveDmcInfo()V
    .locals 3

    .prologue
    .line 2576
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2577
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "dmc_source"

    iget v2, p0, Lcom/htc/music/DMCMusicPlaybackService;->mnSource:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2578
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2579
    return-void
.end method

.method saveQueue()V
    .locals 7

    .prologue
    .line 2632
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    if-nez v5, :cond_0

    .line 2633
    const-string v5, "[DMCMusicPlaybackService]"

    const-string v6, "mPlaylist is null cannot save queue"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    :goto_0
    return-void

    .line 2637
    :cond_0
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2638
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2639
    .local v4, q:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 2640
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayList:[I

    aget v3, v5, v2

    .line 2641
    .local v3, n:I
    if-nez v3, :cond_1

    .line 2642
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2644
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 2645
    and-int/lit8 v0, v3, 0xf

    .line 2646
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 2647
    iget-object v5, p0, Lcom/htc/music/DMCMusicPlaybackService;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2649
    .end local v0           #digit:I
    :cond_2
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2652
    .end local v3           #n:I
    :cond_3
    const-string v5, "queue"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2653
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public seek(J)J
    .locals 3
    .parameter "pos"

    .prologue
    .line 1295
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek()...pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 1298
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "Cannot seek in pauseing state"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-wide/16 p1, 0x0

    .line 1307
    .end local p1
    :goto_0
    return-wide p1

    .line 1301
    .restart local p1
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V

    .line 1302
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    goto :goto_0

    .line 1304
    :cond_1
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "mDLNAManager is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 1335
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQueuePosition()...pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    if-gez p1, :cond_0

    .line 1346
    :goto_0
    return-void

    .line 1339
    :cond_0
    monitor-enter p0

    .line 1340
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/DMCMusicPlaybackService;->initErrorRetryHandle()V

    .line 1342
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I

    .line 1344
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 1345
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 4
    .parameter "repeatmode"

    .prologue
    .line 1370
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeatMode()...repeatmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I

    .line 1373
    const/4 v0, 0x0

    .line 1375
    .local v0, dlnaRepeatmode:I
    packed-switch p1, :pswitch_data_0

    .line 1387
    :goto_0
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRepeat(I)V

    .line 1388
    return-void

    .line 1377
    :pswitch_0
    const/4 v0, 0x0

    .line 1378
    goto :goto_0

    .line 1380
    :pswitch_1
    const/4 v0, 0x2

    .line 1381
    goto :goto_0

    .line 1383
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setShuffleMode(I)V
    .locals 3
    .parameter "shufflemode"

    .prologue
    .line 1349
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShuffleMode()...shufflemode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iput p1, p0, Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I

    .line 1351
    if-nez p1, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setShuffle()V

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isShuffleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setShuffle()V

    goto :goto_0
.end method

.method public setVolume(I)V
    .locals 3
    .parameter "nVol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1869
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setVolume(I)V

    .line 1871
    return-void
.end method

.method public startPluginActivity()V
    .locals 0

    .prologue
    .line 1456
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 1212
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "stop()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMCMusicPlaybackService;->stop(Z)V

    .line 1214
    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    .prologue
    .line 1450
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "unregisterCallback()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 1452
    return-void
.end method
