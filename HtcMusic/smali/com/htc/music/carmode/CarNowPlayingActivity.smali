.class public Lcom/htc/music/carmode/CarNowPlayingActivity;
.super Landroid/app/Activity;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;,
        Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    }
.end annotation


# static fields
.field private static final ALBUM_QUEUE:Ljava/lang/String; = "album_queue"

.field private static final ALBUM_QUEUE_POS:Ljava/lang/String; = "album_queue_pos"

.field private static final ALBUM_QUEUE_SIZE:Ljava/lang/String; = "album_queue_size"

.field private static final ANIMATION_STATE:Ljava/lang/String; = "animation_state"

.field private static final COEFFICIENT_GESTURE_ALBUM_RATIO:F = 0.3f

.field private static final COEFFICIENT_GESTURE_BACK_RATIO:F = 0.2f

.field private static final COEFFICIENT_TOUCH_INTERVAL:F = 100.0f

.field private static final COEFFICIENT_TOUCH_RANGE_RATIO:F = 0.03f

.field private static final GLIDER_STATE:Ljava/lang/String; = "glider_state"

.field private static final IS_BEATS_ON:Ljava/lang/String; = "is_beats_on"

.field private static final IS_HEADSET_PLUGGED:Ljava/lang/String; = "is_headset_plugged"

.field private static final IS_PLAYING:Ljava/lang/String; = "is_playing"

.field private static final NONUI_ANIMATION_INIT:I = 0xe

.field private static final NONUI_DO_NEXT:I = 0x6

.field private static final NONUI_DO_PLAY_PAUSE:I = 0x3

.field private static final NONUI_DO_PREV:I = 0x7

.field private static final NONUI_DO_REPEAT:I = 0x5

.field private static final NONUI_DO_SEEK:I = 0x14

.field private static final NONUI_DO_SHUFFLE:I = 0x4

.field private static final NONUI_DO_STATE_CHANGE_UI:I = 0x13

.field private static final NONUI_END_ANIMATION:I = 0x12

.field private static final NONUI_GET_ALBUM_QUEUE_POS:I = 0xd

.field private static final NONUI_GET_BEATS_STATE:I = 0x15

.field private static final NONUI_GET_PLAY_STATE:I = 0x9

.field private static final NONUI_GET_REPEAT_STATE:I = 0xb

.field private static final NONUI_GET_SHUFFLE_STATE:I = 0xa

.field private static final NONUI_GET_TRACK_INFO:I = 0x2

.field private static final NONUI_GET_TRACK_TIME:I = 0x8

.field private static final NONUI_PLAY_ALBUM:I = 0x1

.field private static final NONUI_SKIP_ANIMATION:I = 0xf

.field private static final NONUI_START_NEXT_ANIMATION:I = 0x10

.field private static final NONUI_START_PREV_ANIMATION:I = 0x11

.field private static final NONUI_UPDATE_GLIDER:I = 0xc

.field private static final REOPEN_CURRENT:I = 0x16

.field private static final REPEAT_MODE:Ljava/lang/String; = "repeat_mode"

.field private static final SEEK_POS:Ljava/lang/String; = "seek_pos"

.field private static final SHUFFLE_MODE:Ljava/lang/String; = "shuffle_mode"

.field private static final TAG:Ljava/lang/String; = "[CarNowPlayingActivity]"

.field private static final UI_ANIMATION_INIT:I = 0x7

.field private static final UI_DISPATCH_TOUCH_EVENT:I = 0xc

.field private static final UI_DO_STATE_CHANGE_UI:I = 0xb

.field private static final UI_QUEUE_NOT_FOUND:I = 0xd

.field private static final UI_REFRESH_BEATS_STATE:I = 0xe

.field private static final UI_REFRESH_GLIDER:I = 0x8

.field private static final UI_REFRESH_PLAY_STATE:I = 0x2

.field private static final UI_REFRESH_REPEAT:I = 0x4

.field private static final UI_REFRESH_SHUFFLE:I = 0x3

.field private static final UI_REFRESH_TRACK_INFO:I = 0x1

.field private static final UI_REFRESH_TRACK_TIME:I = 0x5

.field private static final UI_SHOW_TOAST:I = 0x6

.field private static final UI_START_NEXT_ANIMATION:I = 0x9

.field private static final UI_START_PREV_ANIMATION:I = 0xa

.field private static mNetworkAvailableChecked:Z


# instance fields
.field private m3DLayout:Landroid/widget/RelativeLayout;

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field mAlbumArtGesture:Landroid/view/View;

.field private mAlbumArtGestureDetector:Landroid/view/GestureDetector;

.field private mAlbumArtistName:Landroid/widget/TextView;

.field private mBeatsIndicator:Landroid/widget/ImageView;

.field private mCarDockListener:Landroid/content/BroadcastReceiver;

.field private mElapsedTime:J

.field private mEnalbeAutoPlay:Z

.field private mErrorText:Landroid/widget/TextView;

.field mFirstMe:Landroid/view/MotionEvent;

.field mFirstTouchTime:J

.field private mGestureAlbumWidth:D

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHeight:D

.field private mGlanceView:Landroid/view/ViewGroup;

.field private mGlanceViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

.field private mGliderState:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field mIsFling:Z

.field private mIsOnlineLoading:Z

.field mIsSeriveBinded:Z

.field private mMainLayout:Landroid/view/ViewGroup;

.field private mNextButton:Lcom/htc/widget/HtcRimImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

.field private mPauseButton:Lcom/htc/widget/HtcRimImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field private mPrevButton:Lcom/htc/widget/HtcRimImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mQueueSize:I

.field private mRepeatButton:Lcom/htc/widget/HtcImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field protected mScanReceiver:Landroid/content/BroadcastReceiver;

.field mSecondMe:Landroid/view/MotionEvent;

.field mSecondTouchTime:J

.field mService:Lcom/htc/music/IMediaPlaybackService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mShuffleButton:Lcom/htc/widget/HtcImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mShuffleRepeatDivider:Landroid/view/View;

.field private mStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

.field private mTimeoutDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mTitle:Lcom/htc/widget/ActionBarText;

.field private mToast:Landroid/widget/Toast;

.field private mTotalTime:J

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchRangeX:D

.field private mTouchRangeY:D

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackTimeInfo:Landroid/widget/TextView;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNetworkAvailableChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4034

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 84
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    .line 87
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    .line 88
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 89
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 90
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 91
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 92
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    .line 93
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mEnalbeAutoPlay:Z

    .line 94
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    .line 95
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    .line 96
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    .line 97
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    .line 98
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    .line 99
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;

    .line 100
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    .line 104
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    .line 105
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    .line 106
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    .line 107
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    .line 108
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleRepeatDivider:Landroid/view/View;

    .line 109
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    .line 112
    iput v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    .line 115
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    .line 116
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mElapsedTime:J

    .line 119
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 120
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z

    .line 127
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    .line 128
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 184
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsOnlineLoading:Z

    .line 186
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 187
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTimeoutDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 198
    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    .line 199
    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    .line 202
    const-wide/high16 v0, 0x4049

    iput-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    .line 206
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 209
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 211
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGesture:Landroid/view/View;

    .line 358
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$3;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 371
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    .line 372
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondMe:Landroid/view/MotionEvent;

    .line 373
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsFling:Z

    .line 374
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstTouchTime:J

    .line 375
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondTouchTime:J

    .line 376
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$4;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1022
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$9;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1124
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$10;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1248
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$13;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$13;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 1316
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$14;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$14;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 1351
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$15;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$15;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1392
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$16;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$16;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextListener:Landroid/view/View$OnClickListener;

    .line 1400
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$17;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$17;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 1436
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$18;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    .line 2326
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$20;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    .line 2348
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$21;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$21;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startLibraryActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->launchSoundEffectSetting()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarGliderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateGlider()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/carmode/CarNowPlayingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->skipAnimation()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh()V

    return-void
.end method

.method static synthetic access$2202(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsOnlineLoading:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showDownloadProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/HtcRimImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-boolean p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNetworkAvailableChecked:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$2802(Lcom/htc/music/carmode/CarNowPlayingActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshTrackTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->timeoutAction()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onServiceConnectedHandle()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doSelectionChangeUI(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doStateChangeUI(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/music/carmode/CarNowPlayingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/ActionBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setPlayPauseButtonImage(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setShuffleButtonImage(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setRepeatButtonImage(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/htc/music/carmode/CarNowPlayingActivity;[II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshGlider([II)V

    return-void
.end method

.method static synthetic access$4402(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mEnalbeAutoPlay:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->checkCurrentStorateState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUIGetTrackInfo()V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doPauseResume()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doNext()V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doPrev()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getTrackTime()V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshShuffleButton()V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshRepeatButton()V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->animationInit()V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startNextAnimation()V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startPrevAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->isBeatsEffectOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    return-wide v0
.end method

.method private animationInit()V
    .locals 5

    .prologue
    .line 2005
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2006
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2007
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2008
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2017
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 2011
    :cond_1
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "mService.activityWakeup()"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityWakeup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateGlider()V

    goto :goto_0

    .line 2013
    :catch_0
    move-exception v0

    .line 2014
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private animationRefresh()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 1995
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "animationRefresh()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 1997
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2001
    :cond_1
    return-void
.end method

.method private checkCurrentStorateState()Z
    .locals 4

    .prologue
    .line 2297
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2298
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2300
    :cond_0
    const/4 v1, 0x1

    .line 2321
    :goto_0
    return v1

    .line 2304
    :cond_1
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2305
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2306
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2321
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2308
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2311
    :cond_3
    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "bad_removal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2313
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x20400a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2315
    :cond_5
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2316
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x20401fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2318
    :cond_6
    const-string v1, "[CarNowPlayingActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalStorageState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private cycleRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1325
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1348
    :goto_0
    return-void

    .line 1329
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 1330
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1332
    const v1, 0x7f070055

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V

    .line 1344
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshRepeatButton()V

    goto :goto_0

    .line 1345
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1333
    .restart local v0       #mode:I
    :cond_1
    if-ne v0, v2, :cond_3

    .line 1334
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1335
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1336
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1337
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshShuffleButton()V

    .line 1339
    :cond_2
    const v1, 0x7f070054

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V

    goto :goto_1

    .line 1341
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1342
    const v1, 0x7f070053

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private doNext()V
    .locals 3

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1413
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1414
    const-string v1, "[CarNowPlayingActivity]"

    const-string v2, "doNext"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 1361
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 1364
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshPlaybackControl(Z)V

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 1369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshPlaybackControl(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1377
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPrev()V
    .locals 3

    .prologue
    .line 1423
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1434
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1427
    const-string v1, "[CarNowPlayingActivity]"

    const-string v2, "doPrev"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 1429
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private doSelectionChangeUI(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->onSelectionChanged(I)V

    .line 1194
    :cond_0
    return-void
.end method

.method private doStateChangeUI(I)V
    .locals 3
    .parameter "nState"

    .prologue
    .line 1211
    iput p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    .line 1213
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v1, :cond_0

    .line 1219
    const/16 v1, 0x12

    if-ne v1, p1, :cond_2

    .line 1220
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 1223
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v1, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1225
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "glider_state"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1226
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private getTrackTime()V
    .locals 6

    .prologue
    .line 1941
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    .line 1944
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mElapsedTime:J

    .line 1945
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    .line 1946
    .local v1, isPlaying:Z
    if-eqz v1, :cond_0

    .line 1947
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v2, :cond_0

    .line 1948
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v3, 0x8

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1951
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 1952
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1953
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1955
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    .end local v1           #isPlaying:Z
    :cond_2
    :goto_0
    return-void

    .line 1957
    :catch_0
    move-exception v0

    .line 1958
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initAlbumArtGestureDetector()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "Gesture initKeypadGestureDetector"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/music/carmode/CarNowPlayingActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$2;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;

    .line 350
    return-void
.end method

.method private initGlider()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 759
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v1, :cond_0

    .line 760
    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 761
    const-string v1, "common_app_bkg"

    const v2, 0x2080001

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 763
    .local v0, bkgIdentifier:I
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/SSurfaceView;->set3DGlobalBackground(I)V

    .line 765
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/view/SSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 768
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 771
    .end local v0           #bkgIdentifier:I
    :cond_0
    return-void
.end method

.method private initKeypadGestureDetector()V
    .locals 2

    .prologue
    .line 272
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "Gesture initKeypadGestureDetector"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/music/carmode/CarNowPlayingActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$1;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 295
    return-void
.end method

.method private initPlaybackControl()V
    .locals 9

    .prologue
    const v8, 0x7f020008

    const v7, 0x7f020001

    const/high16 v6, 0x7f02

    .line 816
    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    .line 817
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    const-string v2, "com.htc.R.style.automotive_darklist_primary_m"

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 819
    const v1, 0x7f080039

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    .line 820
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    const-string v2, "com.htc.R.style.automotive_darklist_secondary_m"

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 827
    const v1, 0x7f08003b

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    .line 828
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v2, "automotive_common_b_transport_large_outer"

    const v3, 0x7f020005

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "automotive_common_b_transport_large_pressed"

    const v4, 0x7f020006

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automotive_common_b_transport_large_rest"

    const v5, 0x7f020007

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 838
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 839
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    const v1, 0x7f08003d

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    .line 843
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v2, "automative_common_b_transport_outer"

    invoke-static {p0, v2, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "automotive_common_b_transport_pressed"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automative_common_b_transport_rest"

    invoke-static {p0, v4, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 853
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 854
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    .line 857
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v2, "automative_common_b_transport_outer"

    invoke-static {p0, v2, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "automotive_common_b_transport_pressed"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automative_common_b_transport_rest"

    invoke-static {p0, v4, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 867
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 868
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 870
    const v1, 0x7f080044

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    .line 871
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 872
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    const v1, 0x7f080042

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    .line 875
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 876
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 883
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleRepeatDivider:Landroid/view/View;

    .line 884
    const-string v1, "common_b_div"

    const v2, 0x2080036

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 885
    .local v0, resId:I
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleRepeatDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 887
    const v1, 0x7f08003e

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    .line 888
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    const-string v2, "com.htc.R.style.automotive_darklist_secondary_s"

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 891
    return-void
.end method

.method private initPresentation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 775
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 778
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 780
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setEdgeItemScrollRatio(F)V

    .line 781
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnContainerClickListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;)V

    .line 782
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnSelectionChangeListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;)V

    .line 783
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnStateListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;)V

    .line 784
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledReflection(Z)V

    .line 785
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setShiftOneItemMode(Z)V

    .line 786
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 787
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableScroll(Z)V

    .line 788
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-nez v0, :cond_1

    .line 792
    new-instance v0, Lcom/htc/music/carmode/CarGliderAdapter;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct {v0, p0, v1, v3}, Lcom/htc/music/carmode/CarGliderAdapter;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/sunny2/widget/presentation/SPresentation;Z)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 793
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 794
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnLayoutListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;)V

    .line 796
    :cond_1
    return-void
.end method

.method private initTitleBar()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 663
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v6, :cond_0

    .line 755
    :goto_0
    return-void

    .line 667
    :cond_0
    new-instance v6, Lcom/htc/widget/ActionBarText;

    invoke-direct {v6, p0, v9}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    .line 668
    new-instance v6, Lcom/htc/widget/ActionBarContainer;

    invoke-direct {v6, p0}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 669
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v9}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    .line 670
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    const v7, 0x7f07001f

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 671
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 672
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 673
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 674
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 675
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v11}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 676
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v11}, Lcom/htc/widget/ActionBarContainer;->setClickable(Z)V

    .line 677
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v7, Lcom/htc/music/carmode/CarNowPlayingActivity$5;

    invoke-direct {v7, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$5;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v7, Lcom/htc/music/carmode/CarNowPlayingActivity$6;

    invoke-direct {v7, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$6;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    new-instance v4, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v4, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 699
    .local v4, searchView:Lcom/htc/widget/ActionBarItemView;
    const v6, 0x7f020015

    invoke-virtual {v4, v6}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 700
    invoke-virtual {v4, v9}, Lcom/htc/widget/ActionBarItemView;->setSupportMode(I)V

    .line 701
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 702
    new-instance v6, Lcom/htc/music/carmode/CarNowPlayingActivity$7;

    invoke-direct {v6, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$7;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v4, v6}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    new-instance v5, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v5, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 715
    .local v5, soundEffectView:Lcom/htc/widget/ActionBarItemView;
    const v6, 0x7f02000e

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 716
    invoke-virtual {v5, v9}, Lcom/htc/widget/ActionBarItemView;->setSupportMode(I)V

    .line 717
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v5}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 718
    new-instance v6, Lcom/htc/music/carmode/CarNowPlayingActivity$8;

    invoke-direct {v6, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$8;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    const/4 v2, 0x0

    .line 728
    .local v2, linearLayoutInternal:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout;

    .end local v2           #linearLayoutInternal:Landroid/widget/LinearLayout;
    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 729
    .restart local v2       #linearLayoutInternal:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 734
    .local v0, animateTextLayout:Landroid/view/View;
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v6, v0}, Lcom/htc/widget/ActionBarText;->removeView(Landroid/view/View;)V

    .line 735
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v6, v2}, Lcom/htc/widget/ActionBarText;->addView(Landroid/view/View;)V

    .line 736
    const/4 v3, 0x0

    .line 738
    .local v3, lparams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 741
    .restart local v3       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .line 743
    .local v1, frameLayoutInternal:Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout;

    .end local v1           #frameLayoutInternal:Landroid/widget/FrameLayout;
    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 744
    .restart local v1       #frameLayoutInternal:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 746
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 748
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    .line 749
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    const v7, 0x7f02000d

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 750
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 751
    .restart local v3       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2050001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 752
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 754
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private isBeatsEffectOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 2366
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2367
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 2368
    const-string v3, "[CarNowPlayingActivity]"

    const-string v4, "isBeatsEffectOn - audioManager = null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    const/4 v2, 0x0

    .line 2375
    :goto_0
    return v2

    :cond_0
    move-object v1, v0

    .line 2372
    check-cast v1, Landroid/media/HtcIfAudioManager;

    .line 2373
    .local v1, ifam:Landroid/media/HtcIfAudioManager;
    invoke-interface {v1}, Landroid/media/HtcIfAudioManager;->getBeatsState()Z

    move-result v2

    .line 2374
    .local v2, isBeatsOn:Z
    const-string v3, "[CarNowPlayingActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBeatsOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private launchSoundEffectSetting()V
    .locals 4

    .prologue
    .line 2392
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2393
    .local v1, soundEffectIntent:Landroid/content/Intent;
    const-string v2, "com.htc.AutoMotive"

    const-string v3, "com.htc.AutoMotive.soundenhancersetting.SoundEnhancerSet"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2396
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2397
    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2401
    .end local v1           #soundEffectIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2398
    :catch_0
    move-exception v0

    .line 2399
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "Cannot found com.htc.AutoMotive.soundenhancersetting.SoundEnhancerSet"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onHandleNonUIGetTrackInfo()V
    .locals 24

    .prologue
    .line 2131
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 2132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    .line 2133
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queueSize = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 2135
    .local v19, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    if-nez v2, :cond_1

    .line 2136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2293
    .end local v19           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2140
    .restart local v19       #path:Ljava/lang/String;
    :cond_1
    new-instance v23, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/music/carmode/CarNowPlayingActivity$1;)V

    .line 2141
    .local v23, trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    if-eqz v19, :cond_e

    .line 2142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2145
    const-string v2, "<unknown>"

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2146
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2149
    :cond_2
    const-string v2, "<unknown>"

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2150
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2153
    :cond_3
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    if-nez v2, :cond_d

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    if-nez v2, :cond_d

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 2155
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    new-instance v16, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2159
    .local v16, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v16, :cond_4

    .line 2161
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2163
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2166
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2168
    const/4 v2, 0x7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2175
    :goto_1
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2176
    const/16 v16, 0x0

    .line 2181
    :cond_4
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2182
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2184
    :cond_5
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2185
    :cond_6
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2187
    :cond_7
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 2188
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2190
    :cond_8
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2191
    :cond_9
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2193
    :cond_a
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 2194
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2196
    :cond_b
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2198
    :cond_c
    const-string v2, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2199
    const/16 v17, -0x1

    .local v17, nBegin:I
    const/16 v18, -0x1

    .line 2201
    .local v18, nEnd:I
    const-string v2, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 2202
    const-string v2, "."

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 2204
    if-ltz v17, :cond_d

    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_d

    .line 2205
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2281
    .end local v16           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v17           #nBegin:I
    .end local v18           #nEnd:I
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v23

    iput v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mQueuePos:I

    .line 2282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mQueueSize:I

    .line 2283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    .line 2284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 2285
    .local v22, refreshMsg:Landroid/os/Message;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2288
    .end local v19           #path:Ljava/lang/String;
    .end local v22           #refreshMsg:Landroid/os/Message;
    .end local v23           #trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    :catch_0
    move-exception v14

    .line 2289
    .local v14, ex:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2290
    .end local v14           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    throw v2

    .line 2170
    .restart local v16       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v19       #path:Ljava/lang/String;
    .restart local v23       #trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    :catch_1
    move-exception v14

    .line 2171
    .local v14, ex:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2213
    .end local v14           #ex:Ljava/lang/RuntimeException;
    .end local v16           #mmr:Landroid/media/MediaMetadataRetriever;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v21

    .line 2214
    .local v21, queue:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v20

    .line 2215
    .local v20, position:I
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    array-length v2, v0

    if-lez v2, :cond_0

    if-ltz v20, :cond_0

    move-object/from16 v0, v21

    array-length v2, v0

    move/from16 v0, v20

    if-le v2, v0, :cond_0

    .line 2221
    const/4 v2, 0x5

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

    .line 2229
    .local v7, cursorCols:[Ljava/lang/String;
    aget v2, v21, v20

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 2236
    .local v15, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v2}, Lcom/htc/music/online/Util;->isOnlineMode(Lcom/htc/music/IMediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2237
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

    .line 2242
    .local v4, mOnlineCursorCols:[Ljava/lang/String;
    sget-object v3, Lcom/htc/music/online/OnlineMusicDBHelper$OnlineMediaArt;->ONLINEMEDIA_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v7           #cursorCols:[Ljava/lang/String;
    move-result-object v13

    .line 2253
    .end local v4           #mOnlineCursorCols:[Ljava/lang/String;
    .local v13, cursor:Landroid/database/Cursor;
    :goto_3
    if-eqz v13, :cond_f

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_11

    .line 2254
    :cond_f
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "Cannot find cursor in update Track"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2246
    .end local v13           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursorCols:[Ljava/lang/String;
    :cond_10
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static/range {v5 .. v10}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .restart local v13       #cursor:Landroid/database/Cursor;
    goto :goto_3

    .line 2257
    .end local v7           #cursorCols:[Ljava/lang/String;
    :cond_11
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2258
    const-string v2, "artist"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2260
    .local v12, artistName:Ljava/lang/String;
    if-eqz v12, :cond_12

    const-string v2, "<unknown>"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2261
    :cond_12
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2263
    :cond_13
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artistName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    move-object/from16 v0, v23

    iput-object v12, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2265
    const-string v2, "album"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2267
    .local v11, albumName:Ljava/lang/String;
    if-eqz v11, :cond_14

    const-string v2, "<unknown>"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2268
    :cond_14
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2270
    :cond_15
    move-object/from16 v0, v23

    iput-object v11, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2271
    const-string v2, "title"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2274
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTrackName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    if-eqz v13, :cond_d

    .line 2277
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method

.method private onServiceConnectedHandle()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1148
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onServiceConnectedHandle + "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo()V

    .line 1150
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState()V

    .line 1151
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime()V

    .line 1152
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateShuffletState()V

    .line 1153
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateRepeatState()V

    .line 1155
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1160
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh()V

    .line 1164
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onServiceConnectedHandle - "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    return-void
.end method

.method private refreshBeatsState()V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 2357
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 2358
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2359
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 2360
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2362
    :cond_1
    return-void
.end method

.method private refreshGlider([II)V
    .locals 7
    .parameter "albumIdArray"
    .parameter "selectedPos"

    .prologue
    const/4 v6, 0x0

    .line 976
    const-string v3, "[CarNowPlayingActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshGlider selectedPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v3, "[CarNowPlayingActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshGlider albumIdArray = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v3, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    const/4 v2, 0x0

    .line 982
    .local v2, nLength:I
    if-eqz p1, :cond_2

    .line 983
    array-length v2, p1

    .line 986
    :cond_2
    if-eqz p1, :cond_4

    if-lez v2, :cond_4

    .line 987
    new-array v0, v2, [Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    .line 989
    .local v0, albumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 990
    new-instance v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    invoke-direct {v3}, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;-><init>()V

    aput-object v3, v0, v1

    .line 991
    aget-object v3, v0, v1

    aget v4, p1, v1

    iput v4, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    .line 989
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 993
    :cond_3
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v3, :cond_0

    .line 996
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, v0, v6, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->setAlbumInfo([Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;ZI)V

    .line 1006
    .end local v0           #albumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    .end local v1           #i:I
    :goto_2
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyDataSetChanged(I)V

    .line 1008
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v3, :cond_0

    .line 1010
    if-ltz p2, :cond_5

    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarGliderAdapter;->getItemCount()I

    move-result v3

    if-ge p2, v3, :cond_5

    .line 1011
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3, p2, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 1012
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->onSelectionChanged(I)V

    .line 1013
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V

    goto :goto_0

    .line 999
    :cond_4
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v3, :cond_0

    .line 1002
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->setAlbumInfo([Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;ZI)V

    goto :goto_2

    .line 1015
    :cond_5
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3, v6, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 1016
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, v6}, Lcom/htc/music/carmode/CarGliderAdapter;->onSelectionChanged(I)V

    .line 1017
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, v6}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V

    goto :goto_0
.end method

.method private refreshRepeatButton()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 1301
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 1302
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1303
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1304
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1305
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 1307
    :try_start_0
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "repeat_mode"

    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1314
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 1308
    .restart local v1       #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1309
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshShuffleButton()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    .line 1285
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 1286
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1287
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1288
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1289
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 1291
    :try_start_0
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "shuffle_mode"

    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1298
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 1292
    .restart local v1       #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1293
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshTrackTime()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 1965
    const/4 v0, 0x0

    .line 1966
    .local v0, elapsedTime:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1967
    .local v2, totalTime:Ljava/lang/String;
    iget-wide v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1968
    const-string v0, "--.--"

    .line 1969
    const-string v2, "--.--"

    .line 1974
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1975
    .local v1, time:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1981
    return-void

    .line 1971
    .end local v1           #time:Ljava/lang/StringBuilder;
    :cond_0
    iget-wide v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mElapsedTime:J

    div-long/2addr v3, v7

    invoke-static {p0, v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1972
    iget-wide v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    div-long/2addr v3, v7

    invoke-static {p0, v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 2095
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 2104
    :goto_0
    return-void

    .line 2100
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setPlayPauseButtonImage(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2101
    :catch_0
    move-exception v0

    .line 2102
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setPlayPauseButtonImage(Z)V
    .locals 2
    .parameter "isPlaying"

    .prologue
    .line 894
    if-eqz p1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 899
    :goto_0
    return-void

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_0
.end method

.method private setRepeatButtonImage(I)V
    .locals 4
    .parameter "repeatMode"

    .prologue
    const v3, 0x7f020013

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 903
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 904
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "mRepeatButton is null in setRepeatButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 914
    packed-switch p1, :pswitch_data_0

    .line 928
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 929
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 930
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 916
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 917
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 918
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 922
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 923
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 924
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 914
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShuffleButtonImage(I)V
    .locals 3
    .parameter "shuffleMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 937
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 938
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "mShuffleButton is null in setShuffleButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 948
    packed-switch p1, :pswitch_data_0

    .line 955
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 956
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 957
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    .line 960
    :goto_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    goto :goto_0

    .line 951
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 952
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_1

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private showDownloadProgressDialog(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    if-eqz p1, :cond_2

    .line 802
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getProgressVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getProgressVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 1984
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1985
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1986
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1987
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1991
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private skipAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 2045
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 2046
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 2048
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "remove NONUI_SKIP_ANIMATION"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2052
    :cond_1
    return-void
.end method

.method private startLibraryActivity()V
    .locals 3

    .prologue
    .line 2430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2431
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.music.carmode.BROWSE_VIEWER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2432
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2433
    const-string v1, "caller"

    const-class v2, Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2434
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startActivity(Landroid/content/Intent;)V

    .line 2435
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->finish()V

    .line 2436
    return-void
.end method

.method private startNextAnimation()V
    .locals 5

    .prologue
    .line 2055
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2056
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 2058
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 2059
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v2

    .line 2060
    .local v2, pos:I
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 2061
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2062
    .local v0, animMsg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "album_queue_pos"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2063
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    .end local v0           #animMsg:Landroid/os/Message;
    .end local v2           #pos:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2070
    return-void

    .line 2065
    :catch_0
    move-exception v1

    .line 2066
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startPrevAnimation()V
    .locals 6

    .prologue
    .line 2073
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2074
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 2076
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 2077
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v2

    .line 2078
    .local v2, pos:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueueSize()I

    move-result v3

    .line 2079
    .local v3, queueSize:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 2080
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2081
    .local v0, animMsg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue_pos"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2082
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue_size"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2083
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    .end local v0           #animMsg:Landroid/os/Message;
    .end local v2           #pos:I
    .end local v3           #queueSize:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2091
    return-void

    .line 2086
    :catch_0
    move-exception v1

    .line 2087
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private timeoutAction()V
    .locals 2

    .prologue
    .line 2107
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$19;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$19;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 2119
    .local v0, posListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTimeoutDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_0

    .line 2120
    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcom/htc/music/online/DialogManager;->getDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTimeoutDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2123
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTimeoutDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_1

    .line 2124
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTimeoutDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 2126
    :cond_1
    return-void
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1260
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1282
    :goto_0
    return-void

    .line 1264
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 1265
    .local v0, shuffle:I
    if-nez v0, :cond_2

    .line 1266
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1267
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1268
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1269
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshRepeatButton()V

    .line 1271
    :cond_1
    const v1, 0x7f070051

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V

    .line 1279
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshShuffleButton()V

    goto :goto_0

    .line 1280
    .end local v0           #shuffle:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1272
    .restart local v0       #shuffle:I
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 1274
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1275
    const v1, 0x7f070052

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V

    goto :goto_1

    .line 1277
    :cond_4
    const-string v1, "[CarNowPlayingActivity]"

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

.method private updateGlider()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 968
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 973
    :cond_1
    return-void
.end method

.method private updatePlayState()V
    .locals 2

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2023
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState()V

    .line 2024
    return-void
.end method

.method private updateRepeatState()V
    .locals 2

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2042
    :cond_0
    return-void
.end method

.method private updateShuffletState()V
    .locals 2

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2036
    :cond_0
    return-void
.end method

.method private updateTrackInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1239
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1245
    :cond_1
    return-void
.end method

.method private updateTrackTime()V
    .locals 2

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2030
    :cond_0
    return-void
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 2416
    return-void
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 2420
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState()V

    .line 2421
    return-void
.end method

.method public getPresentation()Lcom/htc/sunny2/widget/presentation/SPresentation;
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    return-object v0
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 0
    .parameter "newStatus"
    .parameter "isBeatsHeadset"

    .prologue
    .line 2405
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState()V

    .line 2406
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 2425
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startLibraryActivity()V

    .line 2427
    return-void
.end method

.method public onContainerClick(Lcom/htc/sunny2/view/SView;I)V
    .locals 0
    .parameter "clickedView"
    .parameter "nPosition"

    .prologue
    .line 1173
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "arg0"

    .prologue
    const/16 v9, 0x400

    const/16 v8, 0x8

    const v10, 0x3cf5c28f

    .line 214
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "onCreate + "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->requestWindowFeature(I)Z

    .line 217
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 218
    .local v4, win:Landroid/view/Window;
    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 220
    const/high16 v6, 0x40

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 221
    const/high16 v6, 0x20

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 222
    const v6, 0x7f030010

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setContentView(I)V

    .line 224
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setVolumeControlStream(I)V

    .line 225
    const v6, 0x7f080034

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    .line 226
    const-string v6, "common_app_bkg"

    const v7, 0x2080001

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, bkgIdentifier:I
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 229
    const v6, 0x7f080035

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    .line 230
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    const v6, 0x7f080046

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    .line 232
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v7, 0x203007f

    invoke-virtual {v6, p0, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 234
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initKeypadGestureDetector()V

    .line 236
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initAlbumArtGestureDetector()V

    .line 237
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initTitleBar()V

    .line 238
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initGlider()V

    .line 239
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initPresentation()V

    .line 240
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initPlaybackControl()V

    .line 241
    const v6, 0x7f080045

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGesture:Landroid/view/View;

    .line 242
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGesture:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "CarNowPlayingActivityWorker"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 244
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 245
    new-instance v6, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    .line 247
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 248
    .local v1, display:Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 249
    .local v5, windowSize:Landroid/graphics/Point;
    invoke-virtual {v1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 250
    iget v6, v5, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v7, 0x3e4ccccd

    mul-float/2addr v6, v7

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    .line 251
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGestureHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 253
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 254
    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v6, v10

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    .line 255
    iget v6, v3, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float/2addr v6, v10

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    .line 256
    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    const v7, 0x3e99999a

    mul-float/2addr v6, v7

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    .line 257
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTouchRangeX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTouchRangeY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGestureAlbumWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v2, Landroid/content/IntentFilter;

    sget-object v6, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, f3:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "onCreate - "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 267
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 613
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onDestroy + "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 618
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->deInit()V

    .line 623
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 628
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_3

    .line 633
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 634
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 638
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 639
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 642
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 643
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 646
    :cond_5
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 647
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 650
    :cond_6
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onDestroy - "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 652
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->pauseDecoder()V

    .line 543
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 544
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->resumeDecoder()V

    .line 526
    :cond_0
    sget-boolean v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNetworkAvailableChecked:Z

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v1, 0x16

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 531
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 532
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 656
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.carmode.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startActivity(Landroid/content/Intent;)V

    .line 659
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v1

    return v1
.end method

.method public onSelectionChange(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 1181
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity$11;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1187
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 477
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "onStart + "

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v2, v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 486
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v2, "com.htc.music.rotateleft"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v2, "com.htc.music.rotateright"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    const-string v2, "com.htc.music.refresh"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    const-string v2, "com.htc.music.asyncopen"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    const-string v2, "com.htc.music.asyncopencomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v2, "com.htc.music.timeout"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 501
    .local v1, f2:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 507
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v2, p0, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 509
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh()V

    .line 510
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState()V

    .line 511
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "onStart - "

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 513
    return-void
.end method

.method public onStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1203
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity$12;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1208
    return-void
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/16 v5, 0xe

    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 551
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v1, :cond_1

    .line 556
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v1, p0}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 561
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 562
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 566
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_3

    .line 567
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->activityGoSleep()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 573
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 574
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v1, :cond_5

    .line 578
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 579
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 584
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 585
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z

    if-eqz v1, :cond_6

    .line 586
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 588
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 595
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_7

    .line 596
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 597
    iput-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 599
    :cond_7
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTimeoutDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_8

    .line 600
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTimeoutDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 601
    iput-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTimeoutDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 605
    :cond_8
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 606
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 591
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 589
    :catch_1
    move-exception v1

    .line 591
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method refreshPlaybackControl(Z)V
    .locals 3
    .parameter "isPlaying"

    .prologue
    const/4 v2, 0x2

    .line 1383
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1384
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1386
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1387
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_playing"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1388
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1390
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 2411
    return-void
.end method
