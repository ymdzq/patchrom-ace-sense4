.class public Lcom/htc/service/vt/MediaVT;
.super Ljava/lang/Object;
.source "MediaVT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;,
        Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;,
        Lcom/htc/service/vt/MediaVT$EventHandler;,
        Lcom/htc/service/vt/MediaVT$OnEventListener;
    }
.end annotation


# static fields
.field public static final CAMERA_PARA_SET_BRIGHTNESS:I = 0x32

.field public static final CAMERA_PARA_SET_CONTRAST:I = 0x96

.field public static final CAMERA_PARA_SET_MIRROR:I = 0x64

.field private static final MEDIAVT_STATE_CONNECTED:I = 0x3

.field private static final MEDIAVT_STATE_DISCONNECTED:I = 0x4

.field private static final MEDIAVT_STATE_INITED:I = 0x2

.field private static final MEDIAVT_STATE_INITING:I = 0x1

.field private static final MEDIAVT_STATE_TERMINTED:I = 0x5

.field private static final MEDIAVT_STATE_UNINIT:I = 0x0

.field public static final SURFACE_CAMERA:I = 0x0

.field public static final SURFACE_VIDEO:I = 0x1

.field public static final SWITCH_263_VIDEO_DEFAULT:I = 0x16

.field public static final SWITCH_HW_AUDIO_DECODE:I = 0x2

.field public static final SWITCH_HW_VIDEO_DECODE:I = 0x0

.field public static final SWITCH_MP4_VIDEO_DEFAULT:I = 0x8

.field public static final SWITCH_SW_AUDIO_DECODE:I = 0x4

.field public static final SWITCH_SW_VIDEO_DECODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaVT_Java"

.field public static final VIDEO_IN_FIRST_CAMERA:I = 0x0

.field public static final VIDEO_IN_SECOND_CAMERA:I = 0x1

.field public static final VIDEO_IN_STILL_IMAGE:I = 0x2

.field public static final VT_CHANNEL_PAUSE_OUTGOING_AUDIO_COMPLETE:I = 0x8

.field public static final VT_CHANNEL_PAUSE_OUTGOING_AUDIO_FAILED:I = 0x9

.field public static final VT_CHANNEL_PAUSE_OUTGOING_VIDEO_COMPLETE:I = 0xc

.field public static final VT_CHANNEL_PAUSE_OUTGOING_VIDEO_FAILED:I = 0xd

.field public static final VT_CHANNEL_RESUME_OUTGOING_AUDIO_COMPLETE:I = 0xa

.field public static final VT_CHANNEL_RESUME_OUTGOING_AUDIO_FAILED:I = 0xb

.field public static final VT_CHANNEL_RESUME_OUTGOING_VIDEO_COMPLETE:I = 0xe

.field public static final VT_CHANNEL_RESUME_OUTGOING_VIDEO_FAILED:I = 0xf

.field public static final VT_CONNECT_COMPLETE:I = 0x3

.field public static final VT_CONNECT_DIRECTION_IMCOMING:I = 0x2

.field public static final VT_CONNECT_DIRECTION_OUTGOING:I = 0x1

.field public static final VT_CONNECT_FAILED:I = 0x4

.field public static final VT_DISCONNECT_COMPLETE:I = 0x5

.field public static final VT_DISCONNECT_FAILED:I = 0x6

.field public static final VT_ERROR_SERVER_DIED:I = 0x64

.field public static final VT_INIT_COMPLETE:I = 0x1

.field public static final VT_INIT_FAILED:I = 0x2

.field public static final VT_MEDIAVTSERVICE_DESTROY:I = 0x136

.field public static final VT_MEDIAVTSERVICE_GET_SURFACE:I = 0x12e

.field public static final VT_MEDIAVTSERVICE_HIDE:I = 0x130

.field public static final VT_MEDIAVTSERVICE_HIDE_FAREND:I = 0x132

.field public static final VT_MEDIAVTSERVICE_HIDE_NEAREND:I = 0x131

.field public static final VT_MEDIAVTSERVICE_PREPARE_SURFACE:I = 0x12d

.field public static final VT_MEDIAVTSERVICE_QUIT:I = 0x138

.field public static final VT_MEDIAVTSERVICE_SET_FAREND_POS:I = 0x135

.field public static final VT_MEDIAVTSERVICE_SET_NEAREND_POS:I = 0x134

.field public static final VT_MEDIAVTSERVICE_SHOW:I = 0x12f

.field public static final VT_MEDIAVTSERVICE_START:I = 0x12c

.field public static final VT_MEDIAVTSERVICE_SURFACE_READY:I = 0xc8

.field public static final VT_MEDIAVTSERVICE_SWITCH_VIEW:I = 0x133

.field public static final VT_MEDIAVTSERVICE_UNBIND:I = 0x137

.field public static final VT_MULTIMEDIA_RINGTONE_BEGIN:I = 0x11

.field public static final VT_MULTIMEDIA_RINGTONE_END:I = 0x12

.field public static final VT_REMOTE_CALL_END:I = 0x7

.field public static final VT_SERVICE_BINDED:I = 0x13

.field public static final VT_SERVICE_UNBINDED:I = 0x14

.field public static final VT_UNSOLICITED_TERMINATED:I = 0x10


# instance fields
.field private mAudioDocumentsdir:Ljava/lang/String;

.field private mAudioRecordingFile:Ljava/io/File;

.field private mAudioRecordingFileFormat:Ljava/lang/String;

.field private mAudioRecordingFileStream:Ljava/io/FileOutputStream;

.field private mAudioRecordingFiledir:Ljava/lang/String;

.field private mCameraSurface:Landroid/view/Surface;

.field private mContext:Landroid/content/Context;

.field private mEnableAudio:Z

.field private mEnableVideo:Z

.field private mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

.field private mEventListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/service/vt/MediaVT$OnEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

.field private mIsDeInitializeCalled:Z

.field private mIsDisconnectCalled:Z

.field private mLoopback:Z

.field private mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

.field private mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

.field private mMediaVTServiceReady:Z

.field private mMediaVTState:I

.field private mNativeContext:I

.field private mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

.field private mSrcImage:Landroid/graphics/Bitmap;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field public mVTSerivceExist:Z

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideosource:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "MediaVT_Java"

    const-string v1, "Try System.loadLibrary(vt_jni)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string/jumbo v0, "vt_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    const-string v0, "MediaVT_Java"

    const-string v1, "System.loadLibrary(vt_jni)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 105
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 148
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 149
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 150
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 151
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 154
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 157
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 160
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    .line 161
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    .line 162
    const-string v0, ".amr"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileFormat:Ljava/lang/String;

    .line 163
    const-string v0, "/sdcard/My Documents/"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioDocumentsdir:Ljava/lang/String;

    .line 164
    const-string v0, "/sdcard/My Documents/My Recordings/"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFiledir:Ljava/lang/String;

    .line 316
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 171
    invoke-direct {p0, v1}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 105
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 148
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 149
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 150
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 151
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 154
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 157
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 160
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    .line 161
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    .line 162
    const-string v0, ".amr"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileFormat:Ljava/lang/String;

    .line 163
    const-string v0, "/sdcard/My Documents/"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioDocumentsdir:Ljava/lang/String;

    .line 164
    const-string v0, "/sdcard/My Documents/My Recordings/"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFiledir:Ljava/lang/String;

    .line 316
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 179
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor in."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 181
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 3
    .parameter "context"
    .parameter "eventListener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 105
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 148
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 149
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 150
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 151
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 154
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 157
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 160
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    .line 161
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    .line 162
    const-string v0, ".amr"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileFormat:Ljava/lang/String;

    .line 163
    const-string v0, "/sdcard/My Documents/"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioDocumentsdir:Ljava/lang/String;

    .line 164
    const-string v0, "/sdcard/My Documents/My Recordings/"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFiledir:Ljava/lang/String;

    .line 316
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 185
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor in."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 187
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 188
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method static synthetic access$002(Lcom/htc/service/vt/MediaVT;Lcom/htc/service/vt/IMediaVTService;)Lcom/htc/service/vt/IMediaVTService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/service/vt/MediaVT;IIILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/service/vt/MediaVT;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/service/vt/MediaVT;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/service/vt/MediaVT;)Lcom/htc/service/vt/MediaVT$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/service/vt/MediaVT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/service/vt/MediaVT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/service/vt/MediaVT;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/service/vt/MediaVT;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/service/vt/MediaVT;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private native native_connect(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_connect(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_enableoutput(ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_finalize()V
.end method

.method private native native_init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_sendkey(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setoption(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setsurface(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setvideosource(ILandroid/graphics/Bitmap;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_startrecording(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_startrecording(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_stoprecording()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediavt_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1227
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/vt/MediaVT;

    .line 1228
    .local v1, mv:Lcom/htc/service/vt/MediaVT;
    if-nez v1, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    if-eqz v2, :cond_0

    .line 1233
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1234
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-virtual {v2, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendMediaVTServiceCommand(IIILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1257
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    if-nez v1, :cond_2

    .line 1262
    new-instance v1, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    .line 1264
    :cond_2
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1265
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    invoke-virtual {v1, v0}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setMediaVTState(I)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-gt p1, v0, :cond_0

    .line 83
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set Java MediaVT state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    .line 86
    :cond_0
    iput p1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 87
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaVTState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setupMediaVT(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 193
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 194
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 198
    iput-boolean v3, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    .line 199
    iput v3, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    .line 202
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    .line 203
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    .line 205
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    .line 209
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 210
    new-instance v1, Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    .line 220
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setup in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/htc/service/vt/MediaVT;->native_setup(Ljava/lang/Object;)V

    .line 222
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setup out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz p1, :cond_0

    .line 225
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 227
    new-instance v1, Lcom/htc/service/vt/MediaVT$1;

    const-string v2, "MediaVTServiceHandlerThread"

    invoke-direct {v1, p0, v2}, Lcom/htc/service/vt/MediaVT$1;-><init>(Lcom/htc/service/vt/MediaVT;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    .line 234
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 236
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v1, 0x12c

    invoke-direct {p0, v1, v3, v3, v4}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 239
    :cond_0
    return-void

    .line 211
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 212
    new-instance v1, Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    goto :goto_0

    .line 214
    :cond_2
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    goto :goto_0
.end method


# virtual methods
.method public MakeRecordDir()Z
    .locals 4

    .prologue
    .line 878
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 880
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioDocumentsdir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 881
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 883
    const-string v2, "MediaVT_Java"

    const-string v3, "MakeRecordDir : My Documents "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFiledir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 886
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 887
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 888
    const-string v2, "MediaVT_Java"

    const-string v3, "MakeRecordDir : My Recordings "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_1
    const/4 v2, 0x1

    .line 892
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bindMediaVTSerive(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.mediavtservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    const-string v1, "com.htc.mediavtservice"

    const-string v2, "com.htc.mediavtservice.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for VT Sample AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 353
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    const-string v1, "MediaVT_Java"

    const-string v2, "bindService() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.testtool"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    const-string v1, "com.htc.testtool"

    const-string v2, "com.htc.testtool.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for VT Test AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_2
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.mediavtservice.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for Phone AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(I)V
    .locals 3
    .parameter "callDirection"

    .prologue
    .line 610
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KPI] connect in, direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 614
    :cond_0
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 615
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call connect when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :cond_1
    const-string v0, "MediaVT_Java"

    const-string v1, "native_connect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_connect(I)V

    .line 621
    const-string v0, "MediaVT_Java"

    const-string v1, "native_connect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect out, direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(Z)V
    .locals 3
    .parameter "loopback"

    .prologue
    .line 596
    const-string v0, "MediaVT_Java"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_0

    .line 607
    :goto_0
    return-void

    .line 599
    :cond_0
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    .line 601
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 602
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call connect when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :cond_1
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    invoke-direct {p0, v0}, Lcom/htc/service/vt/MediaVT;->native_connect(Z)V

    goto :goto_0
.end method

.method public destroyMediaVTService()V
    .locals 3

    .prologue
    .line 491
    const-string v1, "MediaVT_Java"

    const-string v2, "destroyMediaVTService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->destroy()Z

    .line 501
    :goto_0
    return-void

    .line 496
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.destroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 632
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    if-nez v0, :cond_0

    .line 635
    const-string v0, "MediaVT_Java"

    const-string v1, "Phone APP is calling MediaVT.disconenct()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 642
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_1

    .line 662
    :goto_0
    return-void

    .line 638
    :cond_0
    const-string v0, "MediaVT_Java"

    const-string v1, "Phone APP already called MediaVT.disconenct() before, dont call again..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 648
    :cond_1
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    if-ne v0, v2, :cond_2

    .line 649
    const-string v0, "MediaVT_Java"

    const-string v1, "Aricent VT stack is already deinitialized, dont call native_disconnect(), return and send VT_DISCONNECT_COMPLETE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v0, "MediaVT_Java"

    const-string v1, "inform AP VT_DISCONNECT_COMPLETE directly."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendEmptyMessage(I)Z

    .line 652
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    :cond_2
    const-string v0, "MediaVT_Java"

    const-string v1, "native_disconnect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_disconnect()V

    .line 659
    const-string v0, "MediaVT_Java"

    const-string v1, "native_disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableVTOutput(ZZ)I
    .locals 3
    .parameter "video"
    .parameter "audio"

    .prologue
    .line 770
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVTOutput, video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 773
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call enableVTOutput when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v0, 0x0

    .line 784
    :goto_0
    return v0

    .line 778
    :cond_0
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    if-eq v0, p2, :cond_2

    .line 779
    :cond_1
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    .line 780
    iput-boolean p2, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    .line 782
    invoke-direct {p0, p1, p2}, Lcom/htc/service/vt/MediaVT;->native_enableoutput(ZZ)I

    move-result v0

    goto :goto_0

    .line 784
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_finalize()V

    return-void
.end method

.method public getMediaVTNotificationString(I)Ljava/lang/String;
    .locals 2
    .parameter "what"

    .prologue
    .line 1036
    sparse-switch p1, :sswitch_data_0

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown notification from VT stack("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1038
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_INIT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1040
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_INIT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1042
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CONNECT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1044
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CONNECT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1046
    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_DISCONNECT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1048
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_DISCONNECT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1050
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_REMOTE_CALL_END("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1052
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_ERROR_SERVER_DIED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1054
    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_AUDIO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1056
    :sswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_AUDIO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1058
    :sswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_AUDIO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1060
    :sswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_AUDIO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1062
    :sswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_VIDEO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1064
    :sswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_VIDEO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1066
    :sswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_VIDEO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1068
    :sswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_VIDEO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1070
    :sswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_UNSOLICITED_TERMINATED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1072
    :sswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_MULTIMEDIA_RINGTONE_BEGIN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1074
    :sswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_MULTIMEDIA_RINGTONE_END("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1076
    :sswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_SERVICE_BINDED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1078
    :sswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_SERVICE_UNBINDED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1036
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public getMediaVTSeriveSurface()V
    .locals 3

    .prologue
    .line 376
    const-string v1, "MediaVT_Java"

    const-string v2, "getMediaVTSeriveSurface()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getNearendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 380
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    const-string v1, "MediaVT_Java"

    const-string v2, "CameraSurface == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getFarendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 382
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    const-string v1, "MediaVT_Java"

    const-string v2, "VideoSurface == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not get surface from IMediaVTService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMediaVTStateString(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state of MediaVT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_UNINIT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_INITING("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_INITED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_CONNECTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_DISCONNECTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_TERMINTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 902
    const-string v0, "MediaVT_Java"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/16 v0, 0x130

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 905
    return-void
.end method

.method public hideFarend()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 914
    const-string v0, "MediaVT_Java"

    const-string v1, "hideFarend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE_FAREND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v0, 0x132

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 917
    return-void
.end method

.method public hideMediaVTFarendServiceView()V
    .locals 3

    .prologue
    .line 435
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTFarendServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hideFarend()Z

    .line 445
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hideFarend()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideMediaVTNearendServiceView()V
    .locals 3

    .prologue
    .line 421
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTNearendServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hideNearend()Z

    .line 431
    :goto_0
    return-void

    .line 426
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hideNearend()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideMediaVTServiceView()V
    .locals 3

    .prologue
    .line 407
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hide()Z

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideNearend()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 908
    const-string v0, "MediaVT_Java"

    const-string v1, "hideNearend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE_NEAREND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/16 v0, 0x131

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 911
    return-void
.end method

.method public init(Landroid/view/Surface;Landroid/view/Surface;Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 3
    .parameter "camSurface"
    .parameter "vidSurface"
    .parameter "eventListener"

    .prologue
    const/4 v2, 0x1

    .line 253
    const-string v0, "MediaVT_Java"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0, v2}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    .line 257
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 258
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 259
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 261
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eq v0, v2, :cond_0

    .line 262
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call init(Surface, Surface, OnEventListener) when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_init()V

    goto :goto_0
.end method

.method public init(Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 4
    .parameter "eventListener"

    .prologue
    .line 281
    const-string v1, "MediaVT_Java"

    const-string v2, "init in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v1, "MediaVT_Java"

    const-string v2, "Wait for mediavt service binding."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    iget-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    if-nez v1, :cond_0

    .line 286
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "Service binding successful."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 295
    :cond_1
    iget v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v1, :cond_2

    .line 296
    const-string v1, "MediaVT_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call init(OnEventListener) when MediaVT State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v3}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_1
    return-void

    .line 300
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    .line 310
    const-string v1, "MediaVT_Java"

    const-string v2, "native_init in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_init()V

    .line 312
    const-string v1, "MediaVT_Java"

    const-string v2, "native_init out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "MediaVT_Java"

    const-string v2, "init out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initMediaVTSerive()V
    .locals 3

    .prologue
    .line 362
    const-string v1, "MediaVT_Java"

    const-string v2, "initMediaVTSerive ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-interface {v1, v2}, Lcom/htc/service/vt/IMediaVTService;->init(Lcom/htc/service/vt/OnMediaVTServiceEventListener;)Z

    .line 372
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "IMediaVTService == null, can not call IMediaVTService.init()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public native native_deInitialize()V
.end method

.method public sendKey(I)I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 709
    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 710
    const-string v2, "MediaVT_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot call sendKey when MediaVT State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v4}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    :goto_0
    return v1

    .line 714
    :cond_1
    const/4 v2, 0x7

    if-lt p1, v2, :cond_2

    const/16 v2, 0x10

    if-le p1, v2, :cond_3

    :cond_2
    const/16 v2, 0x12

    if-eq p1, v2, :cond_3

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    .line 717
    :cond_3
    const/4 v0, 0x0

    .line 718
    .local v0, dtmfCode:I
    packed-switch p1, :pswitch_data_0

    .line 756
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/service/vt/MediaVT;->native_sendkey(I)I

    move-result v1

    goto :goto_0

    .line 720
    :pswitch_0
    const/4 v0, 0x0

    .line 721
    goto :goto_1

    .line 723
    :pswitch_1
    const/4 v0, 0x1

    .line 724
    goto :goto_1

    .line 726
    :pswitch_2
    const/4 v0, 0x2

    .line 727
    goto :goto_1

    .line 729
    :pswitch_3
    const/4 v0, 0x3

    .line 730
    goto :goto_1

    .line 732
    :pswitch_4
    const/4 v0, 0x4

    .line 733
    goto :goto_1

    .line 735
    :pswitch_5
    const/4 v0, 0x5

    .line 736
    goto :goto_1

    .line 738
    :pswitch_6
    const/4 v0, 0x6

    .line 739
    goto :goto_1

    .line 741
    :pswitch_7
    const/4 v0, 0x7

    .line 742
    goto :goto_1

    .line 744
    :pswitch_8
    const/16 v0, 0x8

    .line 745
    goto :goto_1

    .line 747
    :pswitch_9
    const/16 v0, 0x9

    .line 748
    goto :goto_1

    .line 750
    :pswitch_a
    const/16 v0, 0xa

    .line 751
    goto :goto_1

    .line 753
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_1

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setFarendVideoPos(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 934
    const-string v1, "MediaVT_Java"

    const-string v2, "setFarendVideoPos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_SET_FAREND_POS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 938
    .local v0, rect:Landroid/graphics/Rect;
    const/16 v1, 0x135

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 939
    return-void
.end method

.method public setMediaVTServiceFarendVideoPos(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 477
    const-string v1, "MediaVT_Java"

    const-string v2, "setMediaVTServiceFarendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/IMediaVTService;->setFarendVideoPos(IIII)Z

    .line 487
    :goto_0
    return-void

    .line 482
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.setFarendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMediaVTServiceNearendVideoPos(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 463
    const-string v1, "MediaVT_Java"

    const-string v2, "setMediaVTServiceNearendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/IMediaVTService;->setNearendVideoPos(IIII)Z

    .line 473
    :goto_0
    return-void

    .line 468
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.setNearendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNearendVideoPos(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 926
    const-string v1, "MediaVT_Java"

    const-string v2, "setNearendVideoPos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_SET_NEAREND_POS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 930
    .local v0, rect:Landroid/graphics/Rect;
    const/16 v1, 0x134

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 931
    return-void
.end method

.method public setOption(I)I
    .locals 2
    .parameter "option"

    .prologue
    .line 794
    const-string v0, "MediaVT_Java"

    const-string v1, "setOption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const-string v0, "null"

    invoke-direct {p0, p1, v0}, Lcom/htc/service/vt/MediaVT;->native_setoption(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setOption(ILjava/lang/String;)I
    .locals 3
    .parameter "option"
    .parameter "value"

    .prologue
    .line 810
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOption option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 813
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setOption when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v0, 0x0

    .line 816
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/service/vt/MediaVT;->native_setoption(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setSurface(ILandroid/view/Surface;)V
    .locals 3
    .parameter "whichSurface"
    .parameter "newSurface"

    .prologue
    .line 526
    const-string v1, "MediaVT_Java"

    const-string v2, "setSurfaces ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-nez p1, :cond_2

    .line 530
    if-nez p2, :cond_1

    .line 532
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set null camera surface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-nez v1, :cond_0

    .line 535
    const-string v1, "MediaVT_Java"

    const-string v2, "null camera surface, ignore it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :goto_0
    return-void

    .line 539
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "null camera surface, use service nearend surface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getNearendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_1
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_CAMERA in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_setsurface(I)V

    .line 553
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_CAMERA out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, remoteException:Landroid/os/RemoteException;
    const-string v1, "MediaVT_Java"

    const-string v2, "get nearend surface cause Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 548
    .end local v0           #remoteException:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set camera surface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    goto :goto_1

    .line 555
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 557
    if-nez p2, :cond_4

    .line 559
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set null video surface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-nez v1, :cond_3

    .line 562
    const-string v1, "MediaVT_Java"

    const-string v2, "null video surface, ignore it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :cond_3
    const-string v1, "MediaVT_Java"

    const-string v2, "null video surface, user service farend surface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :try_start_1
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getFarendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 578
    :goto_2
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_VIDEO in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_setsurface(I)V

    .line 580
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_VIDEO out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :catch_1
    move-exception v0

    .line 570
    .restart local v0       #remoteException:Landroid/os/RemoteException;
    const-string v1, "MediaVT_Java"

    const-string v2, "get farend surface cause Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 575
    .end local v0           #remoteException:Landroid/os/RemoteException;
    :cond_4
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set video surface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    goto :goto_2

    .line 583
    :cond_5
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set unknown surface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setVideoInputSource(ILandroid/graphics/Bitmap;)I
    .locals 3
    .parameter "is"
    .parameter "img"

    .prologue
    const/4 v2, 0x0

    .line 679
    const-string v0, "MediaVT_Java"

    const-string v1, "setVideoInputSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    .line 681
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setVideoInputSource when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0

    .line 685
    :cond_0
    iput p1, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    .line 686
    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    .line 688
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 690
    if-nez p2, :cond_1

    .line 691
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_1
    const/16 v0, 0xb0

    const/16 v1, 0x90

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    .line 694
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/htc/service/vt/MediaVT;->native_setvideosource(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0

    .line 697
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/htc/service/vt/MediaVT;->native_setvideosource(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 896
    const-string v0, "MediaVT_Java"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_SHOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/16 v0, 0x12f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 899
    return-void
.end method

.method public showMediaVTServiceView()V
    .locals 3

    .prologue
    .line 393
    const-string v1, "MediaVT_Java"

    const-string v2, "showMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->show()Z

    .line 403
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.show()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startVoiceRecording(Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 826
    const-string v2, "MediaVT_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVoiceRecording filePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-nez p1, :cond_0

    .line 828
    const-string v2, "MediaVT_Java"

    const-string v3, "startVoiceRecording fail filePath == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :goto_0
    return v1

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/htc/service/vt/MediaVT;->MakeRecordDir()Z

    move-result v2

    if-nez v2, :cond_1

    .line 833
    const-string v2, "MediaVT_Java"

    const-string v3, "MakeRecordDir false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 837
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    .line 838
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    if-nez v2, :cond_2

    .line 839
    const-string v2, "MediaVT_Java"

    const-string v3, "Audio Recording File null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 843
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :try_start_1
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/service/vt/MediaVT;->native_startrecording(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 854
    const/4 v1, 0x1

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "MediaVT_Java"

    const-string v3, "Audio Recording File Stream Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 850
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 851
    .local v0, e:Ljava/io/IOException;
    const-string v2, "MediaVT_Java"

    const-string v3, "Audio Recording Get FD Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopVoiceRecording()V
    .locals 4

    .prologue
    .line 859
    const-string v1, "MediaVT_Java"

    const-string v2, "stopVoiceRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_stoprecording()V

    .line 861
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 868
    :try_start_1
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MediaVT_Java"

    const-string v2, "Audio Recording close Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 864
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 865
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "MediaVT_Java"

    const-string v2, "Audio Recording flush Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 868
    :try_start_3
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 869
    :catch_2
    move-exception v0

    .line 870
    const-string v1, "MediaVT_Java"

    const-string v2, "Audio Recording close Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 868
    :try_start_4
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 871
    :goto_1
    throw v1

    .line 869
    :catch_3
    move-exception v0

    .line 870
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "MediaVT_Java"

    const-string v3, "Audio Recording close Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public switchMediaVTServiceView()V
    .locals 3

    .prologue
    .line 449
    const-string v1, "MediaVT_Java"

    const-string v2, "switchMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->switchView()Z

    .line 459
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.switchView()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 920
    const-string v0, "MediaVT_Java"

    const-string v1, "switchView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_SWITCH_VIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/16 v0, 0x133

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 923
    return-void
.end method

.method public unBindMediaVTService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 505
    const-string v1, "MediaVT_Java"

    const-string/jumbo v2, "unBindService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_QUIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v1, 0x138

    const/4 v2, 0x0

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 514
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaVT_Java"

    const-string v2, "Catch java.lang.IllegalArgumentException: Service not registered, ITS HuangShan 1323"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public vt_deInitialize()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "MediaVT_Java"

    const-string v1, "deInitialize() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {p0}, Lcom/htc/service/vt/MediaVT;->native_deInitialize()V

    .line 667
    const-string v0, "MediaVT_Java"

    const-string v1, "deInitialize() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void
.end method
