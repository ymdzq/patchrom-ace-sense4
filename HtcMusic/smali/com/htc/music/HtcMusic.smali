.class public Lcom/htc/music/HtcMusic;
.super Landroid/app/Activity;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;
.implements Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/HtcMusic$LyricUpdateReceiver;,
        Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;,
        Lcom/htc/music/HtcMusic$ControllerListener;,
        Lcom/htc/music/HtcMusic$EventReceiver;,
        Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;,
        Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;,
        Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;,
        Lcom/htc/music/HtcMusic$DataFeeWanringDialogClickListener;,
        Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;,
        Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;,
        Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;,
        Lcom/htc/music/HtcMusic$PhadeAnimationListener;,
        Lcom/htc/music/HtcMusic$NonUiHandler;,
        Lcom/htc/music/HtcMusic$EditTextWatcher;,
        Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;,
        Lcom/htc/music/HtcMusic$showGliderUIIdleHandler;,
        Lcom/htc/music/HtcMusic$InitialUIIdlehandler;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_CURRENT_LYRIC:Ljava/lang/String; = "action_update_current_lyric"

.field private static final ADDTO_ONLINE_FAVORITE:I = 0xe

.field private static final ANIMATION_INIT:I = 0x5

.field private static final AUDIO_BOOSTER:I = 0x28

.field private static final CHANGENOW_PLAYING_VIEW:I = 0x3a9a

.field private static final CHECK_ERROR_STATE:I = 0x6

.field private static final CHECK_PLUGIN_SERVICE_STATE:I = 0x4

.field private static final DIALOG_CONNECTION_FAILED:I = 0x18

.field private static final DIALOG_CREATE_PLAYLIST:I = 0x15

.field private static final DIALOG_DMR_DISCONNECT:I = 0x16

.field private static final DIALOG_DMS_DISCONNECT:I = 0x17

.field private static final DIALOG_DOWNLOAD_ALBUMART:I = 0xd

.field private static final DIALOG_DRM_CONFIRM:I = 0x4

.field private static final DIALOG_DRM_ERROR:I = 0x3

.field private static final DIALOG_EQUALIZER_EFFECT:I = 0x11

.field private static final DIALOG_MODE_REPEAT_ALL:I = 0x0

.field private static final DIALOG_MODE_REPEAT_CURRENT:I = 0x1

.field private static final DIALOG_MODE_REPEAT_NONE:I = 0x2

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x6

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0xc

.field private static final DIALOG_SHARETEXT:I = 0x14

.field private static final DIALOG_SHARETYPE:I = 0x13

.field private static final DIALOG_SHARE_DRM_FILE:I = 0xf

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0xe

.field private static final DIALOG_SOUND_EFFECT:I = 0x10

.field private static final DIALOG_TRACK_OPTIONS:I = 0x12

.field private static final DMR_CHOOSER:I = 0x25

.field public static final EQ_TOAST_HEADSET_UNPLUGGED:I = 0x34

.field private static final HANDLER_HIDE_VOLUME_DIALOG:I = 0x1771

.field private static final INITIAL_UI:I = 0xc9

.field private static final KEY_IS_LYRICS_VISIBLE:Ljava/lang/String; = "islyricsvisible"

.field private static final KEY_PLAY_AT_GLANCE:Ljava/lang/String; = "playatglance"

.field private static final LOCKSCREEN_START_ACTIVITY:Ljava/lang/String; = "com.htc.music.lockscreen_start"

.field private static final MENU_ADDTOFAVORITE:I = 0x2f

.field private static final MENU_CLOSE_ID:I = 0x2e

.field private static final MENU_LYRIC_ID:I = 0x32

.field private static final MENU_QUEUE_ID:I = 0x2c

.field private static final MENU_SOUNDHOUND_ID:I = 0x2d

.field private static final MENU_STATUS_HtcMusic:I = 0x1

.field private static final MENU_STATUS_NONE:I = 0x0

.field private static final MENU_STATUS_NowPlaying:I = 0x2

.field private static final MSG_DRAW_LYRIC:I = 0x6b

.field private static final MSG_OPEN_LYRIC:I = 0x6a

.field private static final MSG_SWITCH_MODE:I = 0x3a9b

.field public static final NOW_PLAYING_SWITCH:Ljava/lang/String; = "NOW_PLAYING_SWITCH"

.field private static final ONLINE_PROPERTIES:I = 0x31

.field private static final PLAY_ALBUM:I = 0xa

.field private static final PROPERTIES:I = 0x20

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final REFRESH_NOW:I = 0xd

.field private static final REFRESH_PLAYLIST:I = 0x1

.field public static final REFRESH_SOUND_EFFECT_LIST:I = 0x33

.field private static final REMOVE_DUMMY_BACKGROUND:I = 0x3a99

.field private static final REOPEN_CURRENT:I = 0xf

.field private static final REPEAT:I = 0x1b

.field private static final SETTING:I = 0x29

.field private static final SET_SOUND_EFFECT:I = 0x3

.field private static final SHARE:I = 0x24

.field private static final SHOW_GLIDER:I = 0x3a9c

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x66

.field private static final START_ENHANCER_SERVICE_ONSTART:I = 0x8

.field private static final TAG:Ljava/lang/String; = "[HtcMusic]"

.field private static final TOGGLE_SHUFFLE:I = 0x1f

.field private static final UPDATE_LYRIC_VIEW:I = 0x6c

.field private static final UPDATE_TITLE:I = 0xc

.field private static final UPDATE_TRACKINFO:I = 0x7

.field private static final UPDATE_TRACKINFO_UI:I = 0xb

.field private static final USE_AS_NOTIFY_RINGTONE:I = 0x23

.field private static final USE_AS_PHONE_RINGTONE:I = 0x22

.field private static final USE_AS_RINGTONE:I = 0x1a

.field private static final USE_AS_RINGTONE_SUB:I = 0x21

.field private static final VOLUME_DIALOG_TIMEOUT_DELAY:I = 0xbb8

.field private static logger:Lcom/htc/music/online/sinamusic/MyLogger;

.field private static mLyricStr:Ljava/lang/String;

.field private static mNetworkAvailableChecked:Z

.field private static music_tooltip_perference_key:Ljava/lang/String;


# instance fields
.field private final AUTO_UPDATE:I

.field private LocalizedEqualizerStyle:[Ljava/lang/String;

.field private LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

.field private final MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

.field private final MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

.field private SetSoundEffectKey:Ljava/lang/String;

.field private final UPDATE_ALL:I

.field private final UPDATE_CURRENT:I

.field private activeDialog:I

.field avi:I

.field private hint_layout_land:Landroid/view/View;

.field private isTooltipLaunched:Z

.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private m2DControl:Landroid/view/View;

.field private m3DLayout:Landroid/widget/RelativeLayout;

.field private mActionBar:Lcom/htc/widget/ActionBarExt;

.field protected mActivityPopup:Z

.field private mAlbumArtistName:Landroid/widget/TextView;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

.field private mBestsStrNotBeatsHeadset:Ljava/lang/String;

.field private mBestsStrWithBeatsHeadset:Ljava/lang/String;

.field private mBlockMenu:Z

.field mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

.field private mCurrentAudioId:I

.field private mCurrentAudioPath:Ljava/lang/String;

.field private mCurrentAudioType:I

.field private mCurrentSongId:I

.field private mCurrentSoundEffectIndicatorType:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field private mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

.field private mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

.field private mDMCServiceListener:Landroid/content/BroadcastReceiver;

.field private mDMRChooserAction:Landroid/view/View$OnClickListener;

.field private mDelayPlayDuration:I

.field private mDirectMode:I

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field private mDlnaMode:I

.field private mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

.field private mDownloadAlbumArtDialog:Landroid/app/Dialog;

.field private mDownloadAlbumArtId:I

.field private mDuration:J

.field private mEQDialog:Lcom/htc/widget/HtcAlertDialog;

.field mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

.field private mEnalbeAutoPlay:Z

.field private mEnalbeDelayPlay:Z

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

.field private mGliderAdapter:Lcom/htc/music/GliderAdapter;

.field private mGliderState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field private mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

.field private mInitAP:Z

.field private mIsAutoUpdate:Z

.field private mIsDLNAManagerConnected:Z

.field private mIsDialogActive:Z

.field private mIsEnhancerExist:Z

.field private mIsFFScanOn:Z

.field private mIsFromBTKeepPlaying:Z

.field private volatile mIsInialLoading:Z

.field mIsInnerTypeChanged:Z

.field private mIsLyricPanelInit:Z

.field private mIsLyricShow:Z

.field private mIsLyricsLoading:Z

.field private mIsMusicStoreEnable:Z

.field protected mIsOnlineInnerType:Z

.field private mIsOnlineLoading:Z

.field private mIsPlaybackControlEnabled:Z

.field private mIsRWScanOn:Z

.field private mIsRevertCurrent:Z

.field private mIsSeriveBinded:Z

.field private mIsShowingDialog:Z

.field private mIsSupportMMC:Z

.field private mJustCreate:Z

.field private mLastPluginArtPath:Ljava/lang/String;

.field private mLastSeekEventTime:J

.field private mLibraryListener:Landroid/view/View$OnClickListener;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mLyric:Lcom/htc/music/lyrics/LyricGenerator;

.field private mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

.field private mLyricPath:Ljava/lang/String;

.field private mLyricReceiver:Landroid/content/BroadcastReceiver;

.field private mLyricsGetter:Lcom/htc/music/online/util/AsyncSongDetailGetter;

.field private mMenu:Landroid/view/Menu;

.field private mMenuStatus:I

.field public mMsg:Ljava/lang/String;

.field private mNeedBindSerive:Z

.field private mNeedSetRendererAsDongle:Z

.field private mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

.field mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

.field protected mNowPlayingViewOn:Z

.field private mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

.field private mOrientation:I

.field private mPauseButton:Lcom/htc/widget/HtcRimImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPaused:Z

.field private mPosOverride:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field public mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field private mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Lcom/htc/widget/HtcSeekBar;

.field private mProgressPopup:Landroid/widget/TextView;

.field private mProgressPos:I

.field private mQueueInfo:Ljava/lang/String;

.field private mRecommendListener:Landroid/view/View$OnClickListener;

.field private mRelaunchAfterConfigChange:Z

.field private mRepeatButton:Lcom/htc/widget/HtcImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mRetryCount:I

.field private mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

.field mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

.field protected mScanListener:Landroid/content/BroadcastReceiver;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private mSecondary:Landroid/widget/TextView;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mSeekmethod:I

.field public mSelectEQIndex:I

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mShareBundle:Landroid/os/Bundle;

.field private mShareDRMDialog:Landroid/app/Dialog;

.field private mShareNormaldialog:Landroid/app/Dialog;

.field mShowDialog:Z

.field private mShowEmptyQueue:Z

.field private mShuffleButton:Lcom/htc/widget/HtcImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

.field private mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

.field private mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSoundEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

.field public mSoundEffectStyles:[Ljava/lang/String;

.field private mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mSoundHoundIntent:Landroid/content/Intent;

.field private mStartActionFinished:Z

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSupportSoundHound:Z

.field public mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

.field private mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field protected mTempSelectedEQIndex:I

.field private mTempSelectedSoundEffectStyle:Ljava/lang/String;

.field private mTempShowingEQIndex:I

.field private mTextDialog:Landroid/app/Dialog;

.field private mTitle:Lcom/htc/widget/ActionBarText;

.field private mToast:Landroid/widget/Toast;

.field private mTooltipListener:Landroid/view/View$OnClickListener;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

.field private mTrackOptionListener:Landroid/view/View$OnClickListener;

.field private mTrackball:Z

.field private mUINotInit:Z

.field mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

.field mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mVolumeListener:Landroid/view/View$OnClickListener;

.field mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private music_tooltip_preference:Landroid/content/SharedPreferences;

.field private nowHWAudioSetting:Ljava/lang/String;

.field private onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

.field private onSongLyricLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/htc/music/HtcMusic;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    .line 195
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/HtcMusic;->mLyricStr:Ljava/lang/String;

    .line 277
    const-string v0, "music_tooltip_perference_key"

    sput-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/music/HtcMusic;->mNetworkAvailableChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 175
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 189
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsLyricPanelInit:Z

    .line 194
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mLyricPath:Ljava/lang/String;

    .line 196
    iput v5, p0, Lcom/htc/music/HtcMusic;->mCurrentSongId:I

    .line 198
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 211
    iput v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 212
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 213
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 214
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 218
    iput v4, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    .line 219
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 220
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 221
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    .line 223
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 227
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    .line 229
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    .line 230
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 231
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 232
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 233
    iput v2, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 234
    iput v4, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    .line 235
    iput v4, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 239
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 240
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    .line 241
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 244
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    .line 245
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    .line 268
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    .line 270
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    .line 278
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    .line 283
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 284
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 285
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 287
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 288
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 289
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    .line 290
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    .line 291
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeDelayPlay:Z

    .line 292
    const/16 v0, 0x15e

    iput v0, p0, Lcom/htc/music/HtcMusic;->mDelayPlayDuration:I

    .line 302
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    .line 305
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    .line 306
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    .line 309
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareBundle:Landroid/os/Bundle;

    .line 313
    iput v4, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    .line 314
    iput v4, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    .line 322
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 323
    new-instance v0, Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/HtcMusic$ControllerListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    .line 324
    new-instance v0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    .line 325
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    .line 326
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    .line 327
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 328
    new-instance v0, Lcom/htc/music/HtcMusic$1;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$1;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 395
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsOnlineLoading:Z

    .line 396
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsInialLoading:Z

    .line 399
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsOnlineInnerType:Z

    .line 400
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsInnerTypeChanged:Z

    .line 401
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    .line 403
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 405
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsShowingDialog:Z

    .line 463
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    .line 464
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    .line 465
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    .line 466
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    .line 469
    iput v5, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 470
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z

    .line 471
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z

    .line 472
    iput v4, p0, Lcom/htc/music/HtcMusic;->AUTO_UPDATE:I

    .line 473
    iput v2, p0, Lcom/htc/music/HtcMusic;->UPDATE_ALL:I

    .line 474
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/HtcMusic;->UPDATE_CURRENT:I

    .line 478
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    .line 481
    const-string v0, "com.htc.musicenhancer"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

    .line 482
    const-string v0, "com.htc.musicenhancer.EnhancerService"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

    .line 485
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    .line 487
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    .line 493
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    .line 495
    new-instance v0, Lcom/htc/music/HtcMusic$2;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$2;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 506
    new-instance v0, Lcom/htc/music/HtcMusic$3;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$3;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 723
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    .line 724
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 817
    new-instance v0, Lcom/htc/music/HtcMusic$7;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$7;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1284
    new-instance v0, Lcom/htc/music/HtcMusic$8;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$8;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1386
    new-instance v0, Lcom/htc/music/HtcMusic$9;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$9;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 1396
    new-instance v0, Lcom/htc/music/HtcMusic$10;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$10;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 1402
    new-instance v0, Lcom/htc/music/HtcMusic$11;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$11;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1408
    new-instance v0, Lcom/htc/music/HtcMusic$12;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$12;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    .line 1423
    new-instance v0, Lcom/htc/music/HtcMusic$13;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$13;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mVolumeListener:Landroid/view/View$OnClickListener;

    .line 1453
    new-instance v0, Lcom/htc/music/HtcMusic$14;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$14;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    .line 1522
    new-instance v0, Lcom/htc/music/HtcMusic$15;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$15;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRecommendListener:Landroid/view/View$OnClickListener;

    .line 1528
    new-instance v0, Lcom/htc/music/HtcMusic$16;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$16;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 1558
    new-instance v0, Lcom/htc/music/HtcMusic$17;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$17;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    .line 1586
    new-instance v0, Lcom/htc/music/HtcMusic$18;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$18;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    .line 1608
    new-instance v0, Lcom/htc/music/HtcMusic$19;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$19;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    .line 1637
    new-instance v0, Lcom/htc/music/HtcMusic$20;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$20;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    .line 1689
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1690
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    .line 1926
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 2197
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 2198
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    .line 2490
    iput v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2553
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    .line 2556
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    .line 2969
    new-instance v0, Lcom/htc/music/HtcMusic$22;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$22;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    .line 3000
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    .line 3355
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    .line 3436
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 3511
    iput v4, p0, Lcom/htc/music/HtcMusic;->avi:I

    .line 3904
    new-instance v0, Lcom/htc/music/HtcMusic$24;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$24;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    .line 4515
    new-instance v0, Lcom/htc/music/HtcMusic$25;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$25;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    .line 4737
    new-instance v0, Lcom/htc/music/HtcMusic$26;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$26;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Landroid/content/BroadcastReceiver;

    .line 4881
    new-instance v0, Lcom/htc/music/HtcMusic$27;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$27;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 5285
    new-instance v0, Lcom/htc/music/HtcMusic$28;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$28;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 5331
    new-instance v0, Lcom/htc/music/HtcMusic$29;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$29;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 5632
    new-instance v0, Lcom/htc/music/HtcMusic$30;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$30;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 6447
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    .line 6448
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 7201
    new-instance v0, Lcom/htc/music/HtcMusic$43;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$43;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDMRChooserAction:Landroid/view/View$OnClickListener;

    .line 7225
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    .line 7226
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    .line 7231
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 7233
    const-string v0, "SoundStyle"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    .line 7237
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 7242
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 7243
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 7245
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 7246
    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/music/util/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    .line 7248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    .line 7249
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 7250
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 7252
    new-instance v0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    .line 7268
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    .line 7269
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    .line 7898
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 7899
    iput v5, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 8206
    iput v4, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 8207
    iput v5, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    .line 8543
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    .line 9036
    new-instance v0, Lcom/htc/music/HtcMusic$54;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$54;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    .line 9474
    new-instance v0, Lcom/htc/music/HtcMusic$58;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$58;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

    .line 9487
    new-instance v0, Lcom/htc/music/HtcMusic$59;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$59;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->onSongLyricLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    return-void

    .line 3355
    :array_0
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private WapNetworkAction()V
    .locals 3

    .prologue
    .line 9286
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsShowingDialog:Z

    if-eqz v1, :cond_1

    .line 9287
    const-string v1, "[HtcMusic]"

    const-string v2, "IsShowingDialog quit..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9302
    :cond_0
    :goto_0
    return-void

    .line 9290
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V

    .line 9291
    const/16 v1, 0xd

    invoke-static {p0, v1}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 9292
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v0, :cond_0

    .line 9293
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 9294
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsShowingDialog:Z

    .line 9295
    new-instance v1, Lcom/htc/music/HtcMusic$57;

    invoke-direct {v1, p0}, Lcom/htc/music/HtcMusic$57;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic access$10000(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$10100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    return-void
.end method

.method static synthetic access$10200(Lcom/htc/music/HtcMusic;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    return v0
.end method

.method static synthetic access$10400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    return-void
.end method

.method static synthetic access$10500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10600(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/htc/music/HtcMusic;Lcom/htc/music/util/SoundEffectItem;)Lcom/htc/music/util/SoundEffectItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    return-object p1
.end method

.method static synthetic access$10800(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10900(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    return v0
.end method

.method static synthetic access$10902(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return v0
.end method

.method static synthetic access$11000(Lcom/htc/music/HtcMusic;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return p1
.end method

.method static synthetic access$11100(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z

    return v0
.end method

.method static synthetic access$11200(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z

    return v0
.end method

.method static synthetic access$11300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V

    return-void
.end method

.method static synthetic access$11400(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V

    return-void
.end method

.method static synthetic access$11500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->stopDownloadAlbumArtService()V

    return-void
.end method

.method static synthetic access$11600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startUpdateAllAlbum()V

    return-void
.end method

.method static synthetic access$11700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetCurrentAlbumArt()V

    return-void
.end method

.method static synthetic access$11800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateCurrentAlbum()V

    return-void
.end method

.method static synthetic access$11902(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    return v0
.end method

.method static synthetic access$12002(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    return p1
.end method

.method static synthetic access$12102(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsShowingDialog:Z

    return p1
.end method

.method static synthetic access$12202(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsLyricsLoading:Z

    return p1
.end method

.method static synthetic access$12300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/htc/music/HtcMusic;->mLyricStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    sput-object p0, Lcom/htc/music/HtcMusic;->mLyricStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$12400()Lcom/htc/music/online/sinamusic/MyLogger;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/htc/music/HtcMusic;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doPauseResume()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/HtcMusic;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return p1
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/HtcMusic;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createVolumeDialog()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/HtcMusic;)Lcom/htc/wrap/android/media/HtcWrapAudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startBrowserTabActivity()V

    return-void
.end method

.method static synthetic access$2802(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->stopFFRWScan(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V

    return-void
.end method

.method static synthetic access$3002(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/HtcRimImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/widget/LyricsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/Lyrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/music/HtcMusic;Lcom/htc/music/lyrics/Lyrics;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initialUI()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/music/HtcMusic;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    return p1
.end method

.method static synthetic access$4400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showGlider()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateLyricView()V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/music/HtcMusic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$6002(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsOnlineLoading:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getCurrentSongId()I

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/htc/music/HtcMusic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/HtcSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/htc/music/HtcMusic;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$7002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    sput-boolean p0, Lcom/htc/music/HtcMusic;->mNetworkAvailableChecked:Z

    return p0
.end method

.method static synthetic access$7100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->WapNetworkAction()V

    return-void
.end method

.method static synthetic access$7200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->timeoutAction()V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/ActionBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    return v0
.end method

.method static synthetic access$7800(Lcom/htc/music/HtcMusic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V

    return-void
.end method

.method static synthetic access$7900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getAlbumQueuePosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->handleDMCError(I)V

    return-void
.end method

.method static synthetic access$8300(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    return-void
.end method

.method static synthetic access$8500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->startAlbumDetail(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetTimeout()V

    return-void
.end method

.method static synthetic access$9000(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->shareOnlineMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->addtoPlaylist()V

    return-void
.end method

.method static synthetic access$9200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doSearch()V

    return-void
.end method

.method static synthetic access$9300(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->chooseShareType()V

    return-void
.end method

.method static synthetic access$9500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRingtone()V

    return-void
.end method

.method static synthetic access$9600(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    return v0
.end method

.method static synthetic access$9700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return v0
.end method

.method static synthetic access$9802(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return p1
.end method

.method static synthetic access$9808(Lcom/htc/music/HtcMusic;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return v0
.end method

.method static synthetic access$9900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/htc/music/HtcMusic;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method private addToFavorites(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "songId"
    .parameter "songName"

    .prologue
    .line 9160
    invoke-static {p1}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v1

    .line 9161
    .local v1, engine:Lcom/htc/music/online/sinamusic/ISinaEngine;
    if-eqz v1, :cond_0

    .line 9163
    :try_start_0
    invoke-interface {v1, p2}, Lcom/htc/music/online/sinamusic/ISinaEngine;->addToFavourite(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 9168
    :goto_0
    return v2

    .line 9164
    :catch_0
    move-exception v0

    .line 9165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9168
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addtoPlaylist()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3230
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 3232
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 3233
    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 3244
    :goto_0
    return-void

    .line 3236
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3237
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3238
    const-string v2, "pickermode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3239
    new-array v0, v4, [I

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v3

    aput v3, v0, v2

    .line 3240
    .local v0, addToPlaylistData:[I
    const-string v2, "AddToPlaylistData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3242
    invoke-virtual {p0, v1, v4}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private animationRefresh()V
    .locals 5

    .prologue
    .line 4309
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4310
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4311
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4312
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4320
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 4315
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityWakeup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4319
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    goto :goto_0

    .line 4316
    :catch_0
    move-exception v0

    .line 4317
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private attachNowPlayingView()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 6544
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 6548
    .local v2, nowPlayingLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    const v3, 0x7f08006a

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6549
    .local v0, glanceContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 6550
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 6551
    .local v1, nowPlaying:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6552
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 6554
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v3, :cond_0

    .line 6555
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setVisibility(Z)V

    .line 6557
    .end local v1           #nowPlaying:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private autoUpdateAlbumArt(I)V
    .locals 4
    .parameter "isChecked"

    .prologue
    .line 8508
    const-string v2, "[HtcMusic]"

    const-string v3, "autoUpdateAlbumArt"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8509
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8510
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 8511
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "auto_download"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8512
    sget-object v2, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 8513
    return-void
.end method

.method private buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "szExtra"

    .prologue
    .line 4860
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    .line 4861
    .local v2, szTitleInfo:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 4862
    .local v1, nDlnaMode:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 4863
    :cond_0
    if-nez p1, :cond_2

    .line 4866
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getPlayerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4878
    :cond_1
    :goto_0
    return-object v2

    .line 4868
    :catch_0
    move-exception v0

    .line 4869
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4873
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4876
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method private canUseAsRingtone(IZ)Z
    .locals 7
    .parameter "audioType"
    .parameter "onErrorToast"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5679
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    iget v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->checkSizeLimit(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5681
    if-eqz p2, :cond_0

    .line 5682
    const v4, 0x7f0700af

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 5717
    :cond_0
    :goto_0
    return v3

    .line 5687
    :cond_1
    const/4 v2, 0x0

    .line 5688
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5691
    iget v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 5692
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 5694
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 5695
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5698
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5699
    const-string v5, "mime_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5701
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5706
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v4, :cond_7

    :cond_4
    move v0, v4

    .line 5709
    .local v0, canUseAsRingtone:Z
    :goto_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 5710
    if-eqz v0, :cond_5

    .line 5711
    const-string v5, "audio/x-wma-drm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v4

    .line 5714
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 5715
    const v3, 0x7f0700b0

    invoke-direct {p0, v3}, Lcom/htc/music/HtcMusic;->showToast(I)V

    :cond_6
    move v3, v0

    .line 5717
    goto :goto_0

    .end local v0           #canUseAsRingtone:Z
    :cond_7
    move v0, v3

    .line 5706
    goto :goto_1

    .restart local v0       #canUseAsRingtone:Z
    :cond_8
    move v0, v3

    .line 5711
    goto :goto_2
.end method

.method private changeNowPlayingMode()V
    .locals 1

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 1648
    return-void

    .line 1647
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 3268
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 3269
    return-void
.end method

.method private cleanMessage()V
    .locals 2

    .prologue
    .line 5626
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5627
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5629
    :cond_0
    return-void
.end method

.method private clearSoundEffectParameters()V
    .locals 1

    .prologue
    .line 7727
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7728
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7729
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 7730
    return-void
.end method

.method private closeDMC()V
    .locals 3

    .prologue
    .line 1652
    const-string v1, "[HtcMusic]"

    const-string v2, "DMC power off"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 1657
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1658
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 1670
    :goto_0
    return-void

    .line 1660
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "Current mode is not dmc or push mode, cancel close dmc"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1663
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v1, "[HtcMusic]"

    const-string v2, "service is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private createConnectionFailDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 8859
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8860
    .local v2, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x204009d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8861
    new-instance v0, Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    .line 8862
    .local v0, clickListener:Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;
    const v3, 0x2040178

    invoke-virtual {v2, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8863
    const v3, 0x2040152

    new-instance v4, Lcom/htc/music/HtcMusic$53;

    invoke-direct {v4, p0}, Lcom/htc/music/HtcMusic$53;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8870
    const v3, 0x204009e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8871
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 8872
    .local v1, dialog:Landroid/app/Dialog;
    return-object v1
.end method

.method private createDownloadAlbumArtDialog()Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 8345
    const/4 v7, 0x0

    .line 8346
    .local v7, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8347
    .local v0, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f030020

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 8350
    .local v1, dialogView:Landroid/view/View;
    const v3, 0x7f0701e3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8352
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8353
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move v3, v2

    move v4, v2

    move v5, v2

    .line 8354
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8355
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    .line 8356
    const v3, 0x7f080061

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListView;

    .line 8358
    .local v10, listView:Lcom/htc/widget/HtcListView;
    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/CharSequence;

    .line 8359
    .local v9, items:[Ljava/lang/CharSequence;
    const v3, 0x7f0700f2

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    .line 8360
    new-instance v6, Lcom/htc/music/HtcMusic$52;

    const v2, 0x7f030022

    invoke-direct {v6, p0, p0, v2, v9}, Lcom/htc/music/HtcMusic$52;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 8439
    .local v6, adapter:Landroid/widget/ArrayAdapter;
    invoke-virtual {v10, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8440
    new-instance v8, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;

    invoke-direct {v8, p0}, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    .line 8442
    .local v8, itemClickListener:Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;
    invoke-virtual {v10, v8}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 8444
    return-object v7
.end method

.method private createEqualizerDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 8212
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8215
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 8217
    .local v1, resource:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8221
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    new-instance v4, Lcom/htc/music/HtcMusic$48;

    invoke-direct {v4, p0}, Lcom/htc/music/HtcMusic$48;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8234
    const v2, 0x2040151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$49;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$49;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8252
    const v2, 0x2040152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$50;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$50;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8263
    new-instance v2, Lcom/htc/music/HtcMusic$51;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$51;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8272
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 8275
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v2
.end method

.method private createSoundEffectDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 7983
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 7984
    const-string v2, "[HtcMusic]"

    const-string v4, "createSoundEffectDialog, mService is null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 8170
    :goto_0
    return-object v2

    .line 7988
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 7991
    .local v9, resource:Landroid/content/res/Resources;
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAudioEffect()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7999
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8000
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8002
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 8003
    .local v7, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f03005e

    invoke-virtual {v7, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 8006
    .local v1, textEntryView:Landroid/view/View;
    const v3, 0x7f0800b8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 8009
    .local v8, list:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectDialog()V

    .line 8011
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    if-nez v3, :cond_1

    .line 8012
    new-instance v3, Lcom/htc/music/widget/SoundEffectAdapter;

    const v4, 0x7f03005d

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/music/widget/SoundEffectAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 8016
    :cond_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8018
    new-instance v3, Lcom/htc/music/HtcMusic$44;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$44;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move v3, v2

    move v4, v2

    move v5, v2

    .line 8076
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8078
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8079
    new-instance v2, Lcom/htc/music/HtcMusic$45;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$45;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8089
    const v2, 0x2040151

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$46;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$46;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8152
    const v2, 0x2040152

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$47;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$47;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 8164
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 8166
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setOnSoundEffectDismissListener(Landroid/app/Dialog;)V

    .line 8170
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 7992
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #textEntryView:Landroid/view/View;
    .end local v7           #factory:Landroid/view/LayoutInflater;
    .end local v8           #list:Landroid/widget/ListView;
    :catch_0
    move-exception v6

    .line 7993
    .local v6, e:Landroid/os/RemoteException;
    const-string v2, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSoundEffectDialog, RemoteException, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 7996
    goto/16 :goto_0
.end method

.method private createVolumeDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const-wide v11, 0x3fc53f7ced916873L

    const/4 v10, 0x0

    .line 727
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-nez v7, :cond_0

    .line 728
    new-instance v7, Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    .line 731
    :cond_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07018d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setTextViewText(ILjava/lang/String;)V

    .line 734
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 735
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v10, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setSeekbarSeekListener(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 736
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setCanceledOnTouchOutside(Z)V

    .line 737
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 739
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 740
    .local v6, windowSize:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 741
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    .line 742
    .local v4, view:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 743
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 746
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v13, :cond_1

    .line 747
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-double v7, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 752
    :goto_0
    const/4 v5, 0x0

    .line 754
    .local v5, volume:I
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 758
    :goto_1
    if-nez v5, :cond_3

    .line 759
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "com.android.internal.R.drawable.zzzz_icon_launcher_profile_silent"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 761
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 762
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 775
    :goto_2
    new-instance v7, Lcom/htc/music/HtcMusic$6;

    invoke-direct {v7, p0}, Lcom/htc/music/HtcMusic$6;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 813
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->showByGravity(I)V

    .line 814
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetTimeout()V

    .line 815
    return-void

    .line 749
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #volume:I
    :cond_1
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-double v7, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 755
    .restart local v5       #volume:I
    :catch_0
    move-exception v2

    .line 756
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 764
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "com.android.internal.R.drawable.zzzz_ic_lock_silent_mode"

    invoke-static {v9}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 767
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "com.android.internal.R.drawable.zzzz_icon_launcher_sound_display"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 769
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 770
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 772
    :cond_4
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "com.android.internal.R.drawable.zzzz_ic_lock_silent_mode_off"

    invoke-static {v9}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private cycleRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3775
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 3798
    :goto_0
    return-void

    .line 3779
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 3780
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 3781
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3782
    const v1, 0x7f070055

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3794
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    goto :goto_0

    .line 3795
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3783
    .restart local v0       #mode:I
    :cond_1
    if-ne v0, v2, :cond_3

    .line 3784
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3785
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3786
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3787
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 3789
    :cond_2
    const v1, 0x7f070054

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    .line 3791
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3792
    const v1, 0x7f070053

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private detachNowPlayingView()V
    .locals 3

    .prologue
    .line 6560
    const v2, 0x7f08006a

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6561
    .local v0, glanceContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 6562
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 6564
    .local v1, nowPlayingIndex:I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 6567
    .end local v1           #nowPlayingIndex:I
    :cond_0
    return-void
.end method

.method private doPauseResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 3712
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 3713
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3714
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 3715
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 3716
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 3735
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 3739
    :cond_0
    :goto_1
    return-void

    .line 3718
    :cond_1
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3721
    .local v0, isMirrorPlayOnTV:Z
    :goto_2
    if-eqz v0, :cond_3

    .line 3722
    const-string v3, "[HtcMusic]"

    const-string v4, "doPauseResume TV is on"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3723
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V

    goto :goto_1

    .line 3737
    .end local v0           #isMirrorPlayOnTV:Z
    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    move v0, v3

    .line 3718
    goto :goto_2

    .line 3727
    .restart local v0       #isMirrorPlayOnTV:Z
    :cond_3
    const-string v3, "[HtcMusic]"

    const-string v4, "doPauseResume TV is off"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3728
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 3729
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 3730
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v1

    .line 3731
    .local v1, next:J
    invoke-direct {p0, v1, v2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private doSearch()V
    .locals 2

    .prologue
    .line 3247
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3249
    return-void
.end method

.method private doStart()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1929
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    if-eqz v5, :cond_1

    .line 1931
    const-string v5, "[HtcMusic]"

    const-string v6, "mStartActionFinished is true,then return"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    :cond_0
    :goto_0
    return-void

    .line 1936
    :cond_1
    const-string v5, "[HtcMusic]"

    const-string v6, "[HtcMusic][doStart Begin]"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    if-nez v5, :cond_0

    .line 1938
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1942
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1943
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 1944
    const-string v5, "directmode"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 1945
    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get intent directmode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    :cond_2
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v5, :cond_3

    .line 1949
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1951
    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1952
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1953
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1955
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1956
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1961
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1962
    .local v2, f2:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1963
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1964
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1965
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1966
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1968
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1969
    .local v1, f:Landroid/content/IntentFilter;
    const-string v5, "com.htc.music.playstatechanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1970
    const-string v5, "com.htc.music.metachanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1971
    const-string v5, "com.htc.music.playbackcomplete"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1972
    const-string v5, "com.htc.music.rotateleft"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1973
    const-string v5, "com.htc.music.rotateright"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1974
    const-string v5, "com.htc.music.rotatecircle_next"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1975
    const-string v5, "com.htc.music.rotatecircle_previous"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1976
    const-string v5, "com.htc.music.rotatequickly"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1977
    const-string v5, "com.htc.music.queuechanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1978
    const-string v5, "com.htc.music.shuffle"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1979
    const-string v5, "com.htc.music.refresh"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1980
    const-string v5, "com.htc.music.changeart"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1981
    const-string v5, "com.htc.music.onerror"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1982
    const-string v5, "com.broadcom.bluetooth.avrcp"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1983
    const-string v5, "com.htc.music.pluginservicebinded"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1985
    const-string v5, "com.htc.music.bufferring"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1986
    const-string v5, "com.htc.music.asyncopen"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1987
    const-string v5, "com.htc.music.asyncopencomplete"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1988
    const-string v5, "com.htc.music.timeout"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1990
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1992
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1993
    .local v3, fDMCSvc:Landroid/content/IntentFilter;
    const-string v5, "com.htc.music.dmcservice.released"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1994
    const-string v5, "com.htc.music.dmcservice.repeat_changed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1995
    const-string v5, "com.htc.music.dmcservice.shuffle_changed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1996
    const-string v5, "com.htc.music.dmcservice.dlna_connected"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1997
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1999
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2000
    .local v0, dlArtFilter:Landroid/content/IntentFilter;
    const-string v5, "action_complete_one_download"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2001
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2003
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 2004
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2006
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2007
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_5

    .line 2008
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2012
    :cond_5
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v5, :cond_6

    .line 2013
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v5}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 2016
    :cond_6
    const-string v5, "[HtcMusic]"

    const-string v6, "[HtcMusic][doStart End]"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private genLyricsByCurrentMusicMode(Z)Lcom/htc/music/lyrics/Lyrics;
    .locals 4
    .parameter "isOnlineMode"

    .prologue
    .line 9536
    const/4 v0, 0x0

    .line 9537
    .local v0, lyrics:Lcom/htc/music/lyrics/Lyrics;
    if-eqz p1, :cond_1

    .line 9538
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsLyricsLoading:Z

    if-nez v1, :cond_0

    .line 9539
    const-string v1, "[HtcMusic]"

    const-string v2, "Since lyric is null, then start async query lyric"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9540
    new-instance v1, Lcom/htc/music/online/util/AsyncSongDetailGetter;

    invoke-direct {v1, p0}, Lcom/htc/music/online/util/AsyncSongDetailGetter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricsGetter:Lcom/htc/music/online/util/AsyncSongDetailGetter;

    .line 9541
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricsGetter:Lcom/htc/music/online/util/AsyncSongDetailGetter;

    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSongId:I

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->onSongLyricLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/online/util/AsyncSongDetailGetter;->start(ILcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;)V

    .line 9549
    :goto_0
    return-object v0

    .line 9543
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "Lyrics is loading, do not load again"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9547
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/music/lyrics/LyricGenerator;->genLyrics(Ljava/lang/String;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    goto :goto_0
.end method

.method private getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9172
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 9174
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 9179
    :goto_0
    return-object v1

    .line 9175
    :catch_0
    move-exception v0

    .line 9176
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9179
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getAlbumQueuePosition()I
    .locals 3

    .prologue
    .line 5618
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5621
    :goto_0
    return v1

    .line 5619
    :catch_0
    move-exception v0

    .line 5620
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "[HtcMusic]"

    const-string v2, " getAlbumQueuePosition() : "

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5621
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getCurrentLyricPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9403
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 9404
    const/4 v2, 0x0

    .line 9420
    :cond_0
    :goto_0
    return-object v2

    .line 9406
    :cond_1
    const-string v2, ""

    .line 9407
    .local v2, lyricPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 9408
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 9410
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v3

    iput v3, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 9411
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    iput v3, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 9412
    iget v3, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {v0, v3}, Lcom/htc/music/lyrics/QueryLyric;->QueryFromId(Landroid/content/ContentResolver;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 9414
    :catch_0
    move-exception v1

    .line 9416
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentSongId()I
    .locals 3

    .prologue
    .line 9424
    const/4 v1, 0x0

    .line 9425
    .local v1, songId:I
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 9426
    const/4 v2, 0x0

    .line 9437
    :goto_0
    return v2

    .line 9429
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9430
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getSongId()I

    move-result v1

    :goto_1
    move v2, v1

    .line 9437
    goto :goto_0

    .line 9432
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 9434
    :catch_0
    move-exception v0

    .line 9435
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;
    .locals 3

    .prologue
    .line 9554
    invoke-static {}, Lcom/htc/music/lyrics/LyricGenerator;->getCurrentLyrics()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    .line 9555
    .local v0, lyrics:Lcom/htc/music/lyrics/Lyrics;
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getCurrentSongId()I

    move-result v1

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSongId:I

    .line 9556
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getCurrentLyricPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPath:Ljava/lang/String;

    .line 9558
    if-nez v0, :cond_2

    .line 9559
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->genLyricsByCurrentMusicMode(Z)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    .line 9607
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 9608
    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSongId:I

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/Lyrics;->setCurrentSongId(I)V

    .line 9610
    :cond_1
    return-object v0

    .line 9561
    :cond_2
    invoke-virtual {v0}, Lcom/htc/music/lyrics/Lyrics;->getCurrentSongId()I

    move-result v1

    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSongId:I

    if-eq v1, v2, :cond_0

    .line 9562
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->genLyricsByCurrentMusicMode(Z)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    goto :goto_0
.end method

.method private getShareIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;
    .locals 6
    .parameter "bundle"
    .parameter "isUseCommonText"

    .prologue
    .line 9204
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9205
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "text/plain"

    .line 9206
    .local v2, type:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 9207
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9208
    const/4 v1, 0x0

    .line 9209
    .local v1, text:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 9210
    const-string v3, "use_common_text"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9211
    const-string v3, "music.intent.extra.track"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "music.intent.extra.album"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "music.intent.extra.artist"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9213
    if-nez v1, :cond_0

    .line 9214
    const-string v1, ""

    .line 9217
    :cond_0
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9218
    return-object v0
.end method

.method private getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSong;
    .locals 8
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 9241
    const/4 v3, 0x0

    .line 9242
    .local v3, albumid:I
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 9244
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 9249
    :cond_0
    :goto_0
    const-string v4, ""

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/online/Util;->getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v7

    .line 9250
    .local v7, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    return-object v7

    .line 9245
    .end local v7           #song:Lcom/htc/music/online/sinamusic/WrapperSong;
    :catch_0
    move-exception v6

    .line 9246
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleDMCError(I)V
    .locals 3
    .parameter "errorId"

    .prologue
    const/16 v1, 0x18

    const/4 v2, 0x1

    .line 8799
    packed-switch p1, :pswitch_data_0

    .line 8848
    const-string v0, "[HtcMusic]"

    const-string v1, "handle dmc error - unknown error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8849
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    .line 8855
    :goto_0
    return-void

    .line 8801
    :pswitch_0
    const v0, 0x7f070068

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 8802
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 8807
    :pswitch_1
    const v0, 0x7f0700e0

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 8808
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 8813
    :pswitch_2
    const v0, 0x7f0700e1

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_0

    .line 8818
    :pswitch_3
    const v0, 0x7f0700d6

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 8819
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 8824
    :pswitch_4
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8825
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 8827
    :cond_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 8833
    :pswitch_5
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8834
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 8836
    :cond_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 8842
    :pswitch_6
    const v0, 0x7f0700df

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 8843
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 8799
    :pswitch_data_0
    .packed-switch -0x2717
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTVReadyToPlay()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 9057
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v5, :cond_0

    .line 9094
    :goto_0
    return-void

    .line 9061
    :cond_0
    const/4 v1, 0x0

    .line 9062
    .local v1, isDMCOrPush:Z
    const/4 v2, 0x0

    .line 9064
    .local v2, isQueueEmpty:Z
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    .line 9065
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 9066
    .local v4, queueLength:I
    if-gtz v4, :cond_1

    .line 9067
    const/4 v2, 0x1

    .line 9073
    .end local v4           #queueLength:I
    :cond_1
    :goto_1
    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTVReadyToPlay, isDMCOrPush: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9075
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 9076
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    if-nez v5, :cond_2

    .line 9077
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    .line 9078
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-virtual {v5, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 9079
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    invoke-virtual {v5, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    goto :goto_0

    .line 9069
    :catch_0
    move-exception v0

    .line 9070
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 9081
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v3, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v3}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 9082
    .local v3, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v9, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 9083
    const-string v5, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 9084
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 9085
    const-string v5, "HtcMusic"

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 9087
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v5, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 9089
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    goto :goto_0

    .line 9092
    .end local v3           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_3
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    goto :goto_0
.end method

.method private hideLyricView()V
    .locals 2

    .prologue
    .line 9339
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    .line 9344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    .line 9345
    return-void
.end method

.method private initConstant()V
    .locals 3

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 979
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 980
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 981
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    .line 982
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    .line 992
    return-void
.end method

.method private initGlider()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 966
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v0, :cond_0

    .line 968
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 970
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 973
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 975
    :cond_0
    return-void
.end method

.method private initLyricView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 9357
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v1, :cond_1

    .line 9400
    :cond_0
    :goto_0
    return-void

    .line 9360
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v1, :cond_2

    .line 9361
    const-string v1, "[HtcMusic]"

    const-string v2, "mPresentation is null when initLyricView"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9365
    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-nez v1, :cond_3

    .line 9367
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_5

    .line 9368
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9376
    .local v0, lyricLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    new-instance v1, Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-direct {v1, p0, v0}, Lcom/htc/music/lyrics/widget/LyricsView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    .line 9377
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mOnScrollSeekListener:Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;

    invoke-virtual {v1, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->setOnScrollSeekListener(Lcom/htc/music/lyrics/widget/LyricsView$OnScrollSeekListener;)V

    .line 9380
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    if-eqz v1, :cond_6

    .line 9381
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    .line 9385
    :goto_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 9388
    .end local v0           #lyricLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsLyricPanelInit:Z

    if-nez v1, :cond_0

    .line 9389
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-eqz v1, :cond_4

    .line 9390
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v1}, Lcom/htc/music/lyrics/widget/LyricsView;->initEnv()V

    .line 9391
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsLyricPanelInit:Z

    .line 9394
    :cond_4
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 9395
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 9372
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0       #lyricLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 9383
    :cond_6
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    goto :goto_2
.end method

.method private initPlayerInfo()V
    .locals 8

    .prologue
    .line 1041
    const v3, 0x7f080015

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    .line 1042
    const v3, 0x7f080016

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    .line 1044
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1046
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f080038

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    .line 1047
    const v3, 0x7f080039

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    .line 1049
    const v3, 0x7f08005a

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    .line 1051
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v3, :cond_0

    .line 1052
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v4, "common_b_circle_outer"

    const v5, 0x2080007

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_b_circle_pressed"

    const v6, 0x2080008

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "common_b_circle_rest"

    const v7, 0x2080009

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1056
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x7f020027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1057
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    :cond_0
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcSeekBar;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    .line 1061
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03005a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1062
    .local v1, popupContent:Landroid/view/View;
    const v3, 0x7f0800b4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    .line 1063
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;-><init>(Landroid/content/Context;)V

    .line 1064
    .local v0, mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBarPopupWindowListener;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setContentView(Landroid/view/View;)V

    .line 1065
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcSeekBar;->setHtcSeekBarPopupWindowListener(Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;)V

    .line 1066
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1068
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 1069
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setDisplayMode(I)V

    .line 1072
    const v3, 0x7f08006b

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    .line 1073
    return-void
.end method

.method private initPresentation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1000
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v0, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v0, :cond_1

    .line 1010
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 1012
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 1014
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAlpha(I)V

    .line 1015
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setEdgeItemScrollRatio(F)V

    .line 1016
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnSelectionChangeListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;)V

    .line 1017
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnStateListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;)V

    .line 1018
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledReflection(Z)V

    .line 1019
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setShiftOneItemMode(Z)V

    .line 1021
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-nez v0, :cond_2

    .line 1031
    new-instance v0, Lcom/htc/music/GliderAdapter;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/GliderAdapter;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 1033
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 1034
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnLayoutListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;)V

    goto :goto_0

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->reload()V

    goto :goto_0
.end method

.method private initSoundEnhancer()V
    .locals 2

    .prologue
    .line 1279
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v0, v1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 1282
    return-void
.end method

.method private initTaskbar()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x104

    const v8, 0x2080016

    const v7, 0x2080015

    const v6, 0x2080014

    const/4 v5, 0x0

    .line 1078
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/RepeatingImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    .line 1081
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-nez v0, :cond_0

    .line 1082
    const-string v0, "[HtcMusic]"

    const-string v1, "can;t find task_bar_imgbtn_2 is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    const v1, 0x20800c0

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setIconResource(I)V

    .line 1089
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    const-string v1, "common_b_transport_outer"

    invoke-static {p0, v1, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_b_transport_pressed"

    invoke-static {p0, v2, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "common_b_transport_rest"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/widget/RepeatingImageButton;->setButtonBackgroundResource(III)V

    .line 1096
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v9, v10}, Lcom/htc/music/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;J)V

    .line 1101
    :cond_1
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    .line 1102
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v1, "common_b_transport_large_outer"

    const-string v2, "com.htc.R.drawable.common_b_transport_large_outer"

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_b_transport_large_pressed"

    const-string v3, "com.htc.R.drawable.common_b_transport_large_pressed"

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "common_b_transport_large_rest"

    const-string v4, "com.htc.R.drawable.common_b_transport_large_rest"

    invoke-static {v4}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1106
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimImageButton;->requestFocus()Z

    .line 1107
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/RepeatingImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    .line 1112
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-nez v0, :cond_2

    .line 1113
    const-string v0, "[HtcMusic]"

    const-string v1, "can;t find task_bar_imgbtn_4 is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1119
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    const v1, 0x20800b4

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setIconResource(I)V

    .line 1120
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    const-string v1, "common_b_transport_outer"

    invoke-static {p0, v1, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_b_transport_pressed"

    invoke-static {p0, v2, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "common_b_transport_rest"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/widget/RepeatingImageButton;->setButtonBackgroundResource(III)V

    .line 1127
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1128
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v9, v10}, Lcom/htc/music/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;J)V

    .line 1132
    :cond_3
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    .line 1133
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_4

    .line 1134
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1135
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcImageButton;->setFocusable(Z)V

    .line 1136
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 1141
    :goto_0
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    .line 1142
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_5

    .line 1143
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcImageButton;->setFocusable(Z)V

    .line 1145
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 1149
    :goto_1
    return-void

    .line 1138
    :cond_4
    const-string v0, "[HtcMusic]"

    const-string v1, "initRightpanel, mShuffleButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    :cond_5
    const-string v0, "[HtcMusic]"

    const-string v1, "initRightpanel, mRepeatButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initTitleBar()V
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 1177
    :goto_0
    return-void

    .line 1159
    :cond_0
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    .line 1161
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 1162
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 1164
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 1170
    const-string v0, " "

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1175
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initToolTip()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1243
    sget-object v3, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    .line 1247
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    if-nez v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 1251
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isMusicStoreEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    .line 1252
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    if-nez v3, :cond_0

    .line 1253
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    .line 1257
    :cond_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    if-nez v3, :cond_1

    .line 1258
    const v3, 0x7f080071

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 1259
    .local v2, hit_stub:Landroid/view/ViewStub;
    invoke-virtual {v2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, hint_toast_library:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 1263
    .local v1, hint_toast_playlisy:Landroid/widget/TextView;
    const v3, 0x7f080072

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    .line 1264
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1265
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1266
    const v3, 0x7f080078

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #hint_toast_library:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 1267
    .restart local v0       #hint_toast_library:Landroid/widget/TextView;
    const v3, 0x7f0700c4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1268
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1269
    const v3, 0x7f080079

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #hint_toast_playlisy:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 1270
    .restart local v1       #hint_toast_playlisy:Landroid/widget/TextView;
    const v3, 0x7f0700c5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1271
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1272
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/16 v6, 0x12c

    invoke-static {v3, v4, v5, v7, v6}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    .line 1276
    .end local v0           #hint_toast_library:Landroid/widget/TextView;
    .end local v1           #hint_toast_playlisy:Landroid/widget/TextView;
    .end local v2           #hit_stub:Landroid/view/ViewStub;
    :cond_1
    return-void
.end method

.method private initialUI()V
    .locals 12

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2200
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-nez v7, :cond_0

    .line 2201
    const-string v7, "[HtcMusic]"

    const-string v8, "mNonUiHandler is null, this means activity should be destroyed!! return directly"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    :goto_0
    return-void

    .line 2206
    :cond_0
    const v7, 0x7f08006a

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2207
    .local v3, mainContainer:Landroid/view/View;
    if-nez v3, :cond_1

    .line 2208
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2209
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v7, 0x7f03002b

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2210
    const v7, 0x7f080034

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2211
    .local v0, group:Landroid/view/ViewGroup;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2217
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    .line 2221
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    .line 2223
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    .line 2224
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    .line 2225
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initToolTip()V

    .line 2228
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    :cond_1
    const/16 v7, 0x12

    iput v7, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 2233
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2235
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 2236
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 2237
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 2238
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 2240
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    .line 2241
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    .line 2243
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v4

    .line 2244
    .local v4, next:J
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_2

    .line 2246
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2247
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2264
    :cond_2
    :goto_1
    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/16 v9, 0x12c

    invoke-static {v3, v7, v8, v10, v9}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    .line 2267
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mIsShowingDialog:Z

    .line 2268
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->shouldDisplayProgress()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2269
    const-string v7, "[HtcMusic]"

    const-string v8, "show DownloadProgressDialog and disable mProgress&mPauseButton in HtcMusic.initialUI()"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    sget-boolean v6, Lcom/htc/music/util/MusicUtils;->mIsConnectionFailed:Z

    .line 2271
    .local v6, timeout:Z
    sget-boolean v2, Lcom/htc/music/util/MusicUtils;->mIs3GWap:Z

    .line 2272
    .local v2, is3gwap:Z
    if-eqz v2, :cond_5

    .line 2273
    invoke-static {p0}, Lcom/htc/music/online/Util;->is3GWap(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2274
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->WapNetworkAction()V

    .line 2276
    :cond_3
    sput-boolean v10, Lcom/htc/music/util/MusicUtils;->mIs3GWap:Z

    .line 2285
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 2286
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 2287
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mIsInialLoading:Z

    .line 2296
    .end local v2           #is3gwap:Z
    .end local v6           #timeout:Z
    :goto_3
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Lcom/htc/music/HtcMusic$showGliderUIIdleHandler;

    invoke-direct {v8, p0}, Lcom/htc/music/HtcMusic$showGliderUIIdleHandler;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto/16 :goto_0

    .line 2277
    .restart local v2       #is3gwap:Z
    .restart local v6       #timeout:Z
    :cond_5
    if-eqz v6, :cond_7

    .line 2278
    invoke-static {p0}, Lcom/htc/music/online/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2279
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->timeoutAction()V

    .line 2281
    :cond_6
    sput-boolean v10, Lcom/htc/music/util/MusicUtils;->mIsConnectionFailed:Z

    goto :goto_2

    .line 2282
    :cond_7
    if-nez v6, :cond_4

    if-nez v2, :cond_4

    .line 2283
    invoke-direct {p0, v11}, Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V

    goto :goto_2

    .line 2289
    .end local v2           #is3gwap:Z
    .end local v6           #timeout:Z
    :cond_8
    const-string v7, "[HtcMusic]"

    const-string v8, "Close DownloadProgressDialog and enable mProgress&mPauseButton in HtcMusic.initialUI()"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V

    .line 2291
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 2292
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    goto :goto_3

    .line 2248
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private initializeSoundEffectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7733
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectStyles()V

    .line 7735
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7739
    const/4 v2, 0x0

    .line 7740
    .local v2, item:Lcom/htc/music/util/SoundEffectItem;
    const-string v3, ""

    .line 7741
    .local v3, seStyle:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    .line 7742
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v6, v0

    .line 7744
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7745
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .line 7760
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectIconResourceId(ILandroid/content/Context;)I

    move-result v6

    iput v6, v2, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    .line 7764
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7747
    :cond_0
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v6, v0, :cond_1

    .line 7750
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .line 7751
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v6, v6, v8

    iput-object v6, v2, Lcom/htc/music/util/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    .line 7752
    iput-boolean v9, v2, Lcom/htc/music/util/SoundEffectItem;->mNeedButton:Z

    .line 7753
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 7755
    :cond_1
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    goto :goto_1

    .line 7773
    .end local v0           #i:I
    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    .end local v3           #seStyle:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v6, v7}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v4

    .line 7776
    .local v4, selectedStyleIndex:I
    const/4 v2, 0x0

    .line 7778
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 7779
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v1

    .line 7796
    .local v1, isBeatHeadset:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_14

    .line 7797
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 7799
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    if-ne v4, v0, :cond_6

    .line 7800
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_3

    .line 7801
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 7804
    :cond_3
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 7805
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 7810
    :goto_3
    if-eqz v1, :cond_8

    .line 7812
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_4

    .line 7813
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setText(Ljava/lang/String;)V

    .line 7815
    :cond_4
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    if-eq v0, v6, :cond_5

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_7

    .line 7817
    :cond_5
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    .line 7796
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7807
    :cond_6
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_3

    .line 7819
    :cond_7
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_4

    .line 7822
    :cond_8
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_9

    .line 7823
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setText(Ljava/lang/String;)V

    .line 7825
    :cond_9
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    if-eq v0, v6, :cond_a

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_b

    .line 7827
    :cond_a
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_4

    .line 7829
    :cond_b
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_4

    .line 7833
    .end local v0           #i:I
    .end local v1           #isBeatHeadset:Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_13

    .line 7834
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 7835
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 7836
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    iget-object v7, v2, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 7837
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_d

    .line 7838
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 7841
    :cond_d
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 7842
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 7860
    :goto_6
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    if-ne v0, v6, :cond_12

    .line 7861
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    .line 7833
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7844
    :cond_e
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_6

    .line 7847
    :cond_f
    if-ne v4, v0, :cond_11

    .line 7848
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_10

    .line 7849
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 7852
    :cond_10
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 7853
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    goto :goto_6

    .line 7855
    :cond_11
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_6

    .line 7863
    :cond_12
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_7

    .line 7867
    :cond_13
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentEqualizerStyleIndex(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 7870
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/SoundEffectItem;

    .line 7872
    .local v5, soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    .line 7874
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    if-eqz v6, :cond_17

    .line 7875
    const/4 v6, -0x1

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    if-ne v6, v7, :cond_16

    .line 7876
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    .line 7878
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    .line 7879
    iget v6, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    iput v6, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 7890
    :goto_8
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 7893
    .end local v5           #soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    :cond_14
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    if-eqz v6, :cond_15

    .line 7894
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-virtual {v6}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    .line 7896
    :cond_15
    return-void

    .line 7881
    .restart local v5       #soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    :cond_16
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    .line 7883
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    goto :goto_8

    .line 7886
    :cond_17
    const-string v6, "[HtcMusic]"

    const-string v7, "initializeSoundEffectDialog(), LocalizedEqualizerStylesFromDevice is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private isOnlineMode()Z
    .locals 4

    .prologue
    .line 9113
    const/4 v1, 0x0

    .line 9115
    .local v1, isOnline:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 9116
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z

    move-result v1

    .line 9124
    :goto_0
    return v1

    .line 9118
    :cond_0
    const-string v2, "[HtcMusic]"

    const-string v3, "mService is null in HtcMusic.isOnlineMode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9120
    :catch_0
    move-exception v0

    .line 9122
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchDMR(IZ)V
    .locals 4
    .parameter "directMode"
    .parameter "autoSearch"

    .prologue
    .line 1486
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1488
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 1489
    const-string v2, "com.htc.dmc.ACTION_AUTO_SEARCH_RENDERER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1490
    const-string v2, "cookie"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1497
    :goto_0
    const-string v2, "directmode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1500
    const/16 v2, 0x25

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :goto_1
    return-void

    .line 1493
    :cond_0
    const-string v2, "com.htc.dmc"

    const-string v3, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    const-string v2, "cookie"

    const-string v3, "HtcMusic"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1501
    :catch_0
    move-exception v0

    .line 1502
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    const-string v3, "launchDMR, start DMR list activity fail"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private launchGlobalSoundEffectSetting()V
    .locals 3

    .prologue
    .line 7902
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7903
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7904
    const v1, 0x2040255

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7905
    const-string v1, "[HtcMusic]"

    const-string v2, "launchGlobalSoundEffectSetting, Beats do not support HDMI out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7916
    :goto_0
    return-void

    .line 7908
    :cond_0
    const v1, 0x7f0700a4

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7909
    const-string v1, "[HtcMusic]"

    const-string v2, "launchGlobalSoundEffectSetting, Beats do not support Speaker out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7914
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.HtcSoundEnhancerSetting.ShowSettingPage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7915
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchProperty()V
    .locals 2

    .prologue
    .line 3323
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 3324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3326
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3327
    const-class v1, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3328
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 3333
    :goto_0
    return-void

    .line 3330
    :cond_0
    const-class v1, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3331
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private localizeEqualizerStyle([Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "eqStyles"

    .prologue
    const/4 v11, 0x0

    .line 8279
    if-nez p1, :cond_0

    .line 8280
    const-string v10, "[HtcMusic]"

    const-string v11, "localizeEqualizerStyles, eqStyles should not be null!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8281
    const/4 p1, 0x0

    .line 8319
    .end local p1
    :goto_0
    return-object p1

    .line 8284
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 8285
    .local v8, resource:Landroid/content/res/Resources;
    const v10, 0x7f060019

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 8288
    .local v2, eqStylesFromRes:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 8289
    const-string v10, "[HtcMusic]"

    const-string v11, "localizeEqualizerStyles, eqStylesFromRes should not be null!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8294
    :cond_1
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EQStylesNotFromDevice:[Ljava/lang/String;

    array-length v5, v10

    .line 8295
    .local v5, iEQNotFromDeviceSize:I
    array-length v4, p1

    .line 8296
    .local v4, iEQFromDeviceSize:I
    add-int v1, v4, v5

    .line 8298
    .local v1, eqStyleNum:I
    new-array v7, v1, [Ljava/lang/String;

    .line 8299
    .local v7, localizedEQStyles:[Ljava/lang/String;
    new-array v9, v1, [Ljava/lang/String;

    .line 8300
    .local v9, totalEQ:[Ljava/lang/String;
    invoke-static {p1, v11, v9, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8301
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EQStylesNotFromDevice:[Ljava/lang/String;

    invoke-static {v10, v11, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8303
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 8304
    const/4 v0, -0x1

    .line 8305
    .local v0, correspondingPos:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    array-length v10, v10

    if-ge v6, v10, :cond_2

    .line 8306
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    aget-object v10, v10, v6

    aget-object v11, v9, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 8307
    move v0, v6

    .line 8308
    aget-object v10, v2, v6

    aput-object v10, v7, v3

    .line 8303
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8311
    :cond_3
    const/4 v10, -0x1

    if-ne v0, v10, :cond_4

    .line 8312
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "localizeEqualizerStyles, no match, eqStyles["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8314
    aget-object v10, v9, v3

    aput-object v10, v7, v3

    .line 8305
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v0           #correspondingPos:I
    .end local v6           #j:I
    :cond_5
    move-object p1, v7

    .line 8319
    goto :goto_0
.end method

.method private onActionMenuSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2816
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    move v5, v6

    .line 2889
    :goto_0
    return v5

    .line 2819
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->closeDMC()V

    goto :goto_0

    .line 2823
    :sswitch_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 2824
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3a9a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2826
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V

    goto :goto_0

    .line 2838
    :sswitch_2
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    if-nez v7, :cond_1

    .line 2839
    const-string v7, "[HtcMusic]"

    const-string v8, "mSoundHoundIntent is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2840
    goto :goto_0

    .line 2843
    :cond_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2844
    :catch_0
    move-exception v2

    .line 2845
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "[HtcMusic]"

    const-string v7, "can\'t find SoundHound activity!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2850
    .end local v2           #e:Ljava/lang/Exception;
    :sswitch_3
    new-array v1, v5, [Ljava/lang/String;

    .line 2851
    .local v1, dataPathArray:[Ljava/lang/String;
    iget v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v7}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 2852
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 2853
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2854
    const-string v7, "_data"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 2855
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2856
    const/4 v0, 0x0

    .line 2858
    :cond_2
    new-instance v4, Ljava/lang/String;

    const-string v6, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2860
    .local v4, szAction:Ljava/lang/String;
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "upload"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2861
    :catch_1
    move-exception v3

    .line 2863
    .local v3, ex:Ljava/lang/SecurityException;
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "We do not have permission to start the service :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2868
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #dataPathArray:[Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/SecurityException;
    .end local v4           #szAction:Ljava/lang/String;
    :sswitch_4
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-nez v7, :cond_3

    .line 2869
    const-string v5, "[HtcMusic]"

    const-string v7, "onActionMenuSelected MENU_LYRIC_ID, mLyricPanel is null"

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2870
    goto/16 :goto_0

    .line 2874
    :cond_3
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v6}, Lcom/htc/music/lyrics/widget/LyricsView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 2876
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->hideLyricView()V

    .line 2877
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateLyricMenu()V

    goto/16 :goto_0

    .line 2881
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showLyricView()V

    .line 2882
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateLyricMenu()V

    goto/16 :goto_0

    .line 2816
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_3
        0x2c -> :sswitch_1
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private onAnimationRotateSelf(Z)V
    .locals 4
    .parameter "bNext"

    .prologue
    .line 5309
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 5329
    :goto_0
    return-void

    .line 5313
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5315
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 5318
    :cond_1
    iget v2, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 5319
    .local v0, bAnimated:Z
    :goto_1
    if-nez v0, :cond_3

    .line 5320
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 5321
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5326
    .end local v0           #bAnimated:Z
    :catch_0
    move-exception v1

    .line 5327
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5318
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 5324
    .restart local v0       #bAnimated:Z
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 5325
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSelection()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->rotateSelf(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onCreateActionMenu(Landroid/view/Menu;)V
    .locals 12
    .parameter "menu"

    .prologue
    const/16 v11, 0x32

    const/16 v10, 0x2c

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2584
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2585
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 2634
    :cond_0
    :goto_0
    return-void

    .line 2588
    :cond_1
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2589
    .local v1, lyric:Landroid/view/MenuItem;
    if-nez v1, :cond_0

    .line 2594
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    .line 2596
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    .line 2597
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const/high16 v5, 0x1400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2598
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v5, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v6, "htc"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2599
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v5, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2600
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v4}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 2601
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-nez v4, :cond_2

    .line 2602
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v5, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2603
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v4}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 2605
    :cond_2
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-eqz v4, :cond_3

    .line 2606
    const/16 v4, 0x2d

    const v5, 0x7f0701d1

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02003d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2611
    :cond_3
    const v4, 0x7f0700f5

    invoke-interface {p1, v7, v10, v9, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02002c

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2613
    .local v3, queue:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-nez v4, :cond_4

    .line 2614
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 2619
    :cond_4
    const v4, 0x7f0701f1

    invoke-interface {p1, v7, v11, v9, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020026

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2621
    .local v2, menuItem_lyric:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-nez v4, :cond_5

    .line 2622
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 2627
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2628
    const/16 v4, 0x2e

    const v5, 0x7f0700f6

    invoke-interface {p1, v7, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x20800a3

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0
.end method

.method private onPrepareActionMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2637
    const/16 v4, 0x2c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2638
    .local v3, queue:Landroid/view/MenuItem;
    if-nez v3, :cond_1

    .line 2639
    const-string v4, "[HtcMusic]"

    const-string v5, "can\'t find queue menu item!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    :cond_0
    :goto_0
    return-void

    .line 2643
    :cond_1
    const/16 v4, 0x32

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2644
    .local v2, lyric:Landroid/view/MenuItem;
    if-nez v2, :cond_2

    .line 2645
    const-string v4, "[HtcMusic]"

    const-string v5, "can\'t find lyric menu item!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2649
    :cond_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 2650
    .local v1, dlnaMode:I
    if-nez v1, :cond_5

    .line 2651
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_4

    .line 2652
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2660
    :goto_1
    const/16 v4, 0x2e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2661
    .local v0, close:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2662
    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    .line 2664
    :cond_3
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2654
    .end local v0           #close:Landroid/view/MenuItem;
    :cond_4
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2657
    :cond_5
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2666
    .restart local v0       #close:Landroid/view/MenuItem;
    :cond_6
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private onServiceConnectedHandle()V
    .locals 24

    .prologue
    .line 3997
    const-string v21, "[HtcMusic]"

    const-string v22, "onServiceConnectedHandle() + "

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 4187
    :cond_0
    :goto_0
    return-void

    .line 3999
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 4002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4005
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 4006
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->initSoundEnhancer()V

    .line 4010
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 4011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4017
    :cond_4
    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 4020
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 4024
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 4025
    const-string v21, "[HtcMusic]"

    const-string v22, "Enter DirectMode ..."

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4027
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    .line 4029
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 4030
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 4031
    .local v12, intent:Landroid/content/Intent;
    if-eqz v12, :cond_6

    .line 4032
    const-string v21, "directmode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4039
    .end local v12           #intent:Landroid/content/Intent;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 4040
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 4103
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 4104
    .local v13, intent1:Landroid/content/Intent;
    const-string v10, ""

    .line 4105
    .local v10, filename:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 4106
    .local v20, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 4107
    .local v14, isDRM:Z
    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_c

    .line 4108
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 4109
    .local v19, scheme:Ljava/lang/String;
    const-string v21, "file"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 4110
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 4112
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/htc/music/util/DrmUtils;->DRMV2_VerifyRights(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v7

    .line 4114
    .local v7, drmValidRights:Z
    if-nez v7, :cond_a

    .line 4115
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 4035
    .end local v7           #drmValidRights:Z
    .end local v10           #filename:Ljava/lang/String;
    .end local v13           #intent1:Landroid/content/Intent;
    .end local v14           #isDRM:Z
    .end local v19           #scheme:Ljava/lang/String;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_8
    const-string v21, "[HtcMusic]"

    const-string v22, "Not DirectMode, normal ..."

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4043
    :pswitch_0
    :try_start_0
    const-string v21, "DLNA"

    const/16 v22, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 4045
    .local v18, pref:Landroid/content/SharedPreferences;
    const-string v21, "content"

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4046
    .local v5, content:Ljava/lang/String;
    const-string v21, "switchLocal"

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 4050
    .local v4, bSwitch:Z
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_7

    if-eqz v5, :cond_7

    .line 4051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 4052
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 4053
    .local v11, index:I
    const-string v21, "[HtcMusic]"

    const-string v22, "DLNA_LOCAL mode"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4054
    const-string v21, "[HtcMusic]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "index from DMC = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 4057
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "content"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "switchLocal"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4059
    const-string v21, "[HtcMusic]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "update index to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 4062
    .end local v4           #bSwitch:Z
    .end local v5           #content:Ljava/lang/String;
    .end local v11           #index:I
    .end local v18           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 4063
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 4068
    .end local v8           #e:Landroid/os/RemoteException;
    :pswitch_1
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->switchToDMP(Z)V

    goto/16 :goto_2

    .line 4073
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 4075
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v21

    if-nez v21, :cond_7

    .line 4076
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 4078
    :catch_1
    move-exception v8

    .line 4079
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v21, "[HtcMusic]"

    const-string v22, "DLNA_PUSH RemoteException in mService.isDmcOrPushMode()"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4080
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 4084
    .end local v8           #e:Landroid/os/RemoteException;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 4086
    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 4087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v21

    if-nez v21, :cond_7

    .line 4088
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToDMC(Landroid/content/Context;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 4090
    :catch_2
    move-exception v8

    .line 4091
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v21, "[HtcMusic]"

    const-string v22, "DLNA_DMC RemoteException in mService.isDmcOrPushMode()"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4092
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 4120
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v10       #filename:Ljava/lang/String;
    .restart local v13       #intent1:Landroid/content/Intent;
    .restart local v14       #isDRM:Z
    .restart local v19       #scheme:Ljava/lang/String;
    .restart local v20       #uri:Landroid/net/Uri;
    :cond_9
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4128
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 4129
    .local v6, curPath:Ljava/lang/String;
    if-eqz v6, :cond_b

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 4130
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mActivityPopup:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 4136
    .end local v6           #curPath:Ljava/lang/String;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 4137
    if-eqz v10, :cond_c

    const-string v21, "content://drm/"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 4138
    const/4 v14, 0x1

    .line 4144
    .end local v19           #scheme:Ljava/lang/String;
    :cond_c
    if-eqz v14, :cond_10

    .line 4145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    move/from16 v21, v0

    if-nez v21, :cond_f

    if-eqz v20, :cond_f

    .line 4146
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->checkDrmFile(Landroid/net/Uri;)V

    .line 4159
    :cond_d
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v15

    .line 4160
    .local v15, lyrics:Lcom/htc/music/lyrics/Lyrics;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/HtcMusic;->openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z

    .line 4162
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    .line 4164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 4165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 4166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v21, v0

    const v22, 0x2080001

    invoke-virtual/range {v21 .. v22}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setGlobalBackgroundResource(I)V

    .line 4186
    .end local v15           #lyrics:Lcom/htc/music/lyrics/Lyrics;
    :cond_e
    :goto_5
    const-string v21, "[HtcMusic]"

    const-string v22, "onServiceConnectedHandle() - "

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4132
    .restart local v19       #scheme:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 4133
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 4148
    .end local v8           #e:Ljava/lang/Exception;
    .end local v19           #scheme:Ljava/lang/String;
    :cond_f
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    .line 4150
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v16

    .line 4152
    .local v16, next:J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 4153
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 4154
    :catch_4
    move-exception v9

    .line 4155
    .local v9, ex:Ljava/lang/Exception;
    const-string v21, "[HtcMusic]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isDRM... Exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 4170
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v16           #next:J
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 4180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 4181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 4040
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z
    .locals 5
    .parameter "lyrics"

    .prologue
    const/4 v1, 0x0

    .line 9453
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-nez v2, :cond_0

    .line 9454
    const-string v2, "[HtcMusic]"

    const-string v3, "[openLyrics]mLyricPanel = null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9471
    :goto_0
    return v1

    .line 9457
    :cond_0
    if-nez p1, :cond_1

    .line 9459
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v1}, Lcom/htc/music/lyrics/widget/LyricsView;->showEmptyView()V

    .line 9471
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 9462
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/lyrics/Lyrics;->setCurrentPos(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9467
    :goto_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v2, p1}, Lcom/htc/music/lyrics/widget/LyricsView;->initLyricsView(Lcom/htc/music/lyrics/Lyrics;)Z

    .line 9468
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {p1}, Lcom/htc/music/lyrics/Lyrics;->getCurrentPos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->drawLyrics(JZ)J

    goto :goto_1

    .line 9463
    :catch_0
    move-exception v0

    .line 9465
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private queryUpdateAlbumArtSetting()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 8516
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8517
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "auto_download"

    aput-object v1, v2, v8

    .line 8518
    .local v2, mSettingColumns:[Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8521
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8522
    const-string v1, "auto_download"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v7

    .line 8525
    :goto_0
    return v1

    :cond_0
    move v1, v8

    .line 8522
    goto :goto_0

    :cond_1
    move v1, v8

    .line 8525
    goto :goto_0
.end method

.method private queueNextRefresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 4387
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    if-nez v1, :cond_0

    .line 4388
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4389
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4390
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4391
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4394
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private recoverNoEffectWithHDMI()V
    .locals 5

    .prologue
    .line 7683
    const/4 v1, 0x0

    .line 7686
    .local v1, recoverOriginal:Z
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7687
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 7688
    const/4 v1, 0x1

    .line 7692
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7693
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 7694
    const/4 v1, 0x1

    .line 7699
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v0

    .line 7702
    .local v0, currentSoundSetting:I
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v0, v2, :cond_2

    .line 7703
    const/4 v1, 0x1

    .line 7708
    :cond_2
    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v2, v3, :cond_3

    .line 7709
    const/4 v1, 0x1

    .line 7712
    :cond_3
    if-eqz v1, :cond_4

    .line 7713
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    .line 7720
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 7721
    const-string v2, "Original"

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 7722
    const v2, 0x2040255

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7724
    :cond_4
    return-void
.end method

.method private refreshNow()J
    .locals 15

    .prologue
    .line 4397
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v11, :cond_1

    .line 4398
    const-wide/16 v9, 0x1f4

    .line 4512
    :cond_0
    :goto_0
    return-wide v9

    .line 4400
    :cond_1
    :try_start_0
    iget-wide v11, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gez v11, :cond_7

    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v5

    .line 4401
    .local v5, pos:J
    :goto_1
    const-wide/16 v11, 0x3e8

    const-wide/16 v13, 0x3e8

    rem-long v13, v5, v13

    sub-long v9, v11, v13

    .line 4403
    .local v9, remaining:J
    const-wide/16 v1, -0x1

    .line 4405
    .local v1, nextLyricTime:J
    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-ltz v11, :cond_a

    iget-wide v11, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_a

    .line 4408
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getScrollY()I

    move-result v11

    if-lez v11, :cond_2

    .line 4409
    const-string v11, "[HtcMusic]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Time escpae: scrollX = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getScrollX()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", scrollY = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getScrollY()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4414
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->scrollTo(II)V

    .line 4416
    :cond_2
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const-wide/16 v12, 0x3e8

    div-long v12, v5, v12

    invoke-static {p0, v12, v13}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4419
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getScrollY()I

    move-result v11

    if-lez v11, :cond_3

    .line 4420
    const-string v11, "[HtcMusic]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Time left: scrollX = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getScrollX()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", scrollY = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getScrollY()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4423
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->scrollTo(II)V

    .line 4431
    :cond_3
    iget-wide v11, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long v13, v5, v13

    sub-long v7, v11, v13

    .line 4433
    .local v7, remain:J
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-lez v13, :cond_8

    .end local v7           #remain:J
    :goto_2
    invoke-static {p0, v7, v8}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4437
    const-wide/16 v11, 0x3e8

    mul-long v3, v11, v5

    .line 4438
    .local v3, number:J
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-wide v12, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    cmp-long v12, v3, v12

    if-lez v12, :cond_9

    .end local v3           #number:J
    :goto_3
    iget-wide v12, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    div-long v12, v3, v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 4441
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v11, :cond_4

    .line 4442
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v12, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->getBufferingPercent()I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    div-int/lit8 v12, v12, 0x64

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    .line 4446
    :cond_4
    invoke-static {}, Lcom/htc/music/lyrics/LyricGenerator;->getCurrentLyrics()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    .line 4448
    .local v0, lyrics:Lcom/htc/music/lyrics/Lyrics;
    if-eqz v0, :cond_6

    .line 4449
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-eqz v11, :cond_6

    iget-boolean v11, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    if-nez v11, :cond_6

    .line 4450
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v0}, Lcom/htc/music/lyrics/Lyrics;->getLyricType()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    .line 4452
    :cond_5
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v6, v12}, Lcom/htc/music/lyrics/widget/LyricsView;->drawLyrics(JZ)J

    move-result-wide v1

    .line 4453
    const-wide/16 v11, 0x0

    cmp-long v11, v1, v11

    if-gtz v11, :cond_6

    .line 4454
    const-wide/16 v1, -0x1

    .line 4497
    .end local v0           #lyrics:Lcom/htc/music/lyrics/Lyrics;
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->setProgressTimeIndicator()V

    .line 4504
    const-wide/16 v11, 0x0

    cmp-long v11, v1, v11

    if-lez v11, :cond_0

    .line 4505
    cmp-long v11, v9, v1

    if-ltz v11, :cond_0

    move-wide v9, v1

    goto/16 :goto_0

    .line 4400
    .end local v1           #nextLyricTime:J
    .end local v5           #pos:J
    .end local v9           #remaining:J
    :cond_7
    iget-wide v5, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto/16 :goto_1

    .line 4433
    .restart local v1       #nextLyricTime:J
    .restart local v5       #pos:J
    .restart local v7       #remain:J
    .restart local v9       #remaining:J
    :cond_8
    const-wide/16 v7, 0x0

    goto :goto_2

    .line 4438
    .end local v7           #remain:J
    .restart local v3       #number:J
    :cond_9
    iget-wide v3, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    goto :goto_3

    .line 4487
    .end local v3           #number:J
    :cond_a
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const-string v12, "--:--"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4488
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    const-string v12, "--:--"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4489
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 4491
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 4492
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    goto :goto_4

    .line 4509
    .end local v1           #nextLyricTime:J
    .end local v5           #pos:J
    .end local v9           #remaining:J
    :catch_0
    move-exception v11

    .line 4512
    :goto_5
    const-wide/16 v9, 0x1f4

    goto/16 :goto_0

    .line 4494
    .restart local v1       #nextLyricTime:J
    .restart local v5       #pos:J
    .restart local v9       #remaining:J
    :cond_b
    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 4510
    .end local v1           #nextLyricTime:J
    .end local v5           #pos:J
    .end local v9           #remaining:J
    :catch_1
    move-exception v11

    goto :goto_5
.end method

.method private registerTVDisplayHelper()V
    .locals 3

    .prologue
    .line 1811
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-nez v1, :cond_0

    .line 1812
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 1818
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1819
    .local v0, fDLNA:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.triggerplayinlibrary"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1820
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1821
    return-void

    .line 1815
    .end local v0           #fDLNA:Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "registerTVDisplayHelper, already register it, ignore this time."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseTVDisplayHelper()V
    .locals 2

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    .line 1826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 1833
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    :goto_1
    return-void

    .line 1829
    :cond_0
    const-string v0, "[HtcMusic]"

    const-string v1, "releaseTVDisplayHelper, mTVHelper is null, no need to release."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1834
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private resetCurrentAlbumArt()V
    .locals 12

    .prologue
    .line 8607
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 8608
    const-string v1, "[HtcMusic]"

    const-string v4, "mService is null while resetCurrentAlbumArt "

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8649
    :goto_0
    return-void

    .line 8611
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v4, "resetCurrentAlbum"

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8613
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8614
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v6

    .line 8615
    .local v6, currentAlbumId:I
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "dl_data_backup"

    aput-object v4, v2, v1

    .line 8617
    .local v2, cols:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl_album_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8619
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 8622
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8623
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 8624
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "dl_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 8626
    .local v10, original_path:Ljava/lang/String;
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8627
    const-string v1, "dl_data"

    const-string v4, ""

    invoke-virtual {v11, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8628
    const-string v1, "dl_data_backup"

    invoke-virtual {v11, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8629
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8631
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8633
    .end local v10           #original_path:Ljava/lang/String;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v1, :cond_2

    .line 8634
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4}, Lcom/htc/music/GliderAdapter;->setDlAlbumArt(ILjava/lang/String;)V

    .line 8637
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.htc.musicenhancer.action_reset_albumart"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8638
    .local v9, intent:Landroid/content/Intent;
    const-string v1, "album_id"

    invoke-virtual {v9, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8639
    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 8641
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 8642
    .local v8, ex:Landroid/os/RemoteException;
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught remote exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8644
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 8645
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/16 v3, 0x1771

    .line 854
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 857
    return-void
.end method

.method private scanBackward(IJ)V
    .locals 12
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 3627
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 3668
    :cond_0
    :goto_0
    return-void

    .line 3630
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3634
    if-nez p1, :cond_2

    .line 3635
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3636
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3637
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    .line 3666
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3639
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3640
    cmp-long v4, p2, v6

    if-gez v4, :cond_6

    .line 3642
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 3647
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 3648
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_3

    .line 3650
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 3651
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3652
    .local v0, duration:J
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3653
    add-long/2addr v2, v0

    .line 3655
    .end local v0           #duration:J
    :cond_3
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    if-gez p1, :cond_5

    .line 3656
    :cond_4
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 3657
    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3659
    :cond_5
    if-ltz p1, :cond_7

    .line 3660
    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 3664
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    .line 3645
    .end local v2           #newpos:J
    :cond_6
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 3662
    .restart local v2       #newpos:J
    :cond_7
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    .line 3671
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 3708
    :goto_0
    return-void

    .line 3674
    :cond_0
    if-nez p1, :cond_1

    .line 3675
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3676
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3677
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    .line 3706
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3679
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3680
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 3682
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 3687
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 3688
    .local v2, newpos:J
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3689
    .local v0, duration:J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 3691
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->next()V

    .line 3692
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3693
    sub-long/2addr v2, v0

    .line 3695
    :cond_2
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 3696
    :cond_3
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 3697
    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3699
    :cond_4
    if-ltz p1, :cond_6

    .line 3700
    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 3704
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    .line 3685
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 3702
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 9232
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v0

    .line 9234
    .local v0, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    invoke-static {p0, v0}, Lcom/htc/music/online/Util;->gotoRelatedWeibo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;)V

    .line 9236
    return-void
.end method

.method private seekMethod1(I)Z
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 3376
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_b

    .line 3377
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    .line 3378
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_9

    .line 3379
    const/4 v0, 0x0

    .line 3381
    .local v0, dir:I
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v2, v3, :cond_1

    .line 3382
    const/4 v0, 0x0

    .line 3402
    :cond_0
    :goto_2
    iput v1, p0, Lcom/htc/music/HtcMusic;->lastX:I

    .line 3403
    iput v2, p0, Lcom/htc/music/HtcMusic;->lastY:I

    .line 3405
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x5

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3408
    :goto_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 3409
    const/4 v3, 0x1

    .line 3415
    .end local v0           #dir:I
    .end local v2           #y:I
    :goto_4
    return v3

    .line 3383
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_2

    .line 3384
    const/4 v0, 0x1

    goto :goto_2

    .line 3385
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_3

    .line 3386
    const/4 v0, -0x1

    goto :goto_2

    .line 3388
    :cond_3
    if-ne v2, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_4

    .line 3389
    const/4 v0, -0x1

    goto :goto_2

    .line 3390
    :cond_4
    if-ne v2, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_5

    .line 3391
    const/4 v0, 0x1

    goto :goto_2

    .line 3393
    :cond_5
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_6

    if-gt v1, v6, :cond_6

    .line 3394
    const/4 v0, 0x1

    goto :goto_2

    .line 3395
    :cond_6
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_7

    if-lt v1, v7, :cond_7

    .line 3396
    const/4 v0, -0x1

    goto :goto_2

    .line 3398
    :cond_7
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_8

    if-gt v1, v6, :cond_8

    .line 3399
    const/4 v0, -0x1

    goto :goto_2

    .line 3400
    :cond_8
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_0

    if-lt v1, v7, :cond_0

    .line 3401
    const/4 v0, 0x1

    goto :goto_2

    .line 3377
    .end local v0           #dir:I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3376
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3413
    .end local v2           #y:I
    :cond_b
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastX:I

    .line 3414
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastY:I

    .line 3415
    const/4 v3, 0x0

    goto :goto_4

    .line 3406
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private seekMethod2(I)Z
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 3419
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 3432
    :cond_0
    :goto_0
    return v2

    .line 3421
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 3422
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 3423
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 3425
    .local v1, seekpercentage:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3428
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 3429
    const/4 v2, 0x1

    goto :goto_0

    .line 3421
    .end local v1           #seekpercentage:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3426
    .restart local v1       #seekpercentage:I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private setAllSongsTitle()V
    .locals 0

    .prologue
    .line 4293
    return-void
.end method

.method private setDLNAPreloadEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1839
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1840
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_0

    .line 1841
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    .line 1842
    :cond_0
    return-void
.end method

.method private setOnDismissListener(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 503
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 504
    return-void
.end method

.method private setOnSoundEffectDismissListener(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 515
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 516
    return-void
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 4296
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    if-nez v0, :cond_0

    .line 4305
    :goto_0
    return-void

    .line 4298
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4299
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_0

    .line 4303
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4301
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setPlaybackControlEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 8783
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    .line 8784
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 8785
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 8786
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-eqz v0, :cond_1

    .line 8787
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 8788
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-eqz v0, :cond_2

    .line 8789
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 8790
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v0, :cond_3

    .line 8791
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 8792
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_4

    .line 8793
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 8794
    :cond_4
    return-void
.end method

.method private setRepeatButtonImage()V
    .locals 2

    .prologue
    .line 4210
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 4211
    const-string v0, "[HtcMusic]"

    const-string v1, "mRepeatButton is null in setRepeatButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4248
    :goto_0
    return-void

    .line 4215
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 4216
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 4246
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4220
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 4221
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4239
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 4240
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 4241
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 4223
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 4225
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 4226
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 4231
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 4233
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 4234
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRepeatMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 6227
    packed-switch p1, :pswitch_data_0

    .line 6257
    :goto_0
    return-void

    .line 6230
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 6231
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6232
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 6233
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 6235
    :cond_0
    const v0, 0x7f070054

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6236
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6237
    :catch_0
    move-exception v0

    goto :goto_0

    .line 6242
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 6243
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 6244
    const v0, 0x7f070055

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6245
    :catch_1
    move-exception v0

    goto :goto_0

    .line 6250
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 6251
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 6252
    const v0, 0x7f070053

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 6253
    :catch_2
    move-exception v0

    goto :goto_0

    .line 6227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtone()V
    .locals 2

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v0, :cond_1

    .line 3265
    :cond_0
    :goto_0
    return-void

    .line 3255
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v0, :cond_2

    .line 3256
    new-instance v0, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 3259
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_0

    .line 3260
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    .line 3261
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 3262
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    .line 3263
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->useAsRingtone(Z)V

    goto :goto_0
.end method

.method private setSecondaryTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "secondaryTitle"

    .prologue
    const/4 v2, 0x1

    .line 8545
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_1

    .line 8546
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 8547
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 8548
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 8563
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 8564
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 8580
    :cond_1
    return-void

    .line 8550
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 8551
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, "com.htc.R.id.secondary"

    invoke-static {v1}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    .line 8553
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 8554
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 8555
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 8556
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 8559
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 8560
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method private setShuffleButtonImage()V
    .locals 2

    .prologue
    .line 4252
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 4253
    const-string v0, "[HtcMusic]"

    const-string v1, "mShuffleButton is null in setShuffleButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4280
    :goto_0
    return-void

    .line 4257
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 4258
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 4278
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4262
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 4263
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4272
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 4273
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    .line 4277
    :goto_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    goto :goto_0

    .line 4266
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 4267
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private setSoundEffect(Ljava/lang/String;I)V
    .locals 3
    .parameter "soundStyle"
    .parameter "saveStatus"

    .prologue
    const/4 v2, 0x3

    .line 7363
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v1, :cond_0

    .line 7364
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 7365
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7366
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7367
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "savestatus"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7369
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7373
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 7371
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "SetSoundEffect()...mNonUiHandler is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 5

    .prologue
    .line 3272
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canShare()I

    move-result v0

    .line 3274
    .local v0, canShare:I
    packed-switch v0, :pswitch_data_0

    .line 3291
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3293
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3296
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 3276
    :pswitch_0
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normal file case, mCurrentAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    goto :goto_0

    .line 3284
    :pswitch_1
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD DRM case, mCurrentAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3286
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    goto :goto_0

    .line 3274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 3307
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShareBundle:Landroid/os/Bundle;

    .line 3317
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    .line 3318
    return-void
.end method

.method private shareMusicTextViaShareKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 9223
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 9224
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/htc/music/HtcMusic;->getShareIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v1

    .line 9225
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/htc/music/online/Util;->SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9226
    invoke-static {p0, v1, v0}, Lcom/htc/music/online/Util;->shareMusicInfoToSinaWeibo(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 9227
    return-void
.end method

.method private shareOnlineMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 9184
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v0

    .line 9186
    .local v0, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/music/online/Util;->shareMusicInfo(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSong;Z)V

    .line 9188
    return-void
.end method

.method private shareOnlineMusicTextViaShareKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 9194
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->getWrapperSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSong;

    move-result-object v2

    .line 9196
    .local v2, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    invoke-static {v2, p0}, Lcom/htc/music/online/Util;->getBundleFromSong(Lcom/htc/music/online/sinamusic/WrapperSong;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 9198
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/htc/music/HtcMusic;->getShareIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v1

    .line 9200
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v1, v0}, Lcom/htc/music/online/Util;->shareMusicInfoToSinaWeibo(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 9201
    return-void
.end method

.method private shouldDisplayProgress()Z
    .locals 2

    .prologue
    .line 2304
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isAsyncComplete()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2307
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsOnlineLoading:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsInialLoading:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 2308
    :cond_0
    const/4 v1, 0x1

    .line 2315
    :goto_0
    return v1

    .line 2312
    :catch_0
    move-exception v0

    .line 2313
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2315
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showDownloadProgressDialog(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 9098
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 9110
    :cond_0
    :goto_0
    return-void

    .line 9099
    :cond_1
    if-eqz p1, :cond_2

    .line 9100
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getProgressVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 9101
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0

    .line 9105
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getProgressVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 9106
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method private showGlider()V
    .locals 5

    .prologue
    .line 4714
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v2, :cond_0

    .line 4715
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->startRender()V

    .line 4717
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    .line 4718
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 4721
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initLyricView()V

    .line 4724
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v2, :cond_1

    .line 4725
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 4726
    .local v0, phadeIn:Lcom/htc/sunny2/view/animation/SAnimationController;
    new-instance v1, Lcom/htc/music/HtcMusic$PhadeAnimationListener;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/music/HtcMusic$PhadeAnimationListener;-><init>(Lcom/htc/sunny2/view/SView;Landroid/os/Handler;Z)V

    .line 4727
    .local v1, phadeInAnimation:Lcom/htc/music/HtcMusic$PhadeAnimationListener;
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 4728
    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 4729
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 4730
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 4731
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const v3, 0x2080001

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setGlobalBackgroundResource(I)V

    .line 4733
    .end local v0           #phadeIn:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v1           #phadeInAnimation:Lcom/htc/music/HtcMusic$PhadeAnimationListener;
    :cond_1
    return-void
.end method

.method private showHideOneShotMode()V
    .locals 0

    .prologue
    .line 4201
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 4202
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 4204
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 4205
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 4206
    return-void
.end method

.method private showLyricView()V
    .locals 2

    .prologue
    .line 9348
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    .line 9353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    .line 9354
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3337
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3339
    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 3802
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    .line 3805
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 3806
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3807
    return-void
.end method

.method private startAlbumDetail(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 8652
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8653
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 8654
    const-string v1, "albumid"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8655
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8656
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 8657
    return-void
.end method

.method private startAutoDownloadAlbum()V
    .locals 2

    .prologue
    .line 8529
    const-string v0, "[HtcMusic]"

    const-string v1, "start download albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8530
    const-string v0, "action_auto_update_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 8531
    return-void
.end method

.method private startBrowserTabActivity()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1508
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1509
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1510
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1515
    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1516
    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1517
    const-string v1, "from-lockscreen"

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from-lockscreen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1519
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 1520
    return-void
.end method

.method private startCheckLyric(Ljava/lang/String;)Z
    .locals 1
    .parameter "filepath"

    .prologue
    .line 9325
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyric:Lcom/htc/music/lyrics/LyricGenerator;

    if-eqz v0, :cond_0

    .line 9327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mLyric:Lcom/htc/music/lyrics/LyricGenerator;

    .line 9335
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startMusicEnhancerService(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 8660
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_0

    .line 8661
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8662
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v1, "com.htc.musicenhancer"

    const-string v2, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8664
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8666
    .end local v0           #downloadAlbumArtIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startPlayback()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 3810
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v10, :cond_0

    .line 3902
    :goto_0
    return-void

    .line 3812
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3813
    .local v2, intent:Landroid/content/Intent;
    const-string v1, ""

    .line 3814
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 3815
    .local v9, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3816
    .local v6, oneShot:Z
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    if-nez v10, :cond_5

    .line 3819
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 3820
    .local v7, scheme:Ljava/lang/String;
    const-string v10, "file"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3821
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3825
    :goto_1
    if-eqz v1, :cond_4

    const-string v10, "content://drm/"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3826
    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 3827
    .local v8, status:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_2

    .line 3828
    const v10, 0x7f070068

    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3829
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 3823
    .end local v8           #status:I
    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3831
    .restart local v8       #status:I
    :cond_2
    if-eq v8, v11, :cond_3

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 3833
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3834
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3835
    const-string v10, "drmuri"

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3836
    const-string v10, "drmtargettomain"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3837
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 3838
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 3843
    .end local v8           #status:I
    :cond_4
    const/4 v6, 0x1

    .line 3844
    :try_start_0
    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    if-nez v10, :cond_8

    .line 3845
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v10

    if-nez v10, :cond_7

    .line 3846
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 3860
    :goto_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v1}, Lcom/htc/music/IMediaPlaybackService;->openfile(Ljava/lang/String;)V

    .line 3864
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3866
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 3867
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3875
    .end local v7           #scheme:Ljava/lang/String;
    :cond_5
    :goto_3
    if-nez v6, :cond_6

    .line 3877
    :try_start_1
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v3

    .line 3878
    .local v3, isSystemReady:Z
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v10

    if-nez v10, :cond_9

    if-nez v3, :cond_9

    .line 3901
    .end local v3           #isSystemReady:Z
    :cond_6
    :goto_4
    iput-boolean v13, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    goto/16 :goto_0

    .line 3857
    .restart local v7       #scheme:Ljava/lang/String;
    :cond_7
    :try_start_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3871
    :catch_0
    move-exception v0

    .line 3872
    .local v0, ex:Ljava/lang/Exception;
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "couldn\'t start playback: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3869
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_8
    const/4 v10, 0x0

    :try_start_3
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 3886
    .end local v7           #scheme:Ljava/lang/String;
    .restart local v3       #isSystemReady:Z
    :cond_9
    :try_start_4
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3887
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v4

    .line 3889
    .local v4, next:J
    :try_start_5
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3890
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 3892
    :catch_1
    move-exception v0

    .line 3893
    .restart local v0       #ex:Ljava/lang/Exception;
    :try_start_6
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPlayback Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 3896
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #isSystemReady:Z
    .end local v4           #next:J
    :catch_2
    move-exception v0

    .line 3897
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPlayback Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private startUpdateAllAlbum()V
    .locals 2

    .prologue
    .line 8534
    const-string v0, "[HtcMusic]"

    const-string v1, "start update all albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8535
    const-string v0, "action_update_all_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 8536
    return-void
.end method

.method private stopDownloadAlbumArtService()V
    .locals 2

    .prologue
    .line 8539
    const-string v0, "[HtcMusic]"

    const-string v1, "stopDownloadAlbumArtService"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8540
    const-string v0, "action_cancel_download"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 8541
    return-void
.end method

.method private stopFFRWScan(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1631
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1632
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1633
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1635
    return-void
.end method

.method private timeoutAction()V
    .locals 4

    .prologue
    .line 9254
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsShowingDialog:Z

    if-eqz v2, :cond_1

    .line 9255
    const-string v2, "[HtcMusic]"

    const-string v3, "IsShowingDialog quit..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9283
    :cond_0
    :goto_0
    return-void

    .line 9258
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V

    .line 9259
    new-instance v1, Lcom/htc/music/HtcMusic$55;

    invoke-direct {v1, p0}, Lcom/htc/music/HtcMusic$55;-><init>(Lcom/htc/music/HtcMusic;)V

    .line 9271
    .local v1, posListener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v2, 0x2

    invoke-static {p0, v2, v1}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 9273
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v0, :cond_0

    .line 9274
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 9275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsShowingDialog:Z

    .line 9276
    new-instance v2, Lcom/htc/music/HtcMusic$56;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$56;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 3742
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 3772
    :goto_0
    return-void

    .line 3746
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 3747
    .local v0, shuffle:I
    if-nez v0, :cond_2

    .line 3748
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3749
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3750
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3751
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 3758
    :cond_1
    const v1, 0x7f070051

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3769
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    goto :goto_0

    .line 3770
    .end local v0           #shuffle:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3759
    .restart local v0       #shuffle:I
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 3761
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3762
    const v1, 0x7f070052

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    .line 3764
    :cond_4
    const-string v1, "[HtcMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private updateCurrentAlbum()V
    .locals 5

    .prologue
    .line 8583
    const-string v2, "[HtcMusic]"

    const-string v3, "updateCurrentAlbum"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8584
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_update_current_album"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8586
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v2, "com.htc.musicenhancer"

    const-string v3, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8589
    const-string v2, "need_update_lyric"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8593
    :try_start_0
    const-string v2, "album_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8595
    const-string v2, "audio_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8597
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8604
    :goto_0
    return-void

    .line 8598
    :catch_0
    move-exception v1

    .line 8599
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception in updateCurrentAlbum. Ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGlider()V
    .locals 10

    .prologue
    .line 4323
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v7, :cond_1

    .line 4384
    :cond_0
    :goto_0
    return-void

    .line 4327
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueue()[I

    move-result-object v0

    .line 4328
    .local v0, albumIdArray:[I
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v6

    .line 4329
    .local v6, selectedPos:I
    const/4 v4, 0x0

    .line 4330
    .local v4, nLength:I
    if-eqz v0, :cond_2

    .line 4331
    array-length v4, v0

    .line 4334
    :cond_2
    if-eqz v0, :cond_5

    if-lez v4, :cond_5

    .line 4335
    new-array v1, v4, [Lcom/htc/music/GliderAdapter$AlbumInfo;

    .line 4337
    .local v1, albumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 4338
    new-instance v7, Lcom/htc/music/GliderAdapter$AlbumInfo;

    invoke-direct {v7}, Lcom/htc/music/GliderAdapter$AlbumInfo;-><init>()V

    aput-object v7, v1, v3

    .line 4339
    aget-object v7, v1, v3

    aget v8, v0, v3

    iput v8, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    .line 4337
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4341
    :cond_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 4344
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4345
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 4349
    :cond_4
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    invoke-virtual {v7, v1, v8, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V

    .line 4362
    .end local v1           #albumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    .end local v3           #i:I
    :goto_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyDataSetChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4369
    .end local v0           #albumIdArray:[I
    .end local v4           #nLength:I
    .end local v6           #selectedPos:I
    :goto_3
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v5

    .line 4370
    .local v5, nSelectPos:I
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 4372
    if-ltz v5, :cond_7

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 4373
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 4374
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 4375
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4381
    .end local v5           #nSelectPos:I
    :catch_0
    move-exception v2

    .line 4382
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4352
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #albumIdArray:[I
    .restart local v4       #nLength:I
    .restart local v6       #selectedPos:I
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 4355
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4356
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 4358
    :cond_6
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 4364
    .end local v0           #albumIdArray:[I
    .end local v4           #nLength:I
    .end local v6           #selectedPos:I
    :catch_1
    move-exception v2

    .line 4365
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 4377
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v5       #nSelectPos:I
    :cond_7
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 4378
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 4379
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private updateLyricMenu()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 2559
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v1}, Lcom/htc/music/lyrics/widget/LyricsView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2561
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2562
    .local v0, menuItem_lyric:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2564
    const v1, 0x7f02001f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2565
    const v1, 0x7f070082

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2580
    :cond_0
    :goto_0
    return-void

    .line 2571
    .end local v0           #menuItem_lyric:Landroid/view/MenuItem;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2572
    .restart local v0       #menuItem_lyric:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2574
    const v1, 0x7f020026

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2575
    const v1, 0x7f0701f1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateLyricView()V
    .locals 2

    .prologue
    .line 9308
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-nez v0, :cond_0

    .line 9309
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initLyricView()V

    .line 9314
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    if-eqz v0, :cond_1

    .line 9315
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    .line 9321
    :cond_0
    :goto_0
    return-void

    .line 9317
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/lyrics/widget/LyricsView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1180
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1182
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    .line 1185
    :cond_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-nez v4, :cond_2

    .line 1240
    :cond_1
    :goto_0
    return-void

    .line 1187
    :cond_2
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x2c

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1188
    .local v3, queue:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x2e

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1191
    .local v0, close:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x32

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1194
    .local v1, lyric:Landroid/view/MenuItem;
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    .line 1196
    .local v2, nDlnaMode:I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 1198
    :cond_3
    if-eqz v3, :cond_4

    .line 1199
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1201
    :cond_4
    if-eqz v0, :cond_5

    .line 1202
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1205
    :cond_5
    if-eqz v1, :cond_1

    .line 1206
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1210
    :cond_6
    if-eqz v3, :cond_7

    .line 1211
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_9

    .line 1212
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1221
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 1222
    const-string v4, "[HtcMusic]"

    const-string v5, "invisible dmc close button"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1226
    :cond_8
    if-eqz v1, :cond_1

    .line 1227
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_b

    .line 1228
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1214
    :cond_9
    if-ne v7, v2, :cond_a

    .line 1215
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1217
    :cond_a
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1230
    :cond_b
    if-ne v7, v2, :cond_c

    .line 1231
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1233
    :cond_c
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateTrackInfoP()V
    .locals 33

    .prologue
    .line 5350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 5614
    :cond_0
    :goto_0
    return-void

    .line 5353
    :cond_1
    const/16 v27, 0x0

    .line 5354
    .local v27, path:Ljava/lang/String;
    const/16 v30, 0x0

    .line 5355
    .local v30, service_queuesize:I
    const/4 v13, 0x0

    .line 5356
    .local v13, artistName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 5357
    .local v12, albumName:Ljava/lang/String;
    const/16 v32, 0x0

    .line 5358
    .local v32, trackName:Ljava/lang/String;
    const/16 v25, 0x0

    .line 5360
    .local v25, ntrack:I
    const/16 v24, 0x0

    .line 5362
    .local v24, nOfSongs:Ljava/lang/String;
    const/16 v28, 0x0

    .line 5365
    .local v28, position:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 5389
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5611
    :catch_0
    move-exception v18

    .line 5612
    .local v18, ex:Landroid/os/RemoteException;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 5370
    .end local v18           #ex:Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v27

    .line 5371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v30

    .line 5372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v13

    .line 5373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v12

    .line 5374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v32

    .line 5376
    if-eqz v27, :cond_14

    .line 5377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    if-gez v2, :cond_13

    const/16 v25, 0x1

    .line 5382
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 5383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    .line 5384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v29

    .line 5385
    .local v29, queue:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v28

    .line 5386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-gez v2, :cond_15

    const/16 v26, 0x1

    .line 5389
    .local v26, ntrack_temp:I
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5392
    if-nez v27, :cond_4

    if-eqz v30, :cond_0

    .line 5400
    :cond_4
    if-eqz v27, :cond_17

    .line 5401
    const-string v2, "<unknown>"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5402
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 5404
    :cond_5
    const-string v2, "<unknown>"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5405
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 5410
    :cond_6
    if-nez v13, :cond_10

    if-nez v12, :cond_10

    if-nez v32, :cond_10

    .line 5412
    const-string v2, "[HtcMusic]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5414
    new-instance v20, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v20 .. v20}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5416
    .local v20, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v20, :cond_7

    .line 5418
    :try_start_4
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 5420
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    .line 5422
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 5424
    const/4 v2, 0x7

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v32

    .line 5431
    :goto_3
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 5432
    const/16 v20, 0x0

    .line 5437
    :cond_7
    if-eqz v13, :cond_8

    .line 5438
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 5440
    :cond_8
    if-eqz v13, :cond_9

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5441
    :cond_9
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 5443
    :cond_a
    if-eqz v12, :cond_b

    .line 5444
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 5446
    :cond_b
    if-eqz v12, :cond_c

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5447
    :cond_c
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 5449
    :cond_d
    if-eqz v32, :cond_e

    .line 5450
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    .line 5452
    :cond_e
    if-eqz v32, :cond_f

    const-string v2, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5454
    :cond_f
    const-string v2, "/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5455
    const/16 v22, -0x1

    .local v22, nBegin:I
    const/16 v23, -0x1

    .line 5457
    .local v23, nEnd:I
    const-string v2, "/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    .line 5458
    const-string v2, "."

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    .line 5460
    if-ltz v22, :cond_10

    move/from16 v0, v23

    move/from16 v1, v22

    if-le v0, v1, :cond_10

    .line 5461
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 5470
    .end local v20           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v22           #nBegin:I
    .end local v23           #nEnd:I
    :cond_10
    const/4 v11, 0x0

    .line 5471
    .local v11, albumArtist_tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    .line 5472
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    .line 5473
    if-eqz v12, :cond_11

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, " "

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5476
    :cond_11
    move-object v11, v13

    .line 5492
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 5496
    .local v21, msg:Landroid/os/Message;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "AlbumArtistName"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5497
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TrackName"

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5594
    .end local v11           #albumArtist_tmp:Ljava/lang/String;
    :cond_12
    :goto_5
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 5597
    .local v31, temp:Ljava/lang/StringBuilder;
    :try_start_6
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5598
    const-string v2, " / "

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5599
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5600
    const-string v2, " "

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5601
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 5607
    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5609
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 5377
    .end local v21           #msg:Landroid/os/Message;
    .end local v26           #ntrack_temp:I
    .end local v29           #queue:[I
    .end local v31           #temp:Ljava/lang/StringBuilder;
    :cond_13
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v25, v2, 0x1

    goto/16 :goto_1

    .line 5379
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v25, v2, 0x1

    goto/16 :goto_1

    .line 5386
    .restart local v29       #queue:[I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v2

    add-int/lit8 v26, v2, 0x1

    goto/16 :goto_2

    .line 5389
    .end local v29           #queue:[I
    :catchall_0
    move-exception v2

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 5426
    .restart local v20       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v26       #ntrack_temp:I
    .restart local v29       #queue:[I
    :catch_1
    move-exception v18

    .line 5427
    .local v18, ex:Ljava/lang/RuntimeException;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 5478
    .end local v18           #ex:Ljava/lang/RuntimeException;
    .end local v20           #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v11       #albumArtist_tmp:Ljava/lang/String;
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    .line 5500
    .end local v11           #albumArtist_tmp:Ljava/lang/String;
    :cond_17
    if-eqz v29, :cond_0

    move-object/from16 v0, v29

    array-length v2, v0

    if-lez v2, :cond_0

    if-ltz v28, :cond_0

    move-object/from16 v0, v29

    array-length v2, v0

    move/from16 v0, v28

    if-le v2, v0, :cond_0

    .line 5505
    const/16 v2, 0xb

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio._id AS _id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v7, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v7, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v7, v2

    const/4 v2, 0x4

    const-string v3, "_data"

    aput-object v3, v7, v2

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v7, v2

    const/4 v2, 0x6

    const-string v3, "album_id"

    aput-object v3, v7, v2

    const/4 v2, 0x7

    const-string v3, "artist_id"

    aput-object v3, v7, v2

    const/16 v2, 0x8

    const-string v3, "is_podcast"

    aput-object v3, v7, v2

    const/16 v2, 0x9

    const-string v3, "bookmark"

    aput-object v3, v7, v2

    const/16 v2, 0xa

    const-string v3, "composer"

    aput-object v3, v7, v2

    .line 5522
    .local v7, mCursorCols:[Ljava/lang/String;
    aget v2, v29, v28

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 5526
    .local v19, id:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5527
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "composer"

    aput-object v3, v4, v2

    .line 5532
    .local v4, mOnlineCursorCols:[Ljava/lang/String;
    sget-object v3, Lcom/htc/music/online/OnlineMusicDBHelper$OnlineMediaArt;->ONLINEMEDIA_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v7           #mCursorCols:[Ljava/lang/String;
    move-result-object v14

    .line 5543
    .end local v4           #mOnlineCursorCols:[Ljava/lang/String;
    .local v14, cursor:Landroid/database/Cursor;
    :goto_7
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 5548
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5549
    const-string v2, "artist"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 5551
    .local v16, cursor_artistName:Ljava/lang/String;
    if-eqz v16, :cond_18

    const-string v2, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5553
    :cond_18
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 5555
    :cond_19
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artistName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5557
    const-string v2, "album"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 5559
    .local v15, cursor_albumName:Ljava/lang/String;
    if-eqz v15, :cond_1a

    const-string v2, "<unknown>"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5561
    :cond_1a
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 5563
    :cond_1b
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTrackName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "title"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5580
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    .line 5581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 5583
    .restart local v21       #msg:Landroid/os/Message;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "AlbumArtistName"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5584
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TrackName"

    const-string v5, "title"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5585
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TotalTime"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5588
    if-eqz v14, :cond_12

    .line 5589
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 5536
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v15           #cursor_albumName:Ljava/lang/String;
    .end local v16           #cursor_artistName:Ljava/lang/String;
    .end local v21           #msg:Landroid/os/Message;
    .restart local v7       #mCursorCols:[Ljava/lang/String;
    :cond_1c
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_music>=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #cursor:Landroid/database/Cursor;
    goto/16 :goto_7

    .line 5603
    .end local v7           #mCursorCols:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v19           #id:Ljava/lang/String;
    .restart local v21       #msg:Landroid/os/Message;
    .restart local v31       #temp:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v17

    .line 5604
    .local v17, e:Ljava/lang/RuntimeException;
    const-string v2, "[HtcMusic]"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_6
.end method

.method private wasDRMFilePlaying(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 5672
    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5673
    const/4 v0, 0x1

    .line 5675
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 2
    .parameter "newStatus"

    .prologue
    .line 7382
    if-nez p1, :cond_0

    .line 7384
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    if-eqz v1, :cond_0

    .line 7390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    .line 7392
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 7393
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7399
    :cond_0
    :goto_0
    return-void

    .line 7394
    :catch_0
    move-exception v0

    .line 7395
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 7479
    return-void
.end method

.method public CheckDLNAMode(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 6969
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6970
    iput v11, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 6974
    :cond_0
    const-string v6, "DLNA"

    const/4 v7, 0x5

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6977
    .local v0, Preferences:Landroid/content/SharedPreferences;
    const-string v6, "Server"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6978
    .local v5, server:Ljava/lang/String;
    const-string v6, "Render"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6979
    .local v4, render:Ljava/lang/String;
    const-string v6, "container"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6980
    .local v1, container:Ljava/lang/String;
    const-string v6, "content"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6981
    .local v2, content:Ljava/lang/String;
    const-string v6, "playatglance"

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 6983
    .local v3, playAtGlance:Z
    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6984
    const-string v6, "[HtcMusic]"

    const-string v7, "Get info from intent"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6985
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6986
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6987
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6988
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6989
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent playAtGlance = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6991
    if-nez v5, :cond_4

    if-nez v4, :cond_4

    if-nez v1, :cond_4

    .line 6992
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 6996
    :cond_1
    const-string v6, "[HtcMusic]"

    const-string v7, "All info from intent is null, get info from preference"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6999
    const-string v6, "server"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7000
    const-string v6, "Render"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7001
    const-string v6, "container"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7002
    const-string v6, "content"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7004
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7005
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7006
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7007
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7009
    if-nez v5, :cond_3

    if-nez v4, :cond_3

    .line 7088
    :goto_0
    return-void

    .line 7017
    :cond_2
    const-string v6, "[HtcMusic]"

    const-string v7, "content != null, called by DMC, need update local play position"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7019
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "switchLocal"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7032
    :cond_3
    :goto_1
    const-string v6, "[HtcMusic]"

    const-string v7, "save intent info to preference"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7033
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7034
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7035
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7036
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7037
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save startIdx ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "startIdx"

    invoke-virtual {p1, v8, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7038
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save endIdx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "endIdx"

    invoke-virtual {p1, v8, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7039
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save direction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "direction"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7040
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save filepath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "filepath"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7042
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "server"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "Render"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "container"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "content"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7047
    const/4 v6, -0x1

    invoke-static {p0, v10, v6, v3}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 7061
    iget v6, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 7064
    :pswitch_0
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_LOCAL mode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7065
    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 7021
    :cond_4
    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 7022
    const-string v6, "[HtcMusic]"

    const-string v7, "server, container, content != null, called by DMC, need update DMP"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7024
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "switchDMP"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "filepath"

    const-string v8, "filepath"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "startIdx"

    const-string v8, "startIdx"

    invoke-virtual {p1, v8, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "endIdx"

    const-string v8, "endIdx"

    invoke-virtual {p1, v8, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "direction"

    const-string v8, "direction"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 7070
    :pswitch_1
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_DMP mode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7075
    :pswitch_2
    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode:DLNA_PUSH mode."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7081
    :pswitch_3
    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode:DLNA_DMC mode."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7061
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public OnHdmiPlugReceiver(Lcom/htc/music/util/HdmiPlugReceiver;I)V
    .locals 3
    .parameter "caller"
    .parameter "bIsPluged"

    .prologue
    .line 7605
    const-string v0, "[HtcMusic]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnHdmiPlugReceiver, bIsPluged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7608
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7609
    const-string v0, "[HtcMusic]"

    const-string v1, "OnHdmiPlugReceiver, If support Global Beats. Do Nothing for HDMI plugging in/out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7627
    :cond_0
    :goto_0
    return-void

    .line 7613
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7614
    const-string v0, "[HtcMusic]"

    const-string v1, "OnHdmiPlugReceiver headset is plugged. Do Nothing for HDMI plugging in/out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7619
    :cond_2
    if-lez p2, :cond_0

    .line 7620
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7623
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->recoverNoEffectWithHDMI()V

    goto :goto_0
.end method

.method protected afterPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6301
    const/4 v0, 0x0

    .line 6302
    .local v0, enableBtn:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 6305
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_1

    .line 6306
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 6307
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_2

    .line 6308
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 6316
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 6317
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 6318
    const/4 v0, 0x1

    .line 6320
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_3

    .line 6321
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 6322
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_4

    .line 6323
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 6329
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6349
    :goto_0
    return-void

    .line 6332
    :catch_0
    move-exception v2

    .line 6337
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_6

    .line 6338
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 6339
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6340
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6342
    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6343
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 6346
    invoke-virtual {p0, v4, v4}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    .line 6348
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0
.end method

.method canRewind()Z
    .locals 1

    .prologue
    .line 6437
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 6438
    const/4 v0, 0x0

    .line 6440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canShare()I
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 6356
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v9, :cond_1

    :cond_0
    move v0, v8

    .line 6433
    :goto_0
    return v0

    .line 6359
    :cond_1
    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 6360
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 6361
    goto :goto_0

    .line 6363
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 6364
    :cond_3
    if-eqz v1, :cond_4

    .line 6365
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 6366
    goto :goto_0

    .line 6369
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6370
    const/4 v0, 0x0

    .line 6375
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 6377
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6381
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 6383
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 6384
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6390
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 6392
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 6394
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 6395
    const-string v9, "[HtcMusic]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6397
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6398
    const/4 v1, 0x0

    move v0, v8

    .line 6399
    goto :goto_0

    .line 6402
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 6403
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6405
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 6408
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 6410
    :cond_8
    const/4 v0, 0x2

    .line 6414
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 6430
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6431
    const/4 v1, 0x0

    .line 6433
    goto/16 :goto_0

    .line 6418
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 6420
    const-string v8, "[HtcMusic]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6421
    const/4 v0, 0x0

    goto :goto_1

    .line 6425
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public checkDrmFile(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    .line 6260
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6262
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 6263
    .local v5, status:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 6264
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 6295
    :goto_0
    return-void

    .line 6265
    :cond_0
    if-nez v5, :cond_3

    .line 6266
    invoke-static {v3, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 6268
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 6269
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 6270
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    .line 6272
    :cond_1
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    .line 6273
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 6274
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 6276
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 6277
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    .line 6281
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 6283
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6284
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 6288
    .local v1, filename:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6289
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6290
    const-string v6, "drmuri"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6291
    const-string v6, "drmtargettomain"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6292
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 6293
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 6286
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #filename:Ljava/lang/String;
    goto :goto_1
.end method

.method public dismissActiveDialog()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 8965
    iget v1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    if-ne v1, v3, :cond_0

    .line 8976
    :goto_0
    return-void

    .line 8970
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8974
    :goto_1
    iput v3, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    goto :goto_0

    .line 8971
    :catch_0
    move-exception v0

    .line 8972
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "[HtcMusic]"

    const-string v2, "[dismissActiveDialog] ."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 8974
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput v3, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    throw v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 3528
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3530
    .local v2, keyCode:I
    packed-switch v2, :pswitch_data_0

    .line 3553
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 3534
    :pswitch_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {p0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v0

    .line 3535
    .local v0, dlnaMode:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 3537
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createVolumeDialog()V

    .line 3540
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3542
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getVolume()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3548
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 3544
    :catch_0
    move-exception v1

    .line 3545
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 3550
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 3530
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 1684
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1685
    return-void
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 17
    .parameter "newStatus"
    .parameter "isBeatsHeadset"

    .prologue
    .line 7483
    const-string v14, "[HtcMusic]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "headSetStatusChanged, newStatus: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isBeatsHeadset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7486
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 7601
    :cond_0
    :goto_0
    return-void

    .line 7490
    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 7491
    const-string v14, "[HtcMusic]"

    const-string v15, "headSetStatusChanged, headset is plugged out and HDMI is connected."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7493
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->recoverNoEffectWithHDMI()V

    goto :goto_0

    .line 7497
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleSize(Landroid/content/Context;)I

    move-result v13

    .line 7500
    .local v13, styleSize:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v14, v13, :cond_8

    .line 7504
    if-eqz p1, :cond_3

    .line 7505
    const/4 v7, 0x1

    .local v7, i:I
    :goto_1
    if-ge v7, v13, :cond_5

    .line 7506
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/SoundEffectItem;

    .line 7507
    .local v5, enableItem:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 7505
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7510
    .end local v5           #enableItem:Lcom/htc/music/util/SoundEffectItem;
    .end local v7           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/util/SoundEffectItem;

    .line 7513
    .local v6, equalizerSetting:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 7517
    iget-boolean v14, v6, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v14, :cond_5

    .line 7518
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v4

    .line 7520
    .local v4, effectType:I
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 7521
    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    .line 7524
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 7525
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 7527
    .local v2, defaultEffect:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 7528
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 7534
    .end local v2           #defaultEffect:Lcom/htc/music/util/SoundEffectItem;
    .end local v4           #effectType:I
    .end local v6           #equalizerSetting:Lcom/htc/music/util/SoundEffectItem;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/util/SoundEffectItem;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 7537
    const/4 v9, 0x0

    .line 7538
    .local v9, item:Lcom/htc/music/util/SoundEffectItem;
    const/4 v7, 0x1

    .restart local v7       #i:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, iSize:I
    :goto_2
    if-ge v7, v8, :cond_7

    .line 7539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v9, Lcom/htc/music/util/SoundEffectItem;

    .line 7540
    .restart local v9       #item:Lcom/htc/music/util/SoundEffectItem;
    if-nez v9, :cond_6

    .line 7538
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 7544
    :cond_6
    sget v14, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    if-ne v7, v14, :cond_c

    .line 7545
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 7549
    .end local v7           #i:I
    .end local v8           #iSize:I
    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    :catch_0
    move-exception v3

    .line 7550
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "[HtcMusic]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "headSetStatusChanged, Exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7551
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 7554
    .end local v3           #e:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x33

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 7555
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7558
    .end local v10           #msg:Landroid/os/Message;
    :cond_8
    if-nez p1, :cond_0

    .line 7559
    const/4 v11, 0x0

    .line 7560
    .local v11, recoverEffect:Z
    const/4 v12, 0x0

    .line 7563
    .local v12, showToast:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 7564
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 7566
    const/4 v12, 0x1

    .line 7571
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v1

    .line 7574
    .local v1, currentSoundSetting:I
    sget v14, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v1, v14, :cond_a

    .line 7575
    const/4 v11, 0x1

    .line 7576
    const/4 v12, 0x1

    .line 7581
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v14, v15, :cond_b

    .line 7582
    const/4 v11, 0x1

    .line 7583
    const/4 v12, 0x1

    .line 7586
    :cond_b
    if-eqz v12, :cond_0

    .line 7587
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x34

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 7589
    .restart local v10       #msg:Landroid/os/Message;
    const v14, 0x7f0700a2

    iput v14, v10, Landroid/os/Message;->arg1:I

    .line 7590
    if-eqz v11, :cond_d

    .line 7591
    const/4 v14, 0x1

    iput v14, v10, Landroid/os/Message;->arg2:I

    .line 7595
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 7547
    .end local v1           #currentSoundSetting:I
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #recoverEffect:Z
    .end local v12           #showToast:Z
    .restart local v7       #i:I
    .restart local v8       #iSize:I
    .restart local v9       #item:Lcom/htc/music/util/SoundEffectItem;
    :cond_c
    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v9, v14}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 7593
    .end local v7           #i:I
    .end local v8           #iSize:I
    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    .restart local v1       #currentSoundSetting:I
    .restart local v10       #msg:Landroid/os/Message;
    .restart local v11       #recoverEffect:Z
    .restart local v12       #showToast:Z
    :cond_d
    const/4 v14, 0x0

    iput v14, v10, Landroid/os/Message;->arg2:I

    goto :goto_4
.end method

.method protected initializeSoundEffectStyles()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 7272
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7274
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7275
    .local v1, resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 7276
    new-array v2, v6, [Ljava/lang/String;

    const v3, 0x204024b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x204024d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const v3, 0x204024c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 7280
    const v2, 0x204024c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    .line 7282
    const v2, 0x2040249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    .line 7333
    :cond_0
    :goto_0
    return-void

    .line 7287
    .end local v1           #resource:Landroid/content/res/Resources;
    :cond_1
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 7289
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    .line 7291
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->initEqualizerStlyes(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7304
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    if-nez v2, :cond_3

    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 7306
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->localizeEqualizerStyle([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    .line 7309
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7310
    .restart local v1       #resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 7311
    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 7314
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDolbyEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7315
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 7316
    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    aget-object v3, v3, v4

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v9

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    goto :goto_0

    .line 7295
    .end local v1           #resource:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 7296
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSoundEffectStyles, Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7300
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v2, "[HtcMusic]"

    const-string v3, "initializeSoundEffectStyles, mService is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7323
    .restart local v1       #resource:Landroid/content/res/Resources;
    :cond_5
    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    aget-object v3, v3, v4

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v5

    const-string v3, "Beats audio"

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public isShowNowPlaying()Z
    .locals 1

    .prologue
    .line 6452
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 32
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 3005
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "receive activity result, requestCode:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", resultCode:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    const/16 v28, -0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 3227
    :cond_0
    :goto_0
    return-void

    .line 3017
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/NowPlayingViewHelper;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v21

    .line 3020
    .local v21, result:Z
    if-nez v21, :cond_0

    .line 3024
    .end local v21           #result:Z
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3039
    :sswitch_0
    const/16 v28, -0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 3040
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v28, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v29

    aput v29, v18, v28

    .line 3041
    .local v18, list:[I
    const-string v28, "playlist"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 3043
    .local v19, playlist:I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 3026
    .end local v18           #list:[I
    .end local v19           #playlist:I
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 3027
    .local v27, uri:Landroid/net/Uri;
    if-eqz v27, :cond_0

    .line 3028
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 3029
    .restart local v18       #list:[I
    const/16 v28, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v29

    aput v29, v18, v28

    .line 3030
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 3031
    .restart local v19       #playlist:I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 3049
    .end local v18           #list:[I
    .end local v19           #playlist:I
    .end local v27           #uri:Landroid/net/Uri;
    :sswitch_2
    const/16 v28, -0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 3050
    move-object/from16 v22, p3

    .line 3051
    .local v22, resultIntent:Landroid/content/Intent;
    new-instance v23, Lcom/htc/music/HtcMusic$23;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$23;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Intent;)V

    .line 3071
    .local v23, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v26, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3072
    .local v26, thread:Ljava/lang/Thread;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 3077
    .end local v22           #resultIntent:Landroid/content/Intent;
    .end local v23           #setContactRingtoneRunnable:Ljava/lang/Runnable;
    .end local v26           #thread:Ljava/lang/Thread;
    :sswitch_3
    const-string v28, "[HtcMusic]"

    const-string v29, "DMR_CHOOSER"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    const-string v28, "DLNA"

    const/16 v29, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 3084
    .local v20, pref:Landroid/content/SharedPreferences;
    const-string v28, "DMR"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3085
    .local v4, DMR:Ljava/lang/String;
    const-string v28, "server"

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3086
    .local v5, DMS:Ljava/lang/String;
    const/16 v17, 0x1

    .line 3087
    .local v17, isSelectedDMR:Z
    if-nez v4, :cond_3

    .line 3088
    const/16 v17, 0x0

    .line 3091
    :cond_3
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DMR = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DMS = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    new-instance v9, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v9, v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    .line 3097
    .local v9, dlnaManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-virtual {v9, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    .line 3099
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 3100
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    const-string v29, "switch"

    const/16 v30, 0x1

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3115
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 3116
    const-string v28, "[HtcMusic]"

    const-string v29, "DMP mode change to DMS mode"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    const/4 v11, 0x0

    .line 3119
    .local v11, dmpPref:Landroid/content/SharedPreferences;
    const-string v28, "DMP"

    const/16 v29, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 3123
    const-string v28, "container"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3124
    .local v6, container:Ljava/lang/String;
    const-string v28, "curContentId"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3125
    .local v7, curContentId:Ljava/lang/String;
    const-string v28, "startIdx"

    const-wide/16 v29, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 3126
    .local v24, startIdx:J
    const-string v28, "endIdx"

    const-wide/16 v29, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 3127
    .local v14, endIdx:J
    const-string v28, "direction"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 3129
    .local v8, dir:I
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    const-wide/16 v28, -0x1

    cmp-long v28, v24, v28

    if-eqz v28, :cond_7

    if-eqz v8, :cond_7

    .line 3131
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 3132
    .local v13, ed:Landroid/content/SharedPreferences$Editor;
    const-string v28, "content"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3133
    const-string v28, "container"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3134
    const-string v28, "startIdx"

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-interface {v13, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3135
    const-string v28, "endIdx"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3136
    const-string v28, "direction"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3137
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3145
    .end local v6           #container:Ljava/lang/String;
    .end local v7           #curContentId:Ljava/lang/String;
    .end local v8           #dir:I
    .end local v11           #dmpPref:Landroid/content/SharedPreferences;
    .end local v13           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v14           #endIdx:J
    .end local v24           #startIdx:J
    :cond_4
    :goto_2
    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v10

    .line 3147
    .local v10, dlnaMode:I
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DMS = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "server"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DMR = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "container = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "container"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "content = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "content"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DLNA Mode = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3153
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 3197
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v16

    .line 3199
    .local v16, isPlaying:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 3200
    if-eqz v16, :cond_0

    .line 3201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3205
    .end local v16           #isPlaying:Z
    :catch_0
    move-exception v12

    .line 3206
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3102
    .end local v10           #dlnaMode:I
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_5
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    const-string v29, "switch"

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3104
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 3105
    const-string v28, "[HtcMusic]"

    const-string v29, "Service is playing"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 3110
    :catch_1
    move-exception v12

    .line 3111
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 3108
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_2
    const-string v28, "[HtcMusic]"

    const-string v29, "Service is null or not playing"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 3139
    .restart local v6       #container:Ljava/lang/String;
    .restart local v7       #curContentId:Ljava/lang/String;
    .restart local v8       #dir:I
    .restart local v11       #dmpPref:Landroid/content/SharedPreferences;
    .restart local v14       #endIdx:J
    .restart local v24       #startIdx:J
    :cond_7
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Some one value go wrong, container = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", curContentId = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", startIdx = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", dir = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3155
    .end local v6           #container:Ljava/lang/String;
    .end local v7           #curContentId:Ljava/lang/String;
    .end local v8           #dir:I
    .end local v11           #dmpPref:Landroid/content/SharedPreferences;
    .end local v14           #endIdx:J
    .end local v24           #startIdx:J
    .restart local v10       #dlnaMode:I
    :pswitch_1
    if-eqz v17, :cond_0

    .line 3157
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v28

    if-nez v28, :cond_8

    .line 3158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->pause()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3165
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    .line 3166
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 3169
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 3170
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 3171
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToDMC(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 3160
    :catch_2
    move-exception v12

    .line 3161
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 3176
    .end local v12           #e:Landroid/os/RemoteException;
    :pswitch_2
    if-eqz v17, :cond_0

    .line 3178
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v28

    if-eqz v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v28

    if-nez v28, :cond_a

    .line 3179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->pause()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3186
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    .line 3187
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 3190
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 3191
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 3181
    :catch_3
    move-exception v12

    .line 3182
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 3203
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_c
    :try_start_5
    const-string v28, "[HtcMusic]"

    const-string v29, "service null, cannot stop plugin service"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 3211
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 3214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v16

    .line 3216
    .restart local v16       #isPlaying:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 3217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 3219
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->switchToDMP(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 3221
    .end local v16           #isPlaying:Z
    :catch_4
    move-exception v12

    .line 3222
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3024
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x13 -> :sswitch_2
        0x25 -> :sswitch_3
    .end sparse-switch

    .line 3153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 3343
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_0

    .line 3344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 3345
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 3353
    :goto_0
    return-void

    .line 3351
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .parameter "newConfig"

    .prologue
    const/4 v10, 0x0

    const v9, 0x2080001

    const/16 v8, 0x6c

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 861
    const-string v4, "[HtcMusic]"

    const-string v5, "onConfigurationChanged"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget v4, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    .line 863
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 963
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 869
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_1

    .line 870
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    .line 874
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 875
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 877
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->mIsLyricPanelInit:Z

    .line 879
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 880
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 882
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v4, :cond_2

    .line 883
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 887
    :cond_2
    const v4, 0x7f080034

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 889
    .local v0, group:Landroid/view/ViewGroup;
    const v4, 0x7f08006a

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 890
    .local v2, mainContainer:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 891
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 894
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 895
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v4, 0x7f03002b

    invoke-virtual {v1, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 896
    .local v3, view:Landroid/view/View;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    const v4, 0x7f080036

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 902
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 905
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    .line 906
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    .line 907
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_4

    .line 908
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAlpha(I)V

    .line 915
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    .line 917
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    .line 918
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    .line 919
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initToolTip()V

    .line 922
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 923
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    .line 925
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 926
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 927
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 929
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_5

    .line 930
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setGlobalBackgroundResource(I)V

    .line 936
    :cond_5
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 937
    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    .line 939
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 940
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 944
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_6

    .line 945
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    .line 948
    :cond_6
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    if-eqz v4, :cond_8

    .line 957
    :cond_7
    const-string v4, "ffstop"

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->stopFFRWScan(Ljava/lang/String;)V

    .line 958
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    .line 959
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    .line 962
    :cond_8
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "icicle"

    .prologue
    .line 520
    const-string v13, "[HtcMusic]"

    const-string v14, "onCreate() +"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 527
    .local v4, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    if-nez v13, :cond_0

    .line 528
    new-instance v13, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/htc/music/HtcMusic$LyricUpdateReceiver;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    .line 529
    new-instance v6, Landroid/content/IntentFilter;

    const-string v13, "action_download_finish"

    invoke-direct {v6, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 530
    .local v6, lyricUpdateIntentFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 535
    .end local v6           #lyricUpdateIntentFilter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 536
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v13, :cond_1

    .line 537
    new-instance v13, Lcom/htc/music/HtcMusic$EventReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/htc/music/HtcMusic$EventReceiver;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 538
    new-instance v3, Landroid/content/IntentFilter;

    const-string v13, "com.htc.music.lockscreen_start"

    invoke-direct {v3, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 539
    .local v3, filter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 542
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_1
    const-string v13, "from-lockscreen"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 544
    .local v5, isFromLockscreen:Z
    const-string v13, "[HtcMusic]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onCreate] bp. value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    if-eqz v5, :cond_2

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 547
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 557
    .end local v5           #isFromLockscreen:Z
    :cond_2
    :goto_0
    if-eqz v4, :cond_4

    .line 558
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/HtcMusic;->CheckDLNAMode(Landroid/content/Intent;)V

    .line 559
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    .line 560
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/high16 v14, 0x10

    and-int/2addr v13, v14

    if-lez v13, :cond_3

    .line 561
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 565
    :cond_3
    const-string v13, "showEmptyQueue"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    .line 567
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 569
    .local v8, resources:Landroid/content/res/Resources;
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/HtcMusic;->setVolumeControlStream(I)V

    .line 571
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/HtcMusic;->requestWindowFeature(I)Z

    .line 574
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v13, v14, :cond_5

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v13, v14, :cond_6

    .line 575
    :cond_5
    const-string v13, "[HtcMusic]"

    const-string v14, "DMC mode, return directly"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_6
    new-instance v13, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    .line 581
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 582
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    .line 586
    const v13, 0x7f03002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/HtcMusic;->setContentView(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-nez v13, :cond_7

    .line 588
    new-instance v13, Lcom/htc/widget/ActionBarExt;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getActionBar()Landroid/app/ActionBar;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    new-instance v14, Lcom/htc/music/HtcMusic$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/music/HtcMusic$4;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v13, v14}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 598
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->initGlider()V

    .line 612
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    .line 613
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    .line 615
    if-eqz p1, :cond_c

    .line 616
    const-string v13, "configchange"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    .line 617
    const-string v13, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    .line 618
    const-string v13, "downloadalbumartid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 619
    const-string v13, "currentAudioId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 620
    const-string v13, "currentAudioPath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 625
    const-string v13, "tempSelectedEQIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 627
    .local v11, tempSelectedEQIndex:Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 629
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :cond_8
    :goto_1
    const-string v13, "tempSelectedSoundEffectIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 639
    const-string v13, "tempShowingEQIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 640
    .local v12, tempShowingEQIndex:Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 642
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 648
    :cond_9
    :goto_2
    const-string v13, "ringtoneAudioPath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 649
    .local v9, ringtoneAudioPath:Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 650
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v13, :cond_a

    .line 651
    new-instance v13, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v13, v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 653
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v14, "ringtoneAudioId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v13, v9}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v14, "ringtoneAudioType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    .line 659
    :cond_b
    const-string v13, "islyricsvisible"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    .line 663
    .end local v9           #ringtoneAudioPath:Ljava/lang/String;
    .end local v11           #tempSelectedEQIndex:Ljava/lang/String;
    .end local v12           #tempShowingEQIndex:Ljava/lang/String;
    :cond_c
    new-instance v13, Landroid/os/HandlerThread;

    const-string v14, "HtcMusicActivityWorker"

    invoke-direct {v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 664
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 665
    new-instance v13, Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/htc/music/HtcMusic$NonUiHandler;-><init>(Lcom/htc/music/HtcMusic;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 667
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-nez v13, :cond_d

    .line 668
    const-string v13, "[HtcMusic]"

    const-string v14, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v13, :cond_e

    .line 672
    const-string v13, "Music"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 675
    :cond_e
    const/4 v7, 0x0

    .line 676
    .local v7, nowPlayingViewOn:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "ShowNowPlaying"

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 678
    .local v10, showNowPlaying:I
    const/4 v13, -0x1

    if-ne v13, v10, :cond_11

    .line 679
    const/4 v7, 0x0

    .line 686
    :goto_3
    if-eqz v7, :cond_f

    .line 687
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 692
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    .line 695
    new-instance v13, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v16}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 696
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-virtual {v13, v14}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 698
    new-instance v13, Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    .line 699
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 700
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v13, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 704
    new-instance v13, Lcom/htc/music/HtcMusic$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/music/HtcMusic$5;-><init>(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 717
    new-instance v13, Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    .line 720
    const-string v13, "[HtcMusic]"

    const-string v14, "onCreate() -"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return-void

    .line 549
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v7           #nowPlayingViewOn:Z
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local v10           #showNowPlaying:I
    .restart local v5       #isFromLockscreen:Z
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 631
    .end local v5           #isFromLockscreen:Z
    .restart local v8       #resources:Landroid/content/res/Resources;
    .restart local v11       #tempSelectedEQIndex:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 632
    .local v2, ex:Ljava/lang/Exception;
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    goto/16 :goto_1

    .line 643
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v12       #tempShowingEQIndex:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 644
    .restart local v2       #ex:Ljava/lang/Exception;
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    goto/16 :goto_2

    .line 680
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v11           #tempSelectedEQIndex:Ljava/lang/String;
    .end local v12           #tempShowingEQIndex:Ljava/lang/String;
    .restart local v7       #nowPlayingViewOn:Z
    .restart local v10       #showNowPlaying:I
    :cond_11
    if-nez v10, :cond_12

    .line 681
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 683
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 25
    .parameter "id"

    .prologue
    .line 5723
    sparse-switch p1, :sswitch_data_0

    .line 6090
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v15

    :goto_0
    return-object v15

    .line 5725
    :sswitch_0
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v15

    goto :goto_0

    .line 5730
    :sswitch_1
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/CharSequence;

    const/16 v21, 0x0

    const v22, 0x7f07007a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x1

    const v22, 0x7f070079

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x2

    const v22, 0x7f0700b8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    .line 5733
    .local v12, items:[Ljava/lang/CharSequence;
    new-instance v21, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v22, 0x7f070078

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    new-instance v22, Lcom/htc/music/HtcMusic$31;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$31;-><init>(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v15

    .line 5753
    .local v15, repeatDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    goto :goto_0

    .line 5759
    .end local v12           #items:[Ljava/lang/CharSequence;
    .end local v15           #repeatDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_2
    new-instance v21, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f070068

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const v22, 0x1040013

    new-instance v23, Lcom/htc/music/HtcMusic$32;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$32;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    .line 5771
    .local v5, dialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v15, v5

    .line 5772
    goto/16 :goto_0

    .line 5774
    .end local v5           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 5777
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 5780
    :cond_1
    new-instance v21, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const v22, 0x1040013

    new-instance v23, Lcom/htc/music/HtcMusic$34;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$34;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const v22, 0x1040009

    new-instance v23, Lcom/htc/music/HtcMusic$33;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$33;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 5800
    .local v8, drmDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v15, v8

    .line 5801
    goto/16 :goto_0

    .line 5812
    .end local v8           #drmDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_4
    const/16 v21, 0x6

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 5813
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/CharSequence;

    const/16 v21, 0x0

    const v22, 0x7f0700b5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x1

    const v22, 0x7f0700b6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x2

    const v22, 0x7f0700b7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    .line 5825
    .restart local v12       #items:[Ljava/lang/CharSequence;
    :goto_1
    const/16 v16, 0x0

    .line 5826
    .local v16, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 5827
    new-instance v21, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 5828
    const-string v21, "[HtcMusic]"

    const-string v22, "Ringtonehelper is null!! this should never happen!!"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5831
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 5832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x13

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    .line 5834
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    :cond_3
    move-object/from16 v15, v16

    .line 5837
    goto/16 :goto_0

    .line 5818
    .end local v12           #items:[Ljava/lang/CharSequence;
    .end local v16           #ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_4
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/CharSequence;

    const/16 v21, 0x0

    const v22, 0x7f0700b5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x1

    const v22, 0x7f0700b6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    .restart local v12       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 5840
    .end local v12           #items:[Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    .line 5841
    const-string v21, "[HtcMusic]"

    const-string v22, "onCreateDialog DIALOG_DOWNLOAD_ALBUMART"

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5842
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5845
    :sswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    .line 5853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 5854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 5856
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5860
    :sswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    .line 5864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 5865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 5867
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5871
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createSoundEffectDialog()Landroid/app/Dialog;

    move-result-object v18

    .line 5872
    .local v18, soundEffectDialog:Landroid/app/Dialog;
    if-eqz v18, :cond_0

    move-object/from16 v15, v18

    .line 5873
    goto/16 :goto_0

    .line 5878
    .end local v18           #soundEffectDialog:Landroid/app/Dialog;
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createEqualizerDialog()Landroid/app/Dialog;

    move-result-object v9

    .line 5879
    .local v9, equalizerDialog:Landroid/app/Dialog;
    if-eqz v9, :cond_0

    move-object v15, v9

    .line 5880
    goto/16 :goto_0

    .line 5885
    .end local v9           #equalizerDialog:Landroid/app/Dialog;
    :sswitch_a
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/CharSequence;

    const/16 v21, 0x0

    const v22, 0x7f070124

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x1

    const v22, 0x7f070125

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    .line 5888
    .restart local v12       #items:[Ljava/lang/CharSequence;
    new-instance v21, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    new-instance v22, Lcom/htc/music/HtcMusic$35;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$35;-><init>(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v17

    .line 5905
    .local v17, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object/from16 v15, v17

    .line 5906
    goto/16 :goto_0

    .line 5911
    .end local v12           #items:[Ljava/lang/CharSequence;
    .end local v17           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareBundle:Landroid/os/Bundle;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v15

    goto/16 :goto_0

    .line 5923
    :sswitch_c
    const/4 v12, 0x0

    .line 5925
    .restart local v12       #items:[Ljava/lang/CharSequence;
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v11

    .line 5926
    .local v11, isOnlineMode:Z
    if-eqz v11, :cond_8

    .line 5927
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/CharSequence;

    .end local v12           #items:[Ljava/lang/CharSequence;
    const/16 v21, 0x0

    const v22, 0x7f0701dc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x1

    const v22, 0x204020f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x2

    const v22, 0x7f0701df

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    .line 5953
    .restart local v12       #items:[Ljava/lang/CharSequence;
    :cond_7
    :goto_2
    new-instance v21, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    new-instance v22, Lcom/htc/music/HtcMusic$36;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/htc/music/HtcMusic$36;-><init>(Lcom/htc/music/HtcMusic;Z)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v14

    .line 6029
    .local v14, optionDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v15, v14

    .line 6030
    goto/16 :goto_0

    .line 5933
    .end local v14           #optionDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 5935
    :cond_9
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/CharSequence;

    .end local v12           #items:[Ljava/lang/CharSequence;
    const/16 v21, 0x0

    const v22, 0x7f0701cc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x1

    const v22, 0x7f070059

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x2

    const v22, 0x204020f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x3

    const v22, 0x7f070056

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x4

    const v22, 0x204014d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x5

    const v22, 0x7f0701df

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    .restart local v12       #items:[Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 5944
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 5945
    :cond_b
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/CharSequence;

    .end local v12           #items:[Ljava/lang/CharSequence;
    const/16 v21, 0x0

    const v22, 0x204020f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x1

    const v22, 0x204014d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    const/16 v21, 0x2

    const v22, 0x7f0701df

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21

    .restart local v12       #items:[Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 6034
    .end local v11           #isOnlineMode:Z
    .end local v12           #items:[Ljava/lang/CharSequence;
    :sswitch_d
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 6035
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v21, 0x7f030019

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 6036
    .local v20, view:Landroid/view/View;
    const v21, 0x7f080057

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/AutoCompleteTextView;

    .line 6037
    .local v19, textview:Landroid/widget/AutoCompleteTextView;
    const v21, 0x7f07005d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 6038
    .local v13, name:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6039
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 6041
    new-instance v21, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v22, 0x7f070098

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const v22, 0x2040152

    new-instance v23, Lcom/htc/music/HtcMusic$38;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$38;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f070069

    new-instance v23, Lcom/htc/music/HtcMusic$37;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$37;-><init>(Lcom/htc/music/HtcMusic;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 6056
    .local v4, createDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v21, Lcom/htc/music/HtcMusic$EditTextWatcher;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lcom/htc/music/HtcMusic$EditTextWatcher;-><init>(Lcom/htc/widget/HtcAlertDialog;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v15, v4

    .line 6057
    goto/16 :goto_0

    .line 6060
    .end local v4           #createDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    .end local v13           #name:Ljava/lang/String;
    .end local v19           #textview:Landroid/widget/AutoCompleteTextView;
    .end local v20           #view:Landroid/view/View;
    :sswitch_e
    new-instance v21, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0700d3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const v22, 0x2040174

    new-instance v23, Lcom/htc/music/HtcMusic$39;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$39;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .local v6, dmrDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v15, v6

    .line 6070
    goto/16 :goto_0

    .line 6074
    .end local v6           #dmrDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_f
    new-instance v21, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0700d2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    const v22, 0x2040174

    new-instance v23, Lcom/htc/music/HtcMusic$40;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$40;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v21 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    .local v7, dmsDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v15, v7

    .line 6084
    goto/16 :goto_0

    .line 6088
    .end local v7           #dmsDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_10
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createConnectionFailDialog()Landroid/app/Dialog;

    move-result-object v15

    goto/16 :goto_0

    .line 5723
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x12 -> :sswitch_c
        0x13 -> :sswitch_a
        0x14 -> :sswitch_b
        0x15 -> :sswitch_d
        0x16 -> :sswitch_e
        0x17 -> :sswitch_f
        0x18 -> :sswitch_10
        0xaae61 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x2040216

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 2494
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2496
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateActionMenu(Landroid/view/Menu;)V

    .line 2498
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_2

    .line 2499
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-ne v3, v1, :cond_1

    .line 2548
    :cond_0
    :goto_0
    return v0

    .line 2503
    :cond_1
    iput v3, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2504
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 2507
    :cond_2
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v0, v1, :cond_0

    .line 2510
    iput v0, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2513
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_3

    .line 2515
    const/16 v1, 0x14

    const v2, 0x7f0701e2

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2520
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2521
    const/16 v1, 0x28

    const v2, 0x7f07007c

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2524
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2525
    const/16 v1, 0x15

    const v2, 0x7f07000b

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2528
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2529
    const/16 v1, 0x25

    const v2, 0x7f0700c8

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20800b5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2534
    :cond_6
    const/16 v1, 0x20

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2536
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2537
    const/16 v1, 0x29

    const v2, 0x2040218

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2541
    :cond_7
    const/16 v1, 0x2f

    const v2, 0x7f0701dc

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2542
    const/16 v1, 0x24

    const v2, 0x204020f

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2544
    const/16 v1, 0x31

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2390
    const-string v1, "[HtcMusic]"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2394
    invoke-static {p0}, Lcom/htc/music/util/ScreenStatus;->unRegisterReceiver(Landroid/app/Activity;)V

    .line 2396
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 2397
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2398
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 2403
    :cond_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 2405
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2408
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-eqz v1, :cond_2

    .line 2409
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-virtual {v1}, Lcom/htc/music/lyrics/widget/LyricsView;->clearResource()V

    .line 2410
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    .line 2420
    :cond_2
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_3

    .line 2421
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 2424
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cleanMessage()V

    .line 2426
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v1, :cond_4

    .line 2427
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2428
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 2431
    :cond_4
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_5

    .line 2432
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 2433
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2442
    :cond_5
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 2444
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_6

    .line 2445
    const-string v1, "Music"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 2448
    :cond_6
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ShowNowPlaying"

    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2457
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v1, :cond_7

    .line 2458
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 2459
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 2462
    :cond_7
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v1, :cond_8

    .line 2463
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v1}, Lcom/htc/music/GliderAdapter;->deInit()V

    .line 2464
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 2467
    :cond_8
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v1, :cond_9

    .line 2468
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 2469
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 2472
    :cond_9
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    if-eqz v1, :cond_a

    .line 2474
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2480
    :cond_a
    :goto_0
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 2482
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2483
    const-string v1, "[HtcMusic]"

    const-string v2, "onDestroy finished"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    return-void

    .line 2475
    :catch_0
    move-exception v0

    .line 2476
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[HtcMusic]"

    const-string v2, "unregisterReceiver mDmcPlaybackControlListener fail"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 3558
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 3560
    .local v0, repcnt:I
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod1(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3598
    :cond_0
    :goto_0
    return v1

    .line 3560
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod2(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3563
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 3598
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 3565
    :sswitch_0
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    goto :goto_0

    .line 3569
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    .line 3572
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3573
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->requestFocus()Z

    .line 3576
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    goto :goto_0

    .line 3579
    :sswitch_2
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    .line 3582
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3583
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->requestFocus()Z

    .line 3586
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    goto :goto_0

    .line 3590
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    goto :goto_0

    .line 3563
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x2f -> :sswitch_3
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3516
    packed-switch p1, :pswitch_data_0

    .line 3521
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3518
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/music/HtcMusic;->searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    const/4 v0, 0x1

    goto :goto_0

    .line 3516
    nop

    :pswitch_data_0
    .packed-switch 0xe3
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    .line 3441
    sparse-switch p1, :sswitch_data_0

    .line 3508
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 3443
    :sswitch_0
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v3, :cond_0

    .line 3446
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_2

    .line 3447
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    .line 3448
    iget-wide v3, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3449
    :cond_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 3459
    :cond_2
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3460
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    .line 3506
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3451
    :cond_3
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    goto :goto_2

    .line 3454
    :cond_4
    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    .line 3456
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_2

    .line 3463
    :sswitch_1
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v3, :cond_0

    .line 3466
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_5

    .line 3467
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v3, :cond_6

    iget-wide v3, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    .line 3468
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->next()V

    .line 3475
    :cond_5
    :goto_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3476
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    .line 3470
    :cond_6
    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    .line 3472
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_3

    .line 3479
    :sswitch_2
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 3480
    .local v1, searchManager:Landroid/app/SearchManager;
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    if-eqz v2, :cond_7

    .line 3481
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 3482
    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    goto/16 :goto_0

    .line 3484
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 3485
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/music/HtcMusic;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 3490
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3492
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z

    move-result v0

    .line 3493
    .local v0, isOnlineMode:Z
    if-eqz v0, :cond_8

    .line 3494
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/music/HtcMusic;->shareOnlineMusicTextViaShareKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3497
    :cond_8
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/music/HtcMusic;->shareMusicTextViaShareKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3441
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x54 -> :sswitch_2
        0xe3 -> :sswitch_3
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 2021
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    .line 2024
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2025
    const-string v3, "from-lockscreen"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2027
    .local v0, isFromLockscreen:Z
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onNewIntent] bp. value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    if-eqz v0, :cond_0

    .line 2029
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2030
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 2037
    .end local v0           #isFromLockscreen:Z
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v3, :cond_1

    .line 2039
    const-string v3, "ShowNowPlaying"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2041
    .local v1, showNowPlaying:Z
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2044
    .end local v1           #showNowPlaying:Z
    :cond_1
    if-eqz p1, :cond_3

    .line 2045
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2046
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 2047
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_2

    .line 2048
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    .line 2053
    :cond_2
    const-string v3, "directmode"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 2054
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get (on new) intent directmode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    return-void

    .line 2032
    .restart local v0       #isFromLockscreen:Z
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 2894
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 2896
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onActionMenuSelected(Landroid/view/MenuItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2965
    :goto_0
    return v4

    .line 2900
    :cond_0
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    iget v6, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v5, :cond_1

    .line 2902
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4, p1}, Lcom/htc/music/NowPlayingViewHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 2907
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 2965
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 2909
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->launchProperty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2962
    :catch_0
    move-exception v0

    .line 2963
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2913
    .end local v0           #ex:Ljava/lang/Exception;
    :sswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    goto :goto_1

    .line 2917
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2918
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->launchGlobalSoundEffectSetting()V

    goto :goto_0

    .line 2921
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->showSoundEffectDialog()V

    goto :goto_0

    .line 2927
    :sswitch_3
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 2931
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2933
    .local v2, intent:Landroid/content/Intent;
    const/4 v5, -0x1

    invoke-virtual {p0, v2, v5}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2937
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_5
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2940
    :sswitch_6
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_2

    .line 2941
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getSongId()I

    move-result v3

    .line 2942
    .local v3, songId:I
    new-instance v1, Lcom/htc/music/online/util/AsyncSongDetailGetter;

    invoke-direct {v1, p0}, Lcom/htc/music/online/util/AsyncSongDetailGetter;-><init>(Landroid/content/Context;)V

    .line 2943
    .local v1, getter:Lcom/htc/music/online/util/AsyncSongDetailGetter;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->onSongDetailLoadingListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    invoke-virtual {v1, v3, v4}, Lcom/htc/music/online/util/AsyncSongDetailGetter;->start(ILcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;)V

    goto :goto_1

    .line 2949
    .end local v1           #getter:Lcom/htc/music/online/util/AsyncSongDetailGetter;
    .end local v3           #songId:I
    :sswitch_7
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2950
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/music/HtcMusic;->shareOnlineMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2953
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->chooseShareType()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2907
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x20 -> :sswitch_0
        0x24 -> :sswitch_7
        0x25 -> :sswitch_1
        0x28 -> :sswitch_2
        0x29 -> :sswitch_4
        0x2f -> :sswitch_5
        0x31 -> :sswitch_6
    .end sparse-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 2345
    const-string v2, "[HtcMusic]"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v2, :cond_0

    .line 2354
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 2357
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2359
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 2361
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2362
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v2, p0}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 2363
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v2}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    .line 2366
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2367
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2368
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x400001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2369
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Bypass][onPause] Set winParams.flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2379
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v2, :cond_2

    .line 2380
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v2}, Lcom/htc/music/GliderAdapter;->pauseDecoder()V

    .line 2383
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setDLNAPreloadEnable(Z)V

    .line 2385
    const-string v2, "[HtcMusic]"

    const-string v3, "onPause finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v3, 0x1

    .line 6119
    iput p1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    .line 6120
    packed-switch p1, :pswitch_data_0

    .line 6224
    .end local p2
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 6122
    .restart local p2
    :pswitch_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6123
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6131
    .restart local p2
    :pswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 6136
    .restart local p2
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/htc/music/HtcMusic;->prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 6166
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectDialog()V

    goto :goto_0

    .line 6170
    :pswitch_5
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 6171
    .local v1, listview:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 6172
    iget v2, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 6173
    iget v2, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 6181
    .end local v1           #listview:Landroid/widget/ListView;
    .restart local p2
    :pswitch_6
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6196
    .restart local p2
    :pswitch_7
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 6198
    iget v2, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v2, :cond_0

    .line 6201
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6202
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 6204
    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v2, :cond_1

    .line 6205
    const-string v2, "[HtcMusic]"

    const-string v3, "mCurrentAudioId < 0"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6212
    :catch_0
    move-exception v0

    .line 6213
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6214
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 6215
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 6216
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    goto/16 :goto_0

    .line 6209
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 6210
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 6120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2683
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onPrepareActionMenu(Landroid/view/Menu;)V

    .line 2685
    iget-boolean v7, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v7, :cond_2

    .line 2686
    iget v5, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v8, v5, :cond_0

    .line 2688
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeGroup(I)V

    .line 2689
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2692
    :cond_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v5, p1}, Lcom/htc/music/NowPlayingViewHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    .line 2812
    :cond_1
    :goto_0
    return v5

    .line 2695
    :cond_2
    iget v7, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v5, v7, :cond_3

    .line 2697
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeGroup(I)V

    .line 2698
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2701
    :cond_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_1

    .line 2705
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v4

    .line 2708
    .local v4, nDlnaMode:I
    const/16 v7, 0x14

    :try_start_0
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2709
    .local v0, downloadAlbumArtMenu:Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 2710
    if-nez v4, :cond_5

    .line 2711
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v7

    iput v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 2712
    iget v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-ltz v7, :cond_1

    .line 2714
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2720
    :cond_4
    :goto_1
    iget-boolean v7, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    if-ne v5, v7, :cond_d

    move v5, v6

    .line 2721
    goto :goto_0

    .line 2716
    :cond_5
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2727
    .end local v0           #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :catch_0
    move-exception v1

    .line 2728
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 2729
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 2730
    iput v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    .line 2733
    .end local v1           #ex:Landroid/os/RemoteException;
    :goto_2
    const/4 v3, 0x0

    .line 2735
    .local v3, menuItem:Landroid/view/MenuItem;
    const/16 v7, 0x28

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2736
    if-eqz v3, :cond_7

    .line 2737
    if-eqz v4, :cond_6

    if-ne v5, v4, :cond_e

    .line 2739
    :cond_6
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2745
    :cond_7
    :goto_3
    const/16 v7, 0x15

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2746
    if-eqz v3, :cond_9

    .line 2747
    if-eqz v4, :cond_8

    if-ne v5, v4, :cond_f

    .line 2749
    :cond_8
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2755
    :cond_9
    :goto_4
    const/16 v7, 0x2e

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2756
    if-eqz v3, :cond_b

    .line 2757
    if-eqz v4, :cond_a

    if-ne v5, v4, :cond_10

    .line 2759
    :cond_a
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2766
    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v2

    .line 2767
    .local v2, isOnline:Z
    const/16 v7, 0x24

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2768
    if-nez v2, :cond_11

    .line 2769
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2774
    :goto_6
    const/16 v7, 0x2f

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2775
    if-nez v2, :cond_12

    .line 2776
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2781
    :goto_7
    const/16 v7, 0x20

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2782
    if-eqz v2, :cond_13

    .line 2783
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2795
    :goto_8
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2796
    if-eqz v3, :cond_c

    .line 2797
    if-eqz v2, :cond_14

    .line 2798
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2804
    :cond_c
    :goto_9
    const/16 v7, 0x31

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2805
    if-eqz v2, :cond_15

    .line 2806
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2724
    .end local v2           #isOnline:Z
    .end local v3           #menuItem:Landroid/view/MenuItem;
    .restart local v0       #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :cond_d
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 2725
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2741
    .end local v0           #downloadAlbumArtMenu:Landroid/view/MenuItem;
    .restart local v3       #menuItem:Landroid/view/MenuItem;
    :cond_e
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 2751
    :cond_f
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 2761
    :cond_10
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 2771
    .restart local v2       #isOnline:Z
    :cond_11
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 2778
    :cond_12
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 2785
    :cond_13
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 2800
    :cond_14
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    .line 2808
    :cond_15
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2061
    const-string v8, "[HtcMusic]"

    const-string v9, "onResume +"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    const-string v8, "power"

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 2066
    .local v6, pMgr:Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2067
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2195
    :goto_0
    return-void

    .line 2072
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doStart()V

    .line 2074
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v8, :cond_1

    .line 2075
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SSurfaceView;->onResume()V

    .line 2078
    :cond_1
    const/4 v8, 0x2

    iget v9, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v8, v9, :cond_2

    const/4 v8, 0x3

    iget v9, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v8, v9, :cond_3

    .line 2079
    :cond_2
    const-string v8, "[HtcMusic]"

    const-string v9, "DMC/Push mode..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    :cond_3
    iput-boolean v12, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 2086
    iget-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v8, :cond_4

    .line 2087
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v8}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 2090
    :cond_4
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 2093
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-eqz v8, :cond_5

    .line 2094
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2098
    :cond_5
    const/16 v8, 0x12

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 2099
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2101
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v8, :cond_6

    .line 2102
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v8}, Lcom/htc/music/GliderAdapter;->resumeDecoder()V

    .line 2105
    :cond_6
    iput-boolean v12, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 2130
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2133
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2134
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPluggedCacheValue()Z

    move-result v3

    .line 2136
    .local v3, isWiredPluggedLastTime:Z
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v2

    .line 2137
    .local v2, isWiredPlugged:Z
    if-eq v3, v2, :cond_7

    .line 2138
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->wiredHeadSetStatusChanged(Z)V

    .line 2151
    .end local v2           #isWiredPlugged:Z
    .end local v3           #isWiredPluggedLastTime:Z
    :cond_7
    :goto_1
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8, p0, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 2152
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v8, p0, p0}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    .line 2155
    :cond_8
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 2156
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 2157
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v4

    .line 2158
    .local v4, next:J
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_9

    .line 2160
    :try_start_0
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2161
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2166
    :cond_9
    :goto_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkedInternalStorageWhenResume(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2167
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 2141
    .end local v4           #next:J
    :cond_a
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPluggedCacheValue()Z

    move-result v1

    .line 2143
    .local v1, headsetPreviousStatus:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    .line 2146
    .local v0, headsetLatestStatus:Z
    if-eq v1, v0, :cond_7

    .line 2147
    invoke-virtual {p0, v0, v12}, Lcom/htc/music/HtcMusic;->headSetStatusChanged(ZZ)V

    goto :goto_1

    .line 2171
    .end local v0           #headsetLatestStatus:Z
    .end local v1           #headsetPreviousStatus:Z
    .restart local v4       #next:J
    :cond_b
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/music/HtcMusic$21;

    invoke-direct {v8, p0}, Lcom/htc/music/HtcMusic$21;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2177
    .local v7, setHeadsetOwnerThread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 2179
    iget-boolean v8, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    if-eqz v8, :cond_c

    .line 2181
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initialUI()V

    .line 2184
    iput-boolean v12, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 2187
    :cond_c
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/htc/music/HtcMusic;->setDLNAPreloadEnable(Z)V

    .line 2190
    sget-boolean v8, Lcom/htc/music/HtcMusic;->mNetworkAvailableChecked:Z

    if-eqz v8, :cond_d

    .line 2191
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v9, 0xf

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2194
    :cond_d
    const-string v8, "[HtcMusic]"

    const-string v9, "onResume -"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2162
    .end local v7           #setHeadsetOwnerThread:Ljava/lang/Thread;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1853
    const-string v1, "configchange"

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1854
    const-string v0, "message"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    const-string v0, "downloadalbumartid"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1857
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1859
    :cond_1
    const-string v0, "currentAudioId"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1860
    const-string v0, "currentAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1870
    const-string v0, "tempSelectedEQIndex"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1875
    const-string v0, "tempShowingEQIndex"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const-string v0, "tempSelectedSoundEffectIndex"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    iget-object v1, v1, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_5

    .line 1882
    const-string v0, "ringtoneAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const-string v0, "ringtoneAudioId"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1885
    const-string v0, "ringtoneAudioType"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1889
    :cond_5
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1890
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1893
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLyricPanel:Lcom/htc/music/lyrics/widget/LyricsView;

    if-eqz v0, :cond_6

    .line 1894
    const-string v0, "islyricsvisible"

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsLyricShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1897
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1898
    return-void

    .line 1853
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onSelectionChange(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 7125
    new-instance v0, Lcom/htc/music/HtcMusic$41;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$41;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7130
    return-void
.end method

.method public onSelectionChangeUI(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 7134
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_0

    .line 7135
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 7137
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1902
    const-string v1, "[HtcMusic]"

    const-string v2, "[HtcMusic][onStart Begin]"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1905
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->dismissActiveDialog()V

    .line 1909
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1910
    .local v0, pMgr:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1923
    :goto_0
    return-void

    .line 1914
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doStart()V

    .line 1916
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1917
    invoke-static {p0}, Lcom/htc/music/util/ScreenStatus;->registerReceiver(Landroid/app/Activity;)V

    .line 1920
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->registerTVDisplayHelper()V

    .line 1922
    const-string v1, "[HtcMusic]"

    const-string v2, "[HtcMusic][onStart End]"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 7142
    new-instance v0, Lcom/htc/music/HtcMusic$42;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$42;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7147
    return-void
.end method

.method public onStateChangeUI(I)V
    .locals 8
    .parameter "nState"

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x1

    .line 7151
    iput p1, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 7153
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 7191
    :cond_0
    :goto_0
    return-void

    .line 7155
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_0

    .line 7158
    if-ne v7, p1, :cond_2

    .line 7159
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 7161
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v3

    .line 7162
    .local v3, status:Z
    if-eqz v3, :cond_4

    .line 7163
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    .line 7178
    .end local v3           #status:Z
    :cond_2
    :goto_1
    const/4 v4, 0x3

    if-eq v4, p1, :cond_3

    const/16 v4, 0x9

    if-eq v4, p1, :cond_3

    const/16 v4, 0xb

    if-eq v4, p1, :cond_3

    const/4 v4, 0x2

    if-ne v4, p1, :cond_5

    .line 7182
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    .line 7183
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_0

    .line 7184
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7188
    :catch_0
    move-exception v0

    .line 7189
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 7164
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #status:Z
    :cond_4
    :try_start_1
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    if-ne v6, v4, :cond_2

    .line 7165
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSelection()I

    move-result v2

    .line 7166
    .local v2, position:I
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 7167
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_2

    .line 7168
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 7170
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 7171
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 7185
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #position:I
    .end local v3           #status:Z
    :cond_5
    if-ne v7, p1, :cond_0

    .line 7186
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onStop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1694
    const-string v2, "[HtcMusic]"

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v2, :cond_0

    .line 1700
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->onPause()V

    .line 1705
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1706
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1707
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V

    .line 1711
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1712
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1715
    :cond_2
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v2, :cond_4

    .line 1716
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 1718
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_3

    .line 1719
    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 1722
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "NOW_PLAYING_SWITCH"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1724
    .local v1, nowPlayingViewOn:Z
    if-eqz v1, :cond_a

    .line 1727
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "NOW_PLAYING_SWITCH"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1734
    .end local v1           #nowPlayingViewOn:Z
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v2, :cond_5

    .line 1735
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v2, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1736
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1737
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1740
    :cond_5
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1741
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1743
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1747
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1751
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1756
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1761
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_6

    .line 1762
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityGoSleep()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1768
    :cond_6
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1769
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    if-eqz v2, :cond_7

    .line 1770
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1771
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    .line 1773
    :cond_7
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1774
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1777
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_6
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1780
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    .line 1781
    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 1782
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v2, :cond_8

    .line 1783
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 1789
    :cond_8
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1791
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->releaseTVDisplayHelper()V

    .line 1794
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    if-eqz v2, :cond_b

    .line 1795
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-virtual {v2}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->onStop()V

    .line 1801
    :goto_7
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v2, :cond_9

    .line 1802
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 1805
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1806
    const-string v2, "[HtcMusic]"

    const-string v3, "onStop finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    return-void

    .line 1730
    .restart local v1       #nowPlayingViewOn:Z
    :cond_a
    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    goto/16 :goto_0

    .line 1763
    .end local v1           #nowPlayingViewOn:Z
    :catch_0
    move-exception v0

    .line 1764
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 1777
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 1797
    :cond_b
    const-string v2, "[HtcMusic]"

    const-string v3, "[onStop] mSinaRequestHandler is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1775
    :catch_1
    move-exception v2

    .line 1777
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_6

    .line 1757
    :catch_2
    move-exception v2

    goto :goto_4

    .line 1752
    :catch_3
    move-exception v2

    goto :goto_3

    .line 1748
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .line 1744
    :catch_5
    move-exception v2

    goto/16 :goto_1
.end method

.method public plugOutBeatsHeadsetHandle()V
    .locals 4

    .prologue
    .line 7631
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7632
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 7635
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyleIndex(Landroid/content/Context;)I

    move-result v2

    .line 7637
    .local v2, styleIndex:I
    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 7638
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 7641
    const/4 v1, 0x0

    .line 7642
    .local v1, iResourceID:I
    const/4 v0, 0x1

    .line 7643
    .local v0, bShowToast:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7646
    const/4 v0, 0x0

    .line 7677
    :goto_0
    if-eqz v0, :cond_1

    .line 7678
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7679
    :cond_1
    return-void

    .line 7654
    :cond_2
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7656
    const v1, 0x2040255

    goto :goto_0

    .line 7667
    :cond_3
    const v1, 0x7f0700a4

    goto :goto_0
.end method

.method prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 8687
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->queryUpdateAlbumArtSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z

    .line 8688
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum()V

    .line 8689
    return-void
.end method

.method public queryMediaInfo(I)I
    .locals 11
    .parameter "id"

    .prologue
    .line 9128
    const/4 v9, 0x0

    .line 9129
    .local v9, mAlbumId:I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 9133
    .local v2, mOnlineCursorCols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 9135
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 9138
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 9139
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9140
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 9141
    .local v6, colCount:I
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 9142
    .local v10, position:I
    if-lez v6, :cond_0

    if-gez v10, :cond_2

    .line 9143
    :cond_0
    const-string v0, "[HtcMusic]"

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

    .line 9144
    const/4 v0, -0x1

    .line 9151
    if-eqz v7, :cond_1

    .line 9152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 9153
    const/4 v7, 0x0

    .line 9156
    .end local v6           #colCount:I
    .end local v10           #position:I
    :cond_1
    :goto_0
    return v0

    .line 9146
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

    .line 9151
    .end local v6           #colCount:I
    .end local v10           #position:I
    :cond_3
    if-eqz v7, :cond_4

    .line 9152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 9153
    :goto_1
    const/4 v7, 0x0

    :cond_4
    move v0, v9

    .line 9156
    goto :goto_0

    .line 9148
    :catch_0
    move-exception v8

    .line 9149
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "[HtcMusic]"

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

    .line 9151
    if-eqz v7, :cond_4

    .line 9152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 9151
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 9152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 9153
    const/4 v7, 0x0

    .line 9151
    :cond_5
    throw v0
.end method

.method setAsResetCurrentItem(Lcom/htc/widget/HtcListItem;)V
    .locals 3
    .parameter "listItem"

    .prologue
    .line 8757
    const v1, 0x7f080025

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 8759
    .local v0, lineText:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 8760
    const v1, 0x7f0700f1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 8761
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 8762
    new-instance v1, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;

    invoke-direct {v1, p0}, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8763
    const-string v1, "[HtcMusic]"

    const-string v2, "reset current albumart enable"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8764
    return-void
.end method

.method setAsUpdateCurrentItem(Lcom/htc/widget/HtcListItem;)V
    .locals 3
    .parameter "listItem"

    .prologue
    .line 8747
    const v1, 0x7f080025

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 8749
    .local v0, lineText:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 8750
    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 8751
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 8752
    new-instance v1, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;

    invoke-direct {v1, p0}, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8753
    const-string v1, "[HtcMusic]"

    const-string v2, "update current albumart"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8754
    return-void
.end method

.method public setEQSelectedIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 8202
    iput p1, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 8204
    return-void
.end method

.method public setNowPlayingVisible(Z)V
    .locals 9
    .parameter "setVisible"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6456
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-ne v4, p1, :cond_1

    .line 6541
    :cond_0
    :goto_0
    return-void

    .line 6459
    :cond_1
    if-eqz p1, :cond_8

    .line 6460
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6461
    .local v0, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/track"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6462
    const-string v4, "isnowplayinglist"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6464
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-nez v4, :cond_6

    .line 6466
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6467
    sget-object v4, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->ONLINE:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    invoke-static {v4, p0}, Lcom/htc/music/online/NowPlayingFactory;->getNowPlayingViewHelper(Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;Landroid/app/Activity;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 6471
    :goto_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4, v0, v8}, Lcom/htc/music/NowPlayingViewHelper;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 6482
    :goto_2
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 6483
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 6485
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    .line 6500
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_3
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    .line 6502
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-eqz v4, :cond_0

    .line 6503
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x2c

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 6504
    .local v2, queue:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x2d

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 6506
    .local v3, soundhound:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v5, 0x32

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 6508
    .local v1, lyric:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_a

    .line 6511
    if-eqz v2, :cond_3

    .line 6512
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6514
    :cond_3
    if-eqz v3, :cond_4

    .line 6515
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6518
    :cond_4
    if-eqz v1, :cond_0

    .line 6520
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 6469
    .end local v1           #lyric:Landroid/view/MenuItem;
    .end local v2           #queue:Landroid/view/MenuItem;
    .end local v3           #soundhound:Landroid/view/MenuItem;
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_5
    sget-object v4, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->LOCAL:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    invoke-static {v4, p0}, Lcom/htc/music/online/NowPlayingFactory;->getNowPlayingViewHelper(Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;Landroid/app/Activity;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    goto :goto_1

    .line 6474
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->isOnlineMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6475
    sget-object v4, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->ONLINE:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    invoke-static {v4, p0}, Lcom/htc/music/online/NowPlayingFactory;->getNowPlayingViewHelper(Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;Landroid/app/Activity;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 6479
    :goto_4
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4, v0}, Lcom/htc/music/NowPlayingViewHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 6480
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onRestart()V

    goto :goto_2

    .line 6477
    :cond_7
    sget-object v4, Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;->LOCAL:Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;

    invoke-static {v4, p0}, Lcom/htc/music/online/NowPlayingFactory;->getNowPlayingViewHelper(Lcom/htc/music/online/NowPlayingFactory$NowPlayingType;Landroid/app/Activity;)Lcom/htc/music/NowPlayingViewHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    goto :goto_4

    .line 6487
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v4, :cond_2

    .line 6488
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_9

    .line 6489
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setVisibility(Z)V

    .line 6491
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->requestLayout()V

    .line 6494
    :cond_9
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    .line 6495
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->finish()V

    .line 6496
    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    goto :goto_3

    .line 6526
    .restart local v1       #lyric:Landroid/view/MenuItem;
    .restart local v2       #queue:Landroid/view/MenuItem;
    .restart local v3       #soundhound:Landroid/view/MenuItem;
    :cond_a
    if-eqz v2, :cond_b

    .line 6527
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6529
    :cond_b
    if-eqz v3, :cond_c

    .line 6530
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6533
    :cond_c
    if-eqz v1, :cond_0

    .line 6535
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected setProgressTimeIndicator()V
    .locals 8

    .prologue
    .line 8906
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 8908
    :try_start_0
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v0

    .line 8909
    .local v0, pos:J
    :goto_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8915
    .end local v0           #pos:J
    :cond_0
    :goto_1
    return-void

    .line 8908
    :cond_1
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8912
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected showNewDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 8897
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->showNewDialog(ILandroid/os/Bundle;)V

    .line 8898
    return-void
.end method

.method protected showNewDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "args"

    .prologue
    .line 8901
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 8902
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/HtcMusic;->showDialog(ILandroid/os/Bundle;)Z

    .line 8903
    return-void
.end method

.method public showSoundEffectDialog()V
    .locals 2

    .prologue
    const v1, 0x2040255

    .line 7919
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 7920
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, mService is null!!! Can\'t show sound enhancer dialog."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7965
    :goto_0
    return-void

    .line 7928
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7930
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7931
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, HDMI is plugged and Headset is Not plugged. return."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7941
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7942
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7948
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7949
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7950
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support HDMI out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7954
    :cond_2
    const v0, 0x7f0700a4

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7955
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support Speaker out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7962
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 7963
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 7964
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 3605
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3606
    .local v2, mIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3607
    const-string v3, "content://servo_search/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3608
    const-string v3, "CATEGORY_ORDER"

    const-string v4, "media/audio"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3609
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3611
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3612
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 3624
    :cond_0
    :goto_0
    return-void

    .line 3614
    :cond_1
    iget v3, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v3, :cond_0

    .line 3615
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3617
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3618
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method switchToDMP(Z)V
    .locals 9
    .parameter "isPlaying"

    .prologue
    .line 3950
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-string v6, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v5, v6}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3952
    const-string v5, "DLNA"

    const/4 v6, 0x5

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3954
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v5, "switchDMP"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3956
    .local v0, Switch:Z
    if-eqz v0, :cond_2

    .line 3957
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3958
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 3960
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3962
    .local v3, i:Landroid/content/Intent;
    const-string v5, "command"

    const-string v6, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3965
    const-string v2, ""

    .line 3966
    .local v2, emptyStr:Ljava/lang/String;
    const-string v5, "server"

    const-string v6, "server"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3968
    const-string v5, "container"

    const-string v6, "container"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3970
    const-string v5, "content"

    const-string v6, "content"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3972
    const-string v5, "startIdx"

    const-string v6, "startIdx"

    const-wide/16 v7, -0x1

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3974
    const-string v5, "endIdx"

    const-string v6, "endIdx"

    const-wide/16 v7, -0x1

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3976
    const-string v5, "direction"

    const-string v6, "direction"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3979
    const-string v5, "dmsFilePath"

    const-string v6, "filepath"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3983
    if-eqz p1, :cond_1

    .line 3984
    const-string v5, "forcePlay"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3986
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3988
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "switchDMP"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3994
    .end local v0           #Switch:Z
    .end local v2           #emptyStr:Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 3991
    :catch_0
    move-exception v1

    .line 3992
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method syncUpdateCurrentAlbum()V
    .locals 10

    .prologue
    .line 8703
    const/4 v7, 0x0

    .line 8705
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8706
    .local v0, resolver:Landroid/content/ContentResolver;
    iget v6, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 8707
    .local v6, currentAlbumId:I
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 8708
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v6

    .line 8709
    iput v6, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 8711
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    .line 8712
    .local v2, cols:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl_album_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8714
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 8718
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8719
    const-string v1, "dl_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 8722
    .local v9, path:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 8723
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z

    .line 8727
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8739
    .end local v9           #path:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    .line 8740
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8741
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    :goto_2
    const/4 v7, 0x0

    .line 8744
    :cond_2
    return-void

    .line 8725
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #currentAlbumId:I
    .restart local v9       #path:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 8731
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v9           #path:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 8732
    .local v8, ex:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught remote exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8739
    if-eqz v7, :cond_2

    .line 8740
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 8729
    .end local v8           #ex:Landroid/os/RemoteException;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #currentAlbumId:I
    :cond_4
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 8734
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    :catch_1
    move-exception v8

    .line 8735
    .local v8, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8739
    if-eqz v7, :cond_2

    .line 8740
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 8739
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 8740
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8741
    const/4 v7, 0x0

    .line 8739
    :cond_5
    throw v1
.end method

.method syncUpdateCurrentAlbumAndRefreshDialog(Landroid/app/Dialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 8691
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum()V

    .line 8692
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8693
    const v3, 0x7f080061

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    .line 8694
    .local v2, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 8695
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v3, v0, Landroid/widget/ArrayAdapter;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 8696
    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 8697
    .local v1, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 8701
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    .end local v2           #listView:Lcom/htc/widget/HtcListView;
    :cond_0
    return-void
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 1
    .parameter "newStatus"

    .prologue
    .line 7402
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7437
    :cond_0
    return-void
.end method
