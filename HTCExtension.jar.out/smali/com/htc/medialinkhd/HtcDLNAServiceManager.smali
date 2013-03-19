.class public Lcom/htc/medialinkhd/HtcDLNAServiceManager;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;,
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;,
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;,
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$HtcDLNAColumn;,
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$BaseColumn;,
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$ImageGroundId;
    }
.end annotation


# static fields
.field public static final ACTION_DESTROY_DLNA_MEDIACONTROLLERS:Ljava/lang/String; = "com.htc.medialinkhd.destroy_dlna_mediacontrollers"

.field public static final ACTION_DMC_DESTROY_NOTIFY_AP:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_destroy_notify"

.field public static final ACTION_DMC_STOP_POSITION:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_stop_position"

.field public static final AUTOPLAYWANTSHOWSTOP:I = 0x3e8

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field private static final DISCOVER_TIMEOUT:I = 0x1388

.field public static final DTCP_FILLBUFFER_EOS:I = -0x1

.field public static final DTCP_FILLBUFFER_ERROR:I = -0x2

.field public static final DTCP_MIMETYPE_AUDIO_AAC:Ljava/lang/String; = "audio/adts"

.field public static final DTCP_MIMETYPE_AUDIO_MP3:Ljava/lang/String; = "audio/mpeg"

.field public static final DTCP_MIMETYPE_AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final DTCP_MIMETYPE_AUDIO_WMA:Ljava/lang/String; = "audio/x-ms-wma"

.field public static final DTCP_MIMETYPE_VIDEO_AVI:Ljava/lang/String; = "video/x-msvideo"

.field public static final DTCP_MIMETYPE_VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final DTCP_MIMETYPE_VIDEO_MPEG:Ljava/lang/String; = "video/mpeg"

.field public static final DTCP_MIMETYPE_VIDEO_WMV:Ljava/lang/String; = "video/x-ms-wmv"

.field public static final ERROR_DISCOVER_TIMOUT_CODE:I = -0x4000

.field public static final ERROR_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover Timeout"

.field public static final ERROR_SESSION_DESTROYED_DUE_TO_NO_RESOURCE:I = -0x140

.field public static final FILTER_AUDIO:I = 0x1

.field public static final FILTER_IMAGE:I = 0x2

.field public static final FILTER_UNKNOWN:I = 0x0

.field public static final FILTER_VIDEO:I = 0x4

.field public static final ITEM_TYPE_AUDIO:I = 0x1

.field public static final ITEM_TYPE_FOLDER:I = 0x0

.field public static final ITEM_TYPE_IMAGE:I = 0x2

.field public static final ITEM_TYPE_UNKNOWN:I = -0x1

.field public static final ITEM_TYPE_VIDEO:I = 0x4

.field public static final KEY_APP:Ljava/lang/String; = "appName"

.field public static final KEY_CONTROLLER:Ljava/lang/String; = "controllerName"

.field public static final KEY_COOKIE:Ljava/lang/String; = "cookie"

.field public static final KEY_ERRORID:Ljava/lang/String; = "error_id"

.field public static final KEY_ERRORMSG:Ljava/lang/String; = "error_message"

.field public static final KEY_MEDIA:Ljava/lang/String; = "media"

.field public static final KEY_POSITION:Ljava/lang/String; = "position"

.field static final LOG_TAG:Ljava/lang/String; = "HtcDLNAServiceManager "

.field private static final MSG_CHANGE_STATE:I = 0x2711

.field private static final MSG_UPDTAE_POS:I = 0x2712

.field static final NOREPEAT:I = 0x0

.field public static final NO_REPEAT:I = 0x0

.field private static final PHOTO_SLIDESHOW_START:I = 0x0

.field private static final PHOTO_SLIDESHOW_STOP:I = 0x1

.field static final REPEATALL:I = 0x1

.field static final REPEATONE:I = 0x2

.field public static final REPEAT_ALL:I = 0x1

.field public static final REPEAT_CURRENT:I = 0x2

.field public static final RESPON_DISCOVER_TIMOUT_CODE:I = 0x4e20

.field public static final RESPON_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover DMR success"

.field public static final RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP:I = -0x3f1

.field public static final RETURN_CODE_GENERAL_ERROR:I = -0x3ee

.field public static final RETURN_CODE_INVALID_ARGUMENT:I = -0x3ea

.field public static final RETURN_CODE_INVALID_RENDERERID:I = -0x3f0

.field public static final RETURN_CODE_LISTENER_NOT_READY:I = -0x3ec

.field public static final RETURN_CODE_NO_VALID_SESSION_COOKIE:I = -0x3ef

.field public static final RETURN_CODE_OK:I = -0x3e8

.field public static final RETURN_CODE_RENDERER_NOT_READY:I = -0x3eb

.field public static final RETURN_CODE_SAME_RENDERER_ALREADY_EXIST:I = -0x3ed

.field public static final RETURN_CODE_WRONG_STATE:I = -0x3e9

.field private static final SRV_DLNA:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.DLNAService"

.field private static final SRV_DTCP:Ljava/lang/String; = "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

.field public static final STATE_AUTOPLAYNEXT:I = 0x3e9

.field public static final STATE_DISCONNECTED:I = 0x9

.field public static final STATE_END:I = 0xa

.field public static final STATE_IDLE:I = 0x8

.field public static final STATE_NO_MEDIA:I = 0x6

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x0

.field public static final STATE_STOPPED:I = 0x1

.field public static final STATE_TRANSITIONING:I = 0x5

.field private static final URI_PREFIX_DEF_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_default?cookie="

.field private static final URI_PREFIX_DEF_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_default?cookie="

.field private static final URI_PREFIX_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_current?cookie="

.field private static final URI_PREFIX_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_current?cookie="


# instance fields
.field private SEEK_THREADHOLD:I

.field private bDTCPGetURI:Z

.field private bIsDTCPPlayEnd:Z

.field private bIsDTCPSupport:Z

.field private bIsDTCPURINext:Z

.field private isDTCPIPContent:Z

.field private mClientSeekTo:I

.field private mContext:Landroid/content/Context;

.field private mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

.field private mCookie:I

.field private mCurrentPos:I

.field private mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

.field private mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

.field private mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

.field private mDTCPServiceConnection:Landroid/content/ServiceConnection;

.field private mFilter:I

.field private mHandler:Landroid/os/Handler;

.field private mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

.field private mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

.field private mMiddleLayerListenerLockObject:Ljava/lang/Object;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mRendererCreated:Z

.field private mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

.field private mRendererId:Ljava/lang/String;

.field private mRunAsSlideShow:Z

.field private mServerID:Ljava/lang/String;

.field private mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mState:Ljava/lang/Integer;

.field private mUriDefRendererGetter:Landroid/net/Uri;

.field private mUriDefRendererSaver:Landroid/net/Uri;

.field private mUriRendererGetter:Landroid/net/Uri;

.field private mUriRendererSaver:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "sessionCookie"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/medialinkhd/CookieException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1503
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    .line 950
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 951
    iput v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    .line 952
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 953
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 954
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 955
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 956
    iput v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 958
    iput v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 959
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 960
    iput v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 961
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 963
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriRendererSaver:Landroid/net/Uri;

    .line 964
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 965
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererSaver:Landroid/net/Uri;

    .line 966
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 968
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 969
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 971
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 974
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    .line 975
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 977
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    .line 979
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 981
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 982
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 983
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 984
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    .line 985
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    .line 986
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 987
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    .line 989
    new-instance v1, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;

    invoke-direct {v1, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    .line 1005
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 1006
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 1056
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .line 1453
    new-instance v1, Lcom/htc/medialinkhd/HtcDLNAServiceManager$2;

    invoke-direct {v1, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$2;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    .line 1504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1523
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 1525
    iput p2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 1527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_default?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 1529
    iput p3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 1530
    new-instance v1, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-direct {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;-><init>()V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .line 1531
    new-instance v1, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-direct {v1, p0}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    .line 1532
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 1533
    return-void
.end method

.method static synthetic access$000(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 402
    invoke-static {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/medialinkhd/HtcDLNAServiceManager;Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/medialinkhd/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 402
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/medialinkhd/HtcDLNAServiceManager;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/medialinkhd/HtcDLNAServiceManager;Lcom/htc/htcdlnainterface/IDLNAPluginService;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->updatePlayingPosition()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/medialinkhd/HtcDLNAServiceManager;Lcom/awox/dtcpmiddlelayer/IDTCPService;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    return-object v0
.end method

.method private static addConnectedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    .line 1655
    if-nez p0, :cond_0

    .line 1670
    :goto_0
    return v2

    .line 1658
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1659
    .local v0, generatedCookie:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1660
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[addConnectedCookieInProvider], cookie not found in GeneratedCookie"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1665
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_connected_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1668
    .local v1, result:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_connected_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static addGeneratedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "pid"

    .prologue
    const/4 v1, 0x0

    .line 1592
    if-nez p0, :cond_1

    .line 1603
    :cond_0
    :goto_0
    return v1

    .line 1594
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_generated_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    .local v0, result:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_generated_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    if-eqz v0, :cond_0

    .line 1603
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static autoLog()V
    .locals 1

    .prologue
    .line 5201
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5202
    return-void
.end method

.method private static autoLog(Ljava/lang/String;)V
    .locals 4
    .parameter "appendString"

    .prologue
    const/4 v3, 0x4

    .line 5210
    const-string v1, "HtcDLNAServiceManager "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Line: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5213
    return-void

    .line 5210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkCookieValue(I)Z
    .locals 1
    .parameter "newCookie"

    .prologue
    .line 1726
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    .line 1727
    :cond_0
    const/4 v0, 0x0

    .line 1730
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cleanDataMember()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2190
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 2191
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2192
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 2193
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 2194
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 2195
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 2196
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 2197
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2198
    return-void
.end method

.method private connectDTCPServer(Z)V
    .locals 4
    .parameter "bGetURI"

    .prologue
    .line 1901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 1902
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    .line 1903
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-eqz v0, :cond_0

    .line 1904
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "DTCP Service started!!"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    :goto_0
    return-void

    .line 1907
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "startService(SRV_DTCP)"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1909
    new-instance v0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;

    invoke-direct {v0, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 1937
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "bindService(SRV_DTCP)"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private createMediaControllerAndSetControllerInfo(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I
    .locals 9
    .parameter "rendererId"
    .parameter "statusBarData"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2489
    const/4 v2, 0x0

    .line 2490
    .local v2, result:I
    :try_start_0
    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v8, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v6, v7, v8, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    move-result v2

    .line 2491
    const-string v6, "HtcDLNAServiceManager "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setRenderer] createMediaController result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCookie: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRendererId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 2494
    if-nez v2, :cond_1

    .line 2496
    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer] Set renderer faild with renderer ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    const/16 v4, -0x3ee

    .line 2532
    :goto_0
    return v4

    .line 2500
    :cond_1
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getServiceControlStatus()Lcom/htc/htcdlnainterface/DLNAControllerStatus;

    move-result-object v3

    .line 2501
    .local v3, status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    if-eqz v3, :cond_4

    .line 2502
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getRepeatState()I

    move-result v6

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v4, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1502(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2503
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getShuffle()Z

    move-result v6

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z
    invoke-static {v4, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1602(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z

    .line 2504
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getVolumeValue()I

    move-result v6

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v4, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1702(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2505
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1802(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2506
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v4, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1902(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2508
    const-string v4, "HtcDLNAServiceManager "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] Get current DMR init state( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) and set to DLNAManager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v0

    .line 2510
    .local v0, dmrState:I
    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_2

    .line 2511
    const/4 v0, 0x1

    .line 2513
    :cond_2
    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 2514
    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer]  setState( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2518
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 2520
    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer] Same renderer id already exists in DLNA Service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 2522
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v5

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J
    invoke-static {v4, v5, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2002(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J

    .line 2523
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getTotalCount()J

    move-result-wide v5

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J
    invoke-static {v4, v5, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2102(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    .end local v0           #dmrState:I
    .end local v3           #status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :cond_4
    :goto_1
    const/16 v4, -0x3e8

    goto/16 :goto_0

    .line 2527
    :catch_0
    move-exception v1

    .line 2529
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private disconnectDTCPServer(Z)V
    .locals 3
    .parameter "bplayend"

    .prologue
    .line 1944
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    .line 1946
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-nez v1, :cond_0

    .line 1959
    :goto_0
    return-void

    .line 1950
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    invoke-interface {v1}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->stopDTCPServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    :goto_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1958
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    goto :goto_0

    .line 1951
    :catch_0
    move-exception v0

    .line 1953
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static generateNewSessionCookie()I
    .locals 1

    .prologue
    .line 1547
    invoke-static {}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1549
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->generateNewSessionCookie(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static generateNewSessionCookie(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1563
    invoke-static {}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1564
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1567
    .local v0, cookie:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 1572
    .local v1, myProcessID:I
    return v0
.end method

.method private static getConnectedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1676
    if-nez p0, :cond_0

    const-string v0, ""

    .line 1683
    :goto_0
    return-object v0

    .line 1678
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1681
    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCurrentPlayingFilePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cookie"

    .prologue
    const/4 v1, 0x0

    .line 5115
    if-nez p0, :cond_1

    move-object v0, v1

    .line 5129
    :cond_0
    :goto_0
    return-object v0

    .line 5118
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_get_current_playing_file_path?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 5122
    .local v0, currentPlayingFilePath:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCurrentPlayingFilePath]: content://dlna/dmr_func_get_current_playing_file_path?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5126
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 5129
    goto :goto_0
.end method

.method private static getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1609
    if-nez p0, :cond_0

    const-string v0, ""

    .line 1616
    :goto_0
    return-object v0

    .line 1611
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_generated_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1614
    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_generated_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter "contentUri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3355
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 3356
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3358
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3359
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3361
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getRenderer(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 3427
    invoke-static {}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 3429
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRenderer]: cookie = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3431
    .local v0, currentRenderer:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3434
    .end local v0           #currentRenderer:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #currentRenderer:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getServiceControlStatus()Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    .locals 5

    .prologue
    .line 3468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3469
    const/4 v1, 0x0

    .line 3473
    .local v1, status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3479
    :goto_0
    return-object v1

    .line 3474
    :catch_0
    move-exception v0

    .line 3476
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSlideShowStatus()I
    .locals 6

    .prologue
    .line 4016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4017
    const/4 v1, 0x1

    .line 4018
    .local v1, nRet:I
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 4029
    .end local v1           #nRet:I
    .local v2, nRet:I
    :goto_0
    return v2

    .line 4023
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4028
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSlideShowStatus] result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    move v2, v1

    .line 4029
    .end local v1           #nRet:I
    .restart local v2       #nRet:I
    goto :goto_0

    .line 4024
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :catch_0
    move-exception v0

    .line 4026
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private initMiddleLayerListener()V
    .locals 2

    .prologue
    .line 2231
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2232
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v0, :cond_0

    .line 2234
    new-instance v0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-direct {v0, p0}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2236
    :cond_0
    monitor-exit v1

    .line 2237
    return-void

    .line 2236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isCookieValid(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1710
    invoke-static {}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1717
    const/4 v0, 0x1

    return v0
.end method

.method public static isFilePlaying(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 5084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5087
    if-nez p2, :cond_1

    .line 5098
    :cond_0
    :goto_0
    return v2

    .line 5089
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getCurrentPlayingFilePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 5090
    .local v0, currentPlayingFilePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5092
    const-string/jumbo v3, "utf-8"

    invoke-static {p2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 5093
    .end local v0           #currentPlayingFilePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 5095
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 2872
    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2873
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 2874
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 2875
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2876
    const/4 v4, 0x1

    .line 2878
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public static isPreviousStopAndResetDone(I)Z
    .locals 1
    .parameter "cookie"

    .prologue
    .line 2083
    invoke-static {}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 2085
    const/4 v0, 0x1

    return v0
.end method

.method private isValidState(I)Z
    .locals 3
    .parameter "stateCode"

    .prologue
    .line 5174
    packed-switch p1, :pswitch_data_0

    .line 5189
    :pswitch_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5190
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5185
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private lockCommand(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    .line 4979
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4980
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4982
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4986
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4988
    :goto_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4989
    return-void

    .line 4983
    :catch_0
    move-exception v0

    .line 4984
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4986
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private static moveGeneratedCookieToRemovedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    .line 1621
    if-nez p0, :cond_0

    .line 1649
    :goto_0
    return v2

    .line 1624
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, generatedCookie:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1626
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[moveGeneratedCookieToRemovedCookieInProvider], cookie not found in GeneratedCookie"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1632
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_generated_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1634
    .local v1, result:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_generated_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_released_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1646
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_released_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private static removeConnectedCookieInProvider(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1689
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 1696
    :goto_0
    return v1

    .line 1691
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1694
    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private saveRenderer()Z
    .locals 2

    .prologue
    .line 3367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3368
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "renderer"

    .prologue
    .line 3378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3379
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 3380
    :cond_0
    const/4 v1, 0x0

    .line 3384
    :goto_0
    return v1

    .line 3382
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3383
    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveRenderer]: content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private sendErrorMsg(ILjava/lang/String;)I
    .locals 6
    .parameter "error_id"
    .parameter "error_msg"

    .prologue
    const/4 v5, 0x0

    .line 4797
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 4798
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_0

    .line 4799
    monitor-exit v2

    .line 4806
    :goto_0
    return v5

    .line 4800
    :cond_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 4801
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 4802
    const-string v1, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendErrorMsg][id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4803
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 4806
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 4807
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .parameter "rendererID"
    .parameter "response_id"
    .parameter "response_msg"

    .prologue
    const/4 v5, 0x0

    .line 4822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4824
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 4825
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_0

    .line 4826
    monitor-exit v2

    .line 4833
    :goto_0
    return v5

    .line 4827
    :cond_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 4828
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 4829
    const-string v1, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendResponseMsg][id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4830
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 4833
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 4834
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unlockCommand()V
    .locals 2

    .prologue
    .line 4992
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4993
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4995
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4997
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4999
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5000
    return-void

    .line 4997
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private updatePlayingPosition()V
    .locals 6

    .prologue
    .line 3898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3899
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v1

    .line 3900
    .local v1, position:I
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I
    invoke-static {v2, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1402(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 3901
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 3902
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_0

    .line 3903
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 3904
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 3905
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onUpdatePosition(J)V

    .line 3907
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_0
    monitor-exit v3

    .line 3908
    return-void

    .line 3907
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    .line 4496
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4497
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "albumArtDownload : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4507
    :goto_0
    return-void

    .line 4502
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4503
    :catch_0
    move-exception v0

    .line 4505
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    .locals 10
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "count"
    .parameter "boundary"

    .prologue
    .line 4394
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4395
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browse : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4405
    :goto_0
    return-void

    .line 4400
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4401
    :catch_0
    move-exception v9

    .line 4403
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "cookie"
    .parameter "serverId"
    .parameter "containerId"
    .parameter "startIndex"

    .prologue
    .line 4448
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4449
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browseCancel : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4459
    :goto_0
    return-void

    .line 4454
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4455
    :catch_0
    move-exception v6

    .line 4457
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelContentThumbnail(II)V
    .locals 3
    .parameter "cookie"
    .parameter "groupID"

    .prologue
    .line 4342
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4343
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "cancelContentThumbnail : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4353
    :goto_0
    return-void

    .line 4348
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4349
    :catch_0
    move-exception v0

    .line 4351
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkErrorExists()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4660
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 4663
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkErrorExists] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4678
    :goto_0
    return v1

    .line 4668
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4669
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[checkErrorExists] No error exists."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4672
    :catch_0
    move-exception v0

    .line 4674
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4677
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[checkErrorExists] Error exists."

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4678
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public connect()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, -0x3e8

    .line 2247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2249
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 2250
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[connect] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    const/16 v1, -0x3e9

    .line 2283
    :cond_0
    :goto_0
    return v1

    .line 2254
    :cond_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-nez v2, :cond_2

    .line 2255
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[connect] please set DLNAServiceStatusListener before connect()."

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    const/16 v1, -0x3ec

    goto :goto_0

    .line 2259
    :cond_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    .line 2261
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-eqz v2, :cond_0

    .line 2262
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2263
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-interface {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    goto :goto_0

    .line 2268
    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "Request connect service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 2272
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.htcdlnamiddlelayer.DLNAService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2273
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "binder_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2275
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2276
    new-instance v2, Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;

    invoke-direct {v2, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 2278
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2281
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    goto :goto_0
.end method

.method public continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    .locals 11
    .parameter "cookie"
    .parameter "serverId"
    .parameter "containerId"
    .parameter "firstIndex"
    .parameter "startIndex"
    .parameter "count"
    .parameter "browsedCount"

    .prologue
    .line 4424
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4425
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "continueBrowseDown : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4435
    :goto_0
    return-void

    .line 4430
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4431
    :catch_0
    move-exception v10

    .line 4433
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 7

    .prologue
    const/16 v4, 0x9

    const/4 v6, 0x0

    .line 2391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2393
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 2428
    :cond_0
    :goto_0
    return-void

    .line 2396
    :cond_1
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "Request disconnect service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2403
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2404
    :try_start_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_3

    .line 2405
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 2406
    :cond_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->reset()V

    .line 2407
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2409
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2410
    :try_start_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2421
    :goto_1
    iput-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2423
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2424
    .local v0, clientListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_0

    .line 2425
    invoke-interface {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 2426
    iput-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    goto :goto_0

    .line 2409
    .end local v0           #clientListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2411
    :catch_0
    move-exception v1

    .line 2413
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public dtcpFillBuffer(JI[B)I
    .locals 3
    .parameter "id"
    .parameter "size"
    .parameter "data"

    .prologue
    .line 2916
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "mDTCPService.FillBuffer"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->FillBuffer(JI[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2923
    const/16 v1, -0x3e8

    :goto_0
    return v1

    .line 2918
    :catch_0
    move-exception v0

    .line 2920
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2921
    const/16 v1, -0x3e9

    goto :goto_0
.end method

.method public dtcpSetAVTransportPushBufferURI(Ljava/lang/String;J)I
    .locals 4
    .parameter "mimetype"
    .parameter "totalsize"

    .prologue
    const/16 v0, -0x3e9

    .line 2976
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "dtcpSetAVTransportPushBufferURI()"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    if-nez v1, :cond_0

    .line 2979
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    const/16 v0, -0x3f1

    .line 3012
    :goto_0
    return v0

    .line 2982
    :cond_0
    if-nez p1, :cond_1

    .line 2983
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    const/16 v0, -0x3ea

    goto :goto_0

    .line 2987
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_3

    .line 2988
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    const/16 v0, -0x3eb

    goto :goto_0

    .line 2992
    :cond_3
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 2993
    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dtcpSetAVTransportPushBufferURI] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2997
    :cond_5
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    if-nez v1, :cond_6

    .line 2998
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[dtcpSetAVTransportPushBufferURI] mDTCPFillBufferCallback == null RETURN_CODE_WRONG_STATE"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3002
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3004
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "new DLNAPushMediaInfo"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 3006
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    .line 3007
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMetaDataFilePath(Ljava/lang/String;)V

    .line 3008
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p2, p3}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setTotalFileSize(J)V

    .line 3010
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3012
    const/16 v0, -0x3e8

    goto/16 :goto_0
.end method

.method public dtcpSetAVTransportURI(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 2934
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "dtcpSetAVTransportURI()"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 2937
    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    if-nez v0, :cond_0

    .line 2938
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    const/16 v0, -0x3f1

    .line 2964
    :goto_0
    return v0

    .line 2941
    :cond_0
    if-nez p1, :cond_1

    .line 2942
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    const/16 v0, -0x3ea

    goto :goto_0

    .line 2946
    :cond_1
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_3

    .line 2947
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    const/16 v0, -0x3eb

    goto :goto_0

    .line 2951
    :cond_3
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 2952
    :cond_4
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dtcpSetAVTransportURI] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    const/16 v0, -0x3e9

    goto :goto_0

    .line 2956
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 2958
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "new DLNAPushMediaInfo"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 2960
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    .line 2962
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 2964
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public dtcpSetPushBufferCB(Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 3022
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 3023
    return-void
.end method

.method public findUsableRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 4
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2568
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 2569
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    :cond_0
    :goto_0
    return v0

    .line 2574
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2575
    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[findUsableRenderer][setRendererAsReadyDongle]"

    invoke-static {v0, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2576
    goto :goto_0

    .line 2578
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsDefaultRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2579
    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[findUsableRenderer][setRendererAsDefaultRenderer]"

    invoke-static {v0, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2580
    goto :goto_0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4181
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    .line 4192
    :cond_0
    :goto_0
    return-object v1

    .line 4186
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 4187
    :catch_0
    move-exception v0

    .line 4189
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4158
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    .line 4169
    :cond_0
    :goto_0
    return-object v1

    .line 4163
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 4164
    :catch_0
    move-exception v0

    .line 4166
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "groupID"

    .prologue
    .line 4366
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4367
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getContentThumbnail : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4377
    :goto_0
    return-void

    .line 4372
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4373
    :catch_0
    move-exception v0

    .line 4375
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 6

    .prologue
    .line 4039
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4040
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v3, :cond_1

    .line 4041
    :cond_0
    const/4 v1, 0x0

    .line 4079
    :goto_0
    return v1

    .line 4043
    :cond_1
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 4044
    :cond_2
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] error state for getCurrentPosition(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4045
    const/16 v1, -0x3e9

    goto :goto_0

    .line 4048
    :cond_3
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    .line 4051
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] error state for getCurrentPosition(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4052
    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    goto/16 :goto_0

    .line 4055
    :cond_4
    const/4 v1, 0x0

    .line 4056
    .local v1, position:I
    const/4 v2, 0x0

    .line 4060
    .local v2, positionNegative:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-int v1, v3

    .line 4066
    :goto_1
    if-gez v1, :cond_5

    .line 4067
    const/4 v1, 0x0

    .line 4068
    const/4 v2, 0x1

    .line 4071
    :cond_5
    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    if-gt v3, v4, :cond_6

    .line 4072
    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    goto/16 :goto_0

    .line 4061
    :catch_0
    move-exception v0

    .line 4063
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 4074
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 4077
    if-nez v2, :cond_7

    move v3, v1

    :goto_2
    iput v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 4078
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4077
    :cond_7
    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    goto :goto_2
.end method

.method public getCurrentSessionCookie()I
    .locals 2

    .prologue
    .line 1741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1742
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method public getDMCControlItemInfo(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    .line 4541
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4542
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMCControlItemInfo : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4552
    :goto_0
    return-void

    .line 4547
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4548
    :catch_0
    move-exception v0

    .line 4550
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    .line 3963
    const/4 v1, -0x1

    .line 3965
    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    .line 3966
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "getDMCCurrentLocalPlayIndex : invalid service"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 3977
    .end local v1           #nIndex:I
    .local v2, nIndex:I
    :goto_0
    return v2

    .line 3971
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 3977
    .end local v1           #nIndex:I
    .restart local v2       #nIndex:I
    goto :goto_0

    .line 3972
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :catch_0
    move-exception v0

    .line 3974
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDMCVolumeControlSupport(ILjava/lang/String;)Z
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    .line 4116
    const/4 v0, 0x1

    .line 4117
    .local v0, bSupport:Z
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    .line 4118
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "getDMCVolumeControlSupport : invalid service"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 4129
    .end local v0           #bSupport:Z
    .local v1, bSupport:I
    :goto_0
    return v1

    .line 4123
    .end local v1           #bSupport:I
    .restart local v0       #bSupport:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 4129
    .restart local v1       #bSupport:I
    goto :goto_0

    .line 4124
    .end local v1           #bSupport:I
    :catch_0
    move-exception v2

    .line 4126
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    .line 4519
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4520
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMPContentItemDetails : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4530
    :goto_0
    return-void

    .line 4525
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4526
    :catch_0
    move-exception v0

    .line 4528
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDefaultRenderer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5024
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 4092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4093
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 4094
    :cond_0
    const/4 v0, 0x0

    .line 4102
    :goto_0
    return v0

    .line 4096
    :cond_1
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4098
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentPosition] error state for getPlayingPosition(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4099
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1900(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0

    .line 4102
    :cond_2
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1900(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public getErrorId()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4722
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 4723
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    :goto_0
    return v1

    .line 4728
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4729
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[getErrorReason] NoError"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4732
    :catch_0
    move-exception v0

    .line 4734
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4737
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    .line 4739
    .local v1, lastErrorId:I
    :try_start_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getLastErrorId(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 4744
    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorId] error ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4740
    :catch_1
    move-exception v0

    .line 4742
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4759
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 4760
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error state for getErrorReason(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4782
    :goto_0
    return-object v1

    .line 4765
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4766
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[getErrorReason] NoError "

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    const-string v1, "No errror."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4769
    :catch_0
    move-exception v0

    .line 4771
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4774
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, ""

    .line 4776
    .local v1, lastErrorReason:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getLastErrorReason(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 4781
    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4777
    :catch_1
    move-exception v0

    .line 4779
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getErrorRendererID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4692
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 4693
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorRendererID] error state for getErrorReason(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state for getErrorRendererID(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4708
    :goto_0
    return-object v1

    .line 4698
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4699
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[getErrorRendererID] NoError "

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4700
    const-string v1, "No errror."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4702
    :catch_0
    move-exception v0

    .line 4704
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4707
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorRendererID] error Renderer ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4708
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFilter()I
    .locals 1

    .prologue
    .line 4975
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method public getHtcDLNARendererDiscoverer()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    return-object v0
.end method

.method public getItemDetails()Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 4205
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[getItemDetails]"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4206
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 4210
    :cond_0
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getItemDetails] error state for getItemDetails(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4235
    :cond_1
    :goto_0
    return-object v0

    .line 4214
    :cond_2
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v3, :cond_1

    .line 4217
    const/4 v0, 0x0

    .line 4220
    .local v0, details:Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNAContentItemDetails;

    move-result-object v0

    .line 4221
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4222
    :try_start_1
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v3, :cond_3

    .line 4223
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v2

    .line 4224
    .local v2, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v2, :cond_3

    .line 4226
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getPlayingIndex()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v0}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/htcdlnainterface/DLNAContentItemDetails;)V

    .line 4229
    .end local v2           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4230
    :catch_0
    move-exception v1

    .line 4232
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirrorRenderer()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 5044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5046
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 5047
    :cond_0
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getRenderer] called in wrong state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5066
    :cond_1
    :goto_0
    return-object v2

    .line 5051
    :cond_2
    const/4 v1, 0x0

    .line 5055
    .local v1, rendererData:Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5061
    :goto_1
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getMirrorRenderer] rendererData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5063
    if-eqz v1, :cond_1

    .line 5064
    invoke-virtual {v1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5056
    :catch_0
    move-exception v0

    .line 5058
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlayingIndex()J
    .locals 8

    .prologue
    .line 3990
    const-wide/16 v1, -0x1

    .line 3991
    .local v1, index:J
    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .line 4003
    .end local v1           #index:J
    .local v3, index:J
    :goto_0
    return-wide v3

    .line 3995
    .end local v3           #index:J
    .restart local v1       #index:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4001
    :goto_1
    const-string v5, "HtcDLNAServiceManager "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPlayingIndex] index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 4003
    .end local v1           #index:J
    .restart local v3       #index:J
    goto :goto_0

    .line 3996
    .end local v3           #index:J
    .restart local v1       #index:J
    :catch_0
    move-exception v0

    .line 3998
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlaylistSize()J
    .locals 8

    .prologue
    .line 3935
    const-wide/16 v1, -0x1

    .line 3936
    .local v1, total:J
    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .line 3948
    .end local v1           #total:J
    .local v3, total:J
    :goto_0
    return-wide v3

    .line 3940
    .end local v3           #total:J
    .restart local v1       #total:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 3946
    :goto_1
    const-string v5, "HtcDLNAServiceManager "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPlaylistSize] total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 3948
    .end local v1           #total:J
    .restart local v3       #total:J
    goto :goto_0

    .line 3941
    .end local v3           #total:J
    .restart local v1       #total:J
    :catch_0
    move-exception v0

    .line 3943
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRenderer()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3396
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 3397
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRenderer] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 3409
    :cond_1
    :goto_0
    return-object v0

    .line 3401
    :cond_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 3402
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    goto :goto_0

    .line 3404
    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRenderer]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3406
    .local v0, currentRenderer:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_4
    move-object v0, v1

    .line 3409
    goto :goto_0
.end method

.method public getRendererData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNARendererData;
    .locals 5
    .parameter "rendererId"

    .prologue
    .line 3447
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 3448
    const/4 v1, 0x0

    .line 3463
    :goto_0
    return-object v1

    .line 3451
    :cond_0
    const/4 v1, 0x0

    .line 3455
    .local v1, rendererData:Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererIdData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3461
    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRendererData] rendererData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3456
    :catch_0
    move-exception v0

    .line 3458
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatState()I
    .locals 2

    .prologue
    .line 3779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerInfo.Repeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1500(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3780
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1500(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    return v0
.end method

.method public getServerThumbnail(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverID"

    .prologue
    .line 4320
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4321
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getServerThumbnail : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4331
    :goto_0
    return-void

    .line 4326
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4327
    :catch_0
    move-exception v0

    .line 4329
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 3919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3921
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getState] state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3922
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStateNameByStateCode(I)Ljava/lang/String;
    .locals 3
    .parameter "stateCode"

    .prologue
    .line 5141
    packed-switch p1, :pswitch_data_0

    .line 5161
    :pswitch_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state code ("

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

    .line 5144
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_PLAYING ("

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

    .line 5146
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_STOPPED ("

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

    .line 5148
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_PAUSED ("

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

    .line 5150
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_TRANSITIONING ("

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

    .line 5152
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_NO_MEDIA ("

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

    .line 5154
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_IDLE ("

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

    .line 5156
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_DISCONNECTED ("

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

    .line 5158
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_END ("

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

    .line 5141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getVolume()I
    .locals 3

    .prologue
    .line 3832
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3833
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVolume] error state for setVolume(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3834
    const/16 v0, -0x3e9

    .line 3838
    :goto_0
    return v0

    .line 3837
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3838
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1700(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    .line 4472
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4473
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "imageDownload : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4483
    :goto_0
    return-void

    .line 4478
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4479
    :catch_0
    move-exception v0

    .line 4481
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"

    .prologue
    const/4 v1, 0x0

    .line 4297
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4298
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "isBrowsingCmdDone: invalid service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4307
    :goto_0
    return v1

    .line 4303
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v2, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4304
    :catch_0
    move-exception v0

    .line 4306
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isDTCPSupport()Z
    .locals 2

    .prologue
    .line 2898
    const-string v1, "ro.service.dpsvr.enabled"

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2899
    .local v0, dpsvr:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2900
    const/4 v1, 0x1

    .line 2902
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDTCPSupport(JI[B)Z
    .locals 1
    .parameter "id"
    .parameter "size"
    .parameter "data"

    .prologue
    .line 2890
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPSupport()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4141
    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    .line 4142
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getSlideShowStatus()I

    move-result v3

    if-nez v3, :cond_1

    .line 4145
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 4142
    goto :goto_0

    .line 4144
    :cond_2
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v0

    .line 4145
    .local v0, state:I
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isShuffleEnabled()Z
    .locals 5

    .prologue
    .line 4584
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4585
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "isShuffleEnabled : invalid mService"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4586
    const/4 v1, 0x0

    .line 4598
    :goto_0
    return v1

    .line 4589
    :cond_0
    const/4 v1, 0x0

    .line 4592
    .local v1, shuffle:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isShuffleEnabled(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4593
    :catch_0
    move-exception v0

    .line 4595
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()I
    .locals 5

    .prologue
    .line 3573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3574
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3575
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[pause], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    const/16 v1, -0x3eb

    .line 3595
    :goto_0
    return v1

    .line 3579
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3580
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[pause] error state for pause(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3581
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3584
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[pause] Request pause"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_3

    .line 3587
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 3595
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3589
    :cond_3
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3590
    :catch_0
    move-exception v0

    .line 3592
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3496
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3497
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    const/16 v1, -0x3eb

    .line 3521
    :goto_0
    return v1

    .line 3501
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 3502
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] error state for play(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3506
    :cond_2
    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    if-eqz v1, :cond_3

    .line 3507
    invoke-direct {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3510
    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play] Request play"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_4

    .line 3513
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 3521
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3515
    :cond_4
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3516
    :catch_0
    move-exception v0

    .line 3518
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play(J)I
    .locals 4
    .parameter "index"

    .prologue
    .line 3541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3543
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3544
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    const/16 v1, -0x3eb

    .line 3562
    :goto_0
    return v1

    .line 3548
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 3549
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] error state for play(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3550
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3553
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] Request play @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->changePushPlaylistItem(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3562
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3557
    :catch_0
    move-exception v0

    .line 3559
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public playNext()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 3699
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3700
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playNext] null == mService || !mRendererCreated"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3701
    const/16 v1, -0x3eb

    .line 3729
    :goto_0
    return v1

    .line 3704
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3708
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[playNext] error status for playNext(), current status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3709
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3712
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playNext] Request next"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3716
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRepeatState()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 3718
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    .line 3729
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3722
    :cond_3
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3724
    :catch_0
    move-exception v0

    .line 3726
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public playPrevious()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 3654
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3655
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playPrevious] null == mService || !mRendererCreated"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3656
    const/16 v1, -0x3eb

    .line 3684
    :goto_0
    return v1

    .line 3659
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3663
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[playPrevious] error status for playPrevious(), current status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3667
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playPrevious] Request previous"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3671
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRepeatState()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 3673
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    .line 3684
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3677
    :cond_3
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3679
    :catch_0
    move-exception v0

    .line 3681
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "newIndex"
    .parameter "idList"

    .prologue
    .line 2214
    const/4 v0, 0x0

    .line 2215
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    .line 2216
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "reArrangePushPlaylist : invalid service"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 2226
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 2221
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 2226
    .restart local v1       #bRet:I
    goto :goto_0

    .line 2222
    .end local v1           #bRet:I
    :catch_0
    move-exception v2

    .line 2224
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public refreshRendererList()V
    .locals 3

    .prologue
    .line 4247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4248
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4259
    :goto_0
    return-void

    .line 4253
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 4254
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4255
    :catch_0
    move-exception v0

    .line 4257
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshServerList()V
    .locals 3

    .prologue
    .line 4271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4272
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4283
    :goto_0
    return-void

    .line 4277
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 4278
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4279
    :catch_0
    move-exception v0

    .line 4281
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()I
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2116
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2118
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[release] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    const/16 v2, -0x3e9

    .line 2186
    :goto_0
    return v2

    .line 2122
    :cond_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2125
    .local v0, currentState:I
    invoke-virtual {p0, v6, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2128
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 2131
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_2

    .line 2132
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 2133
    :cond_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->reset()V

    .line 2134
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2145
    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 2149
    :try_start_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2150
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2153
    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v2, :cond_5

    .line 2154
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 2157
    :goto_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2160
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2162
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2163
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->resumeMirror(Landroid/content/Context;)V

    .line 2166
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2167
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 2168
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2181
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnect()V

    .line 2184
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->cleanDataMember()V

    .line 2186
    const/16 v2, -0x3e8

    goto :goto_0

    .line 2136
    :catch_0
    move-exception v1

    .line 2138
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2140
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2156
    :cond_5
    :try_start_4
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 2169
    :catch_1
    move-exception v1

    .line 2171
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public reset()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1980
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 1981
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[reset] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const/16 v1, -0x3e9

    .line 2001
    :goto_0
    return v1

    .line 1985
    :cond_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1986
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1990
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[reset] call mService.destroyMediaController(mCookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRendererId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 1992
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    :goto_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2001
    const/16 v1, -0x3e8

    goto :goto_0

    .line 1993
    :catch_0
    move-exception v0

    .line 1995
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public runAsSlideShow()V
    .locals 0

    .prologue
    .line 5035
    return-void
.end method

.method public saveDefaultRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "rendererId"

    .prologue
    .line 5012
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 5013
    .local v0, result:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public seekTo(I)I
    .locals 6
    .parameter "timeSecs"

    .prologue
    .line 3741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3743
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3744
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seekTo] error state for seekTo(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3745
    const/16 v1, -0x3e9

    .line 3767
    :goto_0
    return v1

    .line 3748
    :cond_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    .line 3749
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[seekTo], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3753
    :cond_2
    if-gez p1, :cond_3

    .line 3754
    const/4 p1, 0x0

    .line 3756
    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seekTo] Request seekTo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    :try_start_0
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 3761
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    int-to-long v4, p1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3767
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3762
    :catch_0
    move-exception v0

    .line 3764
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setAVTransportURI(Ljava/lang/String;)I
    .locals 7
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    const/16 v0, -0x3ea

    .line 3178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3180
    if-nez p1, :cond_0

    .line 3181
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setAVTransportURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    :goto_0
    return v0

    .line 3185
    :cond_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    .line 3186
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setAVTransportURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3187
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3190
    :cond_2
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 3191
    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAVTransportURI] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3192
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3195
    :cond_4
    invoke-direct {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3196
    iput-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3198
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setAVTransportURI] path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    :try_start_0
    const-string v1, "rtsp://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3202
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "Not support rtsp streaming."

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3213
    :catch_0
    move-exception v6

    .line 3215
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3218
    .end local v6           #e:Landroid/os/RemoteException;
    :goto_1
    const/16 v0, -0x3e8

    goto/16 :goto_0

    .line 3206
    :cond_5
    :try_start_1
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3207
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3208
    :cond_6
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3209
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3211
    :cond_7
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setBrowseThumbSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    .line 4908
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4909
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setBrowseThumbSize invalid service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4918
    :goto_0
    return v1

    .line 4914
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setBrowseThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4915
    :catch_0
    move-exception v0

    .line 4917
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setClientSeekTo(I)V
    .locals 0
    .parameter "clientSeekTo"

    .prologue
    .line 1753
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 1754
    return-void
.end method

.method public setControllerStatusListener(Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1865
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1866
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setControllerStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const/16 v0, -0x3e9

    .line 1875
    :goto_0
    return v0

    .line 1869
    :cond_0
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 1870
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1871
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_1

    .line 1872
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNAControllerStatusListener(Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;)V

    .line 1874
    :cond_1
    monitor-exit v1

    .line 1875
    const/16 v0, -0x3e8

    goto :goto_0

    .line 1874
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDLNAServiceStatusListener(Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    .line 1888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1890
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1891
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDLNAServiceStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const/16 v0, -0x3e9

    .line 1896
    :goto_0
    return v0

    .line 1895
    :cond_0
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 1896
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setDMCThumbSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    .line 4864
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4865
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setDMCThumbSize invalid service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4874
    :goto_0
    return v1

    .line 4870
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4871
    :catch_0
    move-exception v0

    .line 4873
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDMPAlbumArtSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    .line 4886
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4887
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setDMPAlbumArtSize invalid service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4896
    :goto_0
    return v1

    .line 4892
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMPAlbumArtSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4893
    :catch_0
    move-exception v0

    .line 4895
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDTCPIPDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 3151
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3166
    :cond_0
    :goto_0
    return-void

    .line 3154
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDTCPIPDataSource] DLNAPushMediaInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3161
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3162
    :catch_0
    move-exception v0

    .line 3164
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource([II)I
    .locals 9
    .parameter "pushList"
    .parameter "startIndex"

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3299
    :cond_0
    const/16 v0, -0x3ea

    .line 3311
    :goto_0
    return v0

    .line 3300
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3301
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] pushList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3305
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1f40

    :goto_1
    move v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3311
    :goto_2
    const/16 v0, -0x3e8

    goto :goto_0

    .line 3305
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 3306
    :catch_0
    move-exception v8

    .line 3308
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3280
    :cond_0
    :goto_0
    return-void

    .line 3262
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3268
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3269
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] MediaFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getThumbFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3276
    :catch_0
    move-exception v6

    .line 3278
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3275
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle2(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 3065
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3081
    :cond_0
    :goto_0
    return-void

    .line 3068
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] DLNARemotePlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    invoke-direct {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3071
    iput-boolean v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3075
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->getServerID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 3076
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3077
    :catch_0
    move-exception v0

    .line 3079
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "serverID"
    .parameter "contentID"
    .parameter "containerID"

    .prologue
    const/4 v1, 0x0

    .line 3036
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3053
    :cond_0
    :goto_0
    return-void

    .line 3042
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3043
    iput-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3047
    :try_start_0
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 3048
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3049
    :catch_0
    move-exception v6

    .line 3051
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIPListSource(Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 3124
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3139
    :cond_0
    :goto_0
    return-void

    .line 3127
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPListSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    invoke-direct {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3130
    iput-boolean v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3134
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newInternetPushList(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3135
    :catch_0
    move-exception v0

    .line 3137
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIPSingleSource(Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 3095
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3110
    :cond_0
    :goto_0
    return-void

    .line 3098
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPSingleSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    invoke-direct {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3101
    iput-boolean v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3105
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3106
    :catch_0
    move-exception v0

    .line 3108
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMediaTypeFiler(I)I
    .locals 3
    .parameter "filter"

    .prologue
    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1799
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1800
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMediaTypeFiler] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const/16 v0, -0x3e9

    .line 1805
    :goto_0
    return v0

    .line 1803
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMediaTypeFiler] filter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 1805
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setOutputPath(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "path"

    .prologue
    .line 4848
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 4849
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setOutputPath(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4854
    :cond_0
    :goto_0
    return-void

    .line 4850
    :catch_0
    move-exception v0

    .line 4852
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRenderer(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I
    .locals 6
    .parameter "rendererId"
    .parameter "statusBarData"

    .prologue
    const/16 v2, -0x3ee

    .line 2448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2451
    if-nez p1, :cond_1

    const/16 v2, -0x3ea

    .line 2482
    :cond_0
    :goto_0
    return v2

    .line 2453
    :cond_1
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setRenderer] renderId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statusBarData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 2456
    :cond_2
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRenderer] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    const/16 v2, -0x3e9

    goto :goto_0

    .line 2460
    :cond_3
    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-direct {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->checkCookieValue(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 2461
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRenderer] Please set valid session cookie first."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    const/16 v2, -0x3ef

    goto :goto_0

    .line 2468
    :cond_4
    :try_start_0
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 2469
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->createMediaControllerAndSetControllerInfo(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    move-result v1

    .line 2470
    .local v1, result:I
    if-eq v1, v2, :cond_0

    .line 2472
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v3

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I
    invoke-static {v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1402(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2474
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->saveRenderer()Z

    .line 2476
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2482
    .end local v1           #result:I
    :goto_1
    const/16 v2, -0x3e8

    goto/16 :goto_0

    .line 2477
    :catch_0
    move-exception v0

    .line 2479
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setRendererAsDefaultRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 5
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x0

    .line 2817
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 2818
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    :cond_0
    :goto_0
    return v1

    .line 2823
    :cond_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    .line 2827
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v0

    .line 2828
    .local v0, renderID:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsDefaultRenderer][getDefaultRenderer] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2830
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRendererAsDefaultRenderer] no default renderer available"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2834
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsDefaultRenderer] statusBarData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, v0}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setRendererID(Ljava/lang/String;)V

    .line 2839
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, p1}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setStatusBarData(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V

    .line 2840
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 2841
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v2, Lcom/htc/medialinkhd/HtcDLNAServiceManager$5;

    invoke-direct {v2, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$5;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->startDiscover(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;)V

    .line 2865
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 1
    .parameter "statusBarData"

    .prologue
    .line 2616
    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v0

    return v0
.end method

.method public setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z
    .locals 1
    .parameter "statusBarData"
    .parameter "timeoutMs"

    .prologue
    .line 2650
    invoke-virtual {p0, p1, p2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    return v0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 1
    .parameter "statusBarData"

    .prologue
    .line 2685
    const/16 v0, 0x1388

    invoke-virtual {p0, p1, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    return v0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z
    .locals 5
    .parameter "statusBarData"
    .parameter "timeoutMs"

    .prologue
    const/4 v1, 0x0

    .line 2721
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 2722
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    :cond_0
    :goto_0
    return v1

    .line 2726
    :cond_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] statusBarData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 2734
    .local v0, info:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 2736
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2738
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 2739
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] WirelessDisplayHelper.getReadyDongleIP(mContext) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    :goto_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, p1}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setStatusBarData(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V

    .line 2751
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 2756
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v2, Lcom/htc/medialinkhd/HtcDLNAServiceManager$4;

    invoke-direct {v2, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$4;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->startDiscover(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;)V

    .line 2781
    const/4 v1, 0x1

    goto :goto_0

    .line 2740
    :cond_2
    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2743
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 2744
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] info.getInetAddress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2746
    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRendererAsReadyDongle] Can not get dongle IP!!"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setRendererStatusListener(Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    .line 1819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1822
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const/16 v0, -0x3e9

    .line 1833
    :goto_0
    return v0

    .line 1826
    :cond_0
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 1827
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1828
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_1

    .line 1829
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNARendererStatusListener(Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;)V

    .line 1831
    :cond_1
    monitor-exit v1

    .line 1833
    const/16 v0, -0x3e8

    goto :goto_0

    .line 1831
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeat(I)I
    .locals 4
    .parameter "repeatMode"

    .prologue
    .line 3326
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 3327
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeat] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3328
    const/16 v1, -0x3e9

    .line 3349
    :goto_0
    return v1

    .line 3331
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 3332
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeat] unknown repeat mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    const/16 v1, -0x3ea

    goto :goto_0

    .line 3336
    :cond_2
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_4

    .line 3337
    :cond_3
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3339
    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeat] Request setRepeat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3349
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3344
    :catch_0
    move-exception v0

    .line 3346
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setServerStatusListener(Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;)V
    .locals 2
    .parameter "serverListener"

    .prologue
    .line 1845
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 1846
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1847
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNAServerStatusListener(Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;)V

    .line 1850
    :cond_0
    monitor-exit v1

    .line 1851
    return-void

    .line 1850
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffle(Z)V
    .locals 4
    .parameter "shuffle"

    .prologue
    .line 4562
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4563
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "setShuffle : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4573
    :goto_0
    return-void

    .line 4568
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4569
    :catch_0
    move-exception v0

    .line 4571
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected declared-synchronized setState(IZZ)V
    .locals 7
    .parameter "newState"
    .parameter "fromMiddleLayer"
    .parameter "notifyUser"

    .prologue
    const/4 v6, 0x1

    .line 3852
    monitor-enter p0

    :try_start_0
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setState call stack:"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Step 1] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3854
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Step 2] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3855
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Step 3] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3857
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v1

    .line 3858
    .local v1, statePrev:I
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setState] >>> newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", statePrev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fromMiddleLayer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setState] <<< newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", statePrev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fromMiddleLayer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3865
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    .line 3868
    const/4 p1, 0x1

    .line 3869
    :try_start_1
    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    if-nez v2, :cond_0

    .line 3870
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3874
    :cond_0
    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-nez p1, :cond_2

    .line 3875
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 3878
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v2

    if-ne v2, v6, :cond_3

    .line 3879
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 3880
    const-string v2, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] mControllerInfo.setPlayState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v2, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    .line 3883
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3885
    :try_start_2
    invoke-direct {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v2

    if-ne v2, v6, :cond_5

    .line 3886
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3887
    :try_start_3
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_4

    .line 3888
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 3889
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_4

    .line 3890
    invoke-virtual {v0, p1}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V

    .line 3892
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3894
    :cond_5
    monitor-exit p0

    return-void

    .line 3883
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3852
    .end local v1           #statePrev:I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3892
    .restart local v1       #statePrev:I
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "link"
    .parameter "title"
    .parameter "thumbnail"

    .prologue
    const/4 v2, 0x0

    .line 3232
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 3247
    :cond_0
    :goto_0
    return-void

    .line 3235
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setStreamingDataSource] newPushPlaylist"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    invoke-direct {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3238
    iput-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3242
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3243
    :catch_0
    move-exception v6

    .line 3245
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVolume(I)I
    .locals 4
    .parameter "volume"

    .prologue
    .line 3794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3796
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 3797
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVolume] error state for setVolume(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3798
    const/16 v1, -0x3e9

    .line 3822
    :goto_0
    return v1

    .line 3801
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_3

    .line 3802
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setVolume], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3806
    :cond_3
    if-ltz p1, :cond_4

    const/16 v1, 0x64

    if-le p1, v1, :cond_5

    .line 3807
    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVolume], Invalid volume scalar("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), range is from 0 to 100."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3808
    const/16 v1, -0x3ea

    goto :goto_0

    .line 3811
    :cond_5
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVolume] Request volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3815
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v1, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1702(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 3816
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3822
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3817
    :catch_0
    move-exception v0

    .line 3819
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public stop()I
    .locals 7

    .prologue
    const/16 v1, -0x3e8

    const/4 v6, 0x1

    .line 3606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3609
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 3610
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stop] error state for stop(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    const/16 v1, -0x3e9

    .line 3639
    :goto_0
    return v1

    .line 3614
    :cond_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 3615
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[stop] AP call stop() in STATE_STOPPED, return RETURN_CODE_OK directly."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3619
    :cond_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_4

    .line 3620
    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[stop], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3625
    :cond_4
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[stop] Request stop"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3627
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v2, :cond_5

    .line 3628
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 3631
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3637
    :goto_2
    invoke-direct {p0, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    goto :goto_0

    .line 3630
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3632
    :catch_0
    move-exception v0

    .line 3634
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public stopAndReset()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2031
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v7, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2035
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stopAndReset] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    const/16 v1, -0x3e9

    .line 2071
    :goto_0
    return v1

    .line 2044
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2045
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2048
    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_3

    .line 2049
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 2052
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2055
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2057
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2058
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->resumeMirror(Landroid/content/Context;)V

    .line 2061
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2062
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 2063
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    :goto_2
    invoke-virtual {p0, v7, v5, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2071
    const/16 v1, -0x3e8

    goto :goto_0

    .line 2051
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2064
    :catch_0
    move-exception v0

    .line 2066
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public subscribeServer(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"

    .prologue
    .line 4932
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4933
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "subscribeServer : invalid servce"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4943
    :goto_0
    return-void

    .line 4938
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->subscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4939
    :catch_0
    move-exception v0

    .line 4941
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPlaylistNextItem(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    .line 4612
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4613
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "switchPlaylistPrevItem : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4623
    :goto_0
    return-void

    .line 4618
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4619
    :catch_0
    move-exception v0

    .line 4621
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPlaylistPrevItem(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    .line 4636
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4637
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "switchPlaylistPrevItem : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4647
    :goto_0
    return-void

    .line 4642
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4643
    :catch_0
    move-exception v0

    .line 4645
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unsubscribeServer(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"

    .prologue
    .line 4954
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4955
    const-string v1, "HtcDLNAServiceManager "

    const-string/jumbo v2, "unsubscribeServer : invalid servce"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4965
    :goto_0
    return-void

    .line 4960
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unsubscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4961
    :catch_0
    move-exception v0

    .line 4963
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
