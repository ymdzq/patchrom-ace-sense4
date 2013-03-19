.class Landroid/media/MediaPluginDLNA;
.super Landroid/media/MediaPlugin;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;,
        Landroid/media/MediaPluginDLNA$EventHandler;,
        Landroid/media/MediaPluginDLNA$RendererListener;,
        Landroid/media/MediaPluginDLNA$ControllerListener;
    }
.end annotation


# static fields
.field public static final MEDIA_BUFFERING:I = 0x1800

.field public static final MEDIA_DLNAMIDDLELAYER_CONNECTED:I = 0x1000

.field public static final MEDIA_END:I = 0x1200

.field public static final MEDIA_ERROR:I = 0x1100

.field public static final MEDIA_IDLE:I = 0x1001

.field public static final MEDIA_INITIALIZED:I = 0x1002

.field public static final MEDIA_PAUSED:I = 0x1020

.field public static final MEDIA_PLAY_COMPLETED:I = 0x1080

.field public static final MEDIA_PREPARED:I = 0x1008

.field public static final MEDIA_PREPARING:I = 0x1004

.field public static final MEDIA_SEEKED:I = 0x1400

.field public static final MEDIA_SEEK_COMPLETED:I = 0x2000

.field public static final MEDIA_STARTED:I = 0x1010

.field public static final MEDIA_STOPPED:I = 0x1040

.field public static final STATUS_CHANGE:I = 0x2010

.field public static final STATUS_ERROR:I = 0x2021

.field public static final STATUS_INIT_FAILED:I = 0x2041

.field public static final STATUS_PREPARE:I = 0x2080

.field public static final STATUS_PREPARE_FAILED:I = 0x2082

.field public static final STATUS_PREPARE_SUCCESS:I = 0x2081

.field public static final STATUS_RESPONSE:I = 0x2040

.field private static final TAG:Ljava/lang/String; = "[MediaPluginDLNA]"


# instance fields
.field private final COMMAND_PAUSE_TIMEOUT:I

.field private final COMMAND_SEEKTO_TIMEOUT:I

.field private final COMMAND_START_TIMEOUT:I

.field private final CONNECT_DELAY:I

.field private final MediaPluginDLNACookie:Ljava/lang/String;

.field private final NOT_SEEKING:I

.field private final PAUSE_DELAY:I

.field private final SEEKING:I

.field private final SEEK_DELAY:I

.field private clientListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private volatile ctx:Landroid/content/Context;

.field private eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

.field private mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

.field private mDLNALock:Ljava/lang/Object;

.field private volatile mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDataPath:Ljava/lang/String;

.field private final mDimModeDelay:I

.field private final mDimModeTimeout:I

.field private volatile mDimModeTimer:Ljava/util/Timer;

.field private mDmrID:Ljava/lang/String;

.field private mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mPreSeekSec:I

.field private mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

.field private mSeeking:Ljava/lang/Integer;

.field private volatile mState:Ljava/lang/Integer;

.field private mStreamingPath:Z

.field private mWaitMirrorConnected:Z

.field private final switchDimModeOff:Ljava/lang/String;

.field private final switchDimModeOn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlugin$OnEventListener;)V
    .locals 5
    .parameter "context"
    .parameter "path"
    .parameter "eventListener"

    .prologue
    const/16 v4, 0xbb8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Landroid/media/MediaPlugin;-><init>()V

    .line 37
    const-string v0, "MediaPluginDLNACookie"

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:Ljava/lang/String;

    .line 38
    const-string v0, "com.android.server.HtcDongleMode.ON"

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->switchDimModeOn:Ljava/lang/String;

    .line 39
    const-string v0, "com.android.server.HtcDongleMode.OFF"

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->switchDimModeOff:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 41
    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    .line 42
    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    .line 43
    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    .line 47
    iput-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    .line 48
    iput-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 49
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x1001

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    .line 51
    iput v2, p0, Landroid/media/MediaPluginDLNA;->mPreSeekSec:I

    .line 76
    iput v2, p0, Landroid/media/MediaPluginDLNA;->CONNECT_DELAY:I

    .line 77
    const/16 v0, 0x64

    iput v0, p0, Landroid/media/MediaPluginDLNA;->PAUSE_DELAY:I

    .line 78
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/media/MediaPluginDLNA;->SEEK_DELAY:I

    .line 79
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/media/MediaPluginDLNA;->COMMAND_START_TIMEOUT:I

    .line 80
    iput v4, p0, Landroid/media/MediaPluginDLNA;->COMMAND_PAUSE_TIMEOUT:I

    .line 81
    iput v4, p0, Landroid/media/MediaPluginDLNA;->COMMAND_SEEKTO_TIMEOUT:I

    .line 82
    iput v2, p0, Landroid/media/MediaPluginDLNA;->NOT_SEEKING:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaPluginDLNA;->SEEKING:I

    .line 85
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 86
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 91
    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    .line 92
    const v0, 0xc350

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimeout:I

    .line 93
    const/16 v0, 0x2710

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mDimModeDelay:I

    .line 120
    new-instance v0, Landroid/media/MediaPluginDLNA$1;

    invoke-direct {v0, p0}, Landroid/media/MediaPluginDLNA$1;-><init>(Landroid/media/MediaPluginDLNA;)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->clientListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 96
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 97
    iput-object p3, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 98
    new-instance v0, Landroid/media/MediaPluginDLNA$EventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/MediaPluginDLNA$EventHandler;-><init>(Landroid/media/MediaPluginDLNA;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    .line 99
    iput-object p2, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 100
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    const-string v2, "MediaPluginDLNACookie"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 103
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_0

    .line 104
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] mDLNAManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->connect()V

    .line 108
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] ctx = null... failed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    const/16 v1, 0x2041

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 112
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$ControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPluginDLNA;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA;->setState(I)V

    return-void
.end method

.method static synthetic access$102(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$ControllerListener;)Landroid/media/MediaPluginDLNA$ControllerListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->enterDimMode()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->leaveDimMode()V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/MediaPluginDLNA;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaPluginDLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mPreSeekSec:I

    return v0
.end method

.method static synthetic access$300(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$RendererListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$RendererListener;)Landroid/media/MediaPluginDLNA$RendererListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$502(Landroid/media/MediaPluginDLNA;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$700(Landroid/media/MediaPluginDLNA;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    return v0
.end method

.method static synthetic access$702(Landroid/media/MediaPluginDLNA;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    return p1
.end method

.method static synthetic access$800(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPluginDLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    return v0
.end method

.method public static checkPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 330
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "rtsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 331
    :cond_0
    const/4 v0, 0x1

    .line 333
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enterDimMode()V
    .locals 3

    .prologue
    .line 613
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 614
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[enterDimMode]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.HtcDongleMode.ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 618
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getState()I
    .locals 2

    .prologue
    .line 643
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 644
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private leaveDimMode()V
    .locals 3

    .prologue
    .line 621
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 622
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[leaveDimMode]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.HtcDongleMode.OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 626
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private declared-synchronized resetParams()V
    .locals 4

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v1, :cond_0

    .line 536
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[resetParams]destroy DLNA object"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->powerOff()V

    .line 538
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[resetParams]disconnect with controller"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 540
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[resetParams]set DLNA object null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 543
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 551
    :goto_0
    :try_start_3
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 552
    :try_start_4
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 553
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 554
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 555
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    .line 557
    :cond_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 561
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    .line 564
    :goto_1
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->leaveDimMode()V

    .line 565
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 566
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 567
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 568
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 569
    monitor-exit p0

    return-void

    .line 543
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, ex:Ljava/lang/Exception;
    :try_start_8
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resetParams]reset DLNA params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 547
    const/4 v1, 0x0

    :try_start_9
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 534
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 547
    :catchall_2
    move-exception v1

    const/4 v2, 0x0

    :try_start_a
    iput-object v2, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 557
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 558
    :catch_1
    move-exception v0

    .line 559
    .restart local v0       #ex:Ljava/lang/Exception;
    :try_start_d
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resetParams]reset dim params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 561
    const/4 v1, 0x0

    :try_start_e
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_4
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method private setState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 637
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 638
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    .line 639
    monitor-exit v1

    .line 640
    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[connect]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->clientListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-virtual {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->connect(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 409
    :cond_0
    return-void
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public handleGetCurrentPosition()I
    .locals 3

    .prologue
    .line 494
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v1, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 497
    :goto_0
    return v0

    .line 496
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v1

    long-to-int v1, v1

    mul-int/lit16 v0, v1, 0x3e8

    .line 497
    .local v0, nPos:I
    goto :goto_0
.end method

.method public handleOnBufferUpdate(I)V
    .locals 2
    .parameter "percent"

    .prologue
    .line 582
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleOnBufferUpdate]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method public handleOnPlayComplete()V
    .locals 2

    .prologue
    .line 577
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleOnPlayComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/16 v0, 0x1080

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 579
    return-void
.end method

.method public handleOnPrepared()V
    .locals 3

    .prologue
    .line 572
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/16 v0, 0x1008

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 574
    return-void
.end method

.method public declared-synchronized handlePause()V
    .locals 2

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handlePause]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1010

    if-ne v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    .line 455
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_0
    monitor-exit p0

    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleRelease()V
    .locals 3

    .prologue
    const/16 v2, 0x1200

    .line 525
    monitor-enter p0

    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleRelease]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 527
    const/16 v0, 0x1200

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 528
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->resetParams()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :cond_0
    monitor-exit p0

    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleReset()V
    .locals 2

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleReset]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1001

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1200

    if-eq v0, v1, :cond_0

    .line 520
    const/16 v0, 0x1002

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_0
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleSeekComplete()V
    .locals 2

    .prologue
    .line 501
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleSeekComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method public declared-synchronized handleSeekTo(I)V
    .locals 3
    .parameter "msec"

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1020

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1010

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_1

    .line 463
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSeekTo][SKIP][Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0, p1}, Landroid/media/MediaPluginDLNA;->setPreSeek(I)V

    .line 465
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1080

    if-eq v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    const/16 v1, 0x2000

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 469
    :cond_1
    :try_start_1
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSeekTo] msec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 471
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    div-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    .line 473
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 475
    :cond_2
    :try_start_2
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "seeking is in progress, reject this seek..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public handleSetDataSource(Ljava/lang/String;)V
    .locals 18
    .parameter "path"

    .prologue
    .line 337
    const-string v14, "[MediaPluginDLNA]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[handleSetDataSource][Path:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v5, ""

    .line 340
    .local v5, localIp:Ljava/lang/String;
    const-string v7, ""

    .line 342
    .local v7, mirrorInterface:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    const-string/jumbo v15, "wireless_display"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/service/WirelessDisplayManager;

    .line 343
    .local v6, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v6, :cond_0

    .line 344
    invoke-virtual {v6}, Lcom/htc/service/WirelessDisplayManager;->getInterface()Ljava/lang/String;

    move-result-object v7

    .line 345
    const-string v14, "[MediaPluginDLNA]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NetworkInterface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .line 349
    .local v4, ifaces:Ljava/util/Enumeration;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 350
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 351
    .local v3, iface:Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 352
    const-string v14, "[MediaPluginDLNA]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "skip Real iface addresses: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v3           #iface:Ljava/net/NetworkInterface;
    .end local v4           #ifaces:Ljava/util/Enumeration;
    .end local v6           #mgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v2

    .line 376
    .local v2, e:Ljava/lang/Exception;
    const-string v14, "[MediaPluginDLNA]"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 380
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_3

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string v15, "http://localhost"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 382
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string v15, "http://localhost"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 388
    :cond_3
    :goto_1
    const-string v14, "[MediaPluginDLNA]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[handleSetDataSource][mDataPath:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    invoke-static {v14}, Landroid/media/MediaPluginDLNA;->checkPath(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v14, :cond_4

    .line 392
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    if-eqz v14, :cond_b

    .line 393
    const-string v14, "[MediaPluginDLNA]"

    const-string v15, "is streaming path"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string v16, ""

    const-string v17, ""

    invoke-virtual/range {v14 .. v17}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_4
    :goto_3
    const/16 v14, 0x1002

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 401
    return-void

    .line 355
    .restart local v3       #iface:Ljava/net/NetworkInterface;
    .restart local v4       #ifaces:Ljava/util/Enumeration;
    .restart local v6       #mgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_5
    :try_start_1
    const-string v14, "[MediaPluginDLNA]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Real iface addresses: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getSubInterfaces()Ljava/util/Enumeration;

    move-result-object v13

    .line 357
    .local v13, virtualIfaces:Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 358
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/NetworkInterface;

    .line 359
    .local v12, viface:Ljava/net/NetworkInterface;
    const-string v14, "[MediaPluginDLNA]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " VIRT "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v12}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v11

    .line 361
    .local v11, vaddrs:Ljava/util/Enumeration;
    :goto_4
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 362
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    .line 363
    .local v10, vaddr:Ljava/net/InetAddress;
    const-string v14, "[MediaPluginDLNA]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "vaddr \t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 366
    .end local v10           #vaddr:Ljava/net/InetAddress;
    .end local v11           #vaddrs:Ljava/util/Enumeration;
    .end local v12           #viface:Ljava/net/NetworkInterface;
    :cond_7
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v9

    .line 367
    .local v9, raddrs:Ljava/util/Enumeration;
    :cond_8
    :goto_5
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 368
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 369
    .local v8, raddr:Ljava/net/InetAddress;
    instance-of v14, v8, Ljava/net/Inet4Address;

    if-eqz v14, :cond_8

    .line 370
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 371
    const-string v14, "[MediaPluginDLNA]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "raddr \t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 384
    .end local v3           #iface:Ljava/net/NetworkInterface;
    .end local v4           #ifaces:Ljava/util/Enumeration;
    .end local v6           #mgr:Lcom/htc/service/WirelessDisplayManager;
    .end local v8           #raddr:Ljava/net/InetAddress;
    .end local v9           #raddrs:Ljava/util/Enumeration;
    .end local v13           #virtualIfaces:Ljava/util/Enumeration;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string v15, "http://127.0.0.1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string v15, "http://127.0.0.1"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 390
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 396
    :cond_b
    const-string v14, "[MediaPluginDLNA]"

    const-string/jumbo v15, "not streaming path"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public handleSetLooping(Z)V
    .locals 4
    .parameter "looping"

    .prologue
    .line 488
    const-string v2, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleSetLooping]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v1, "true"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 490
    .local v0, repeat:I
    :goto_1
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setRepeat(I)V

    .line 491
    return-void

    .line 488
    .end local v0           #repeat:I
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 489
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleSetVolume(FF)V
    .locals 3
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 480
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSetVoleum]: left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setVolume(I)V

    goto :goto_0
.end method

.method public declared-synchronized handleStart()V
    .locals 4

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleStart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_0

    .line 414
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleStart][SKIP][manager is null]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :goto_0
    monitor-exit p0

    return-void

    .line 417
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1080

    if-ne v0, v1, :cond_1

    .line 418
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleStart][MEDIA_PLAY_COMPLETED][replay]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPluginDLNA$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 421
    :cond_1
    :try_start_2
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1020

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1040

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_3

    .line 422
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    .line 423
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V

    goto :goto_0

    .line 425
    :cond_3
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleStart][SKIP][Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized handleStop()V
    .locals 3

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleStop]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_1

    .line 507
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1020

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1010

    if-ne v0, v1, :cond_2

    .line 508
    :cond_0
    const/16 v0, 0x1040

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 509
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->requestStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 511
    :cond_2
    :try_start_1
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleStop][SKIP][Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 436
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1010

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeeking()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 446
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    monitor-enter v1

    .line 447
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockCommand(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    .line 586
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 589
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 590
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->isSeeking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v1

    const/16 v2, 0x1080

    if-eq v1, v2, :cond_0

    .line 591
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    const/16 v2, 0x2000

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 592
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 598
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setOnEventListener(Landroid/media/MediaPlugin$OnEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 117
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 118
    return-void
.end method

.method public setPreSeek(I)V
    .locals 3
    .parameter "msec"

    .prologue
    .line 649
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreSeek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    div-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mPreSeekSec:I

    .line 651
    return-void
.end method

.method public setSeeking(I)V
    .locals 2
    .parameter "seek"

    .prologue
    .line 440
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    monitor-enter v1

    .line 441
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    .line 442
    monitor-exit v1

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlockCommand()V
    .locals 2

    .prologue
    .line 602
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 605
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 609
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void

    .line 607
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
