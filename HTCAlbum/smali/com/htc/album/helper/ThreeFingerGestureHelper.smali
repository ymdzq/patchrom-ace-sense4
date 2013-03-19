.class public Lcom/htc/album/helper/ThreeFingerGestureHelper;
.super Ljava/lang/Object;
.source "ThreeFingerGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/ThreeFingerGestureHelper$1;,
        Lcom/htc/album/helper/ThreeFingerGestureHelper$ThreeFingerGestureBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ThreeFingerGestureHelper"

.field public static final THREE_FINGER_DOWN:I = 0x3

.field public static final THREE_FINGER_LEFT:I = 0x4

.field public static final THREE_FINGER_RIGHT:I = 0x2

.field public static final THREE_FINGER_UNIDENTIFIED:I = 0x0

.field public static final THREE_FINGER_UP:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/album/helper/ThreeFingerGestureLintener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "ThreeFingerGestureHelper"

    const-string v1, "[ThreeFingerGestureHelper]: init NG !"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "ThreeFingerGestureHelper"

    const-string v1, "[ThreeFingerGestureHelper]: Create"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;

    invoke-direct {p0}, Lcom/htc/album/helper/ThreeFingerGestureHelper;->registerReceiver()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/ThreeFingerGestureHelper;)Lcom/htc/album/helper/ThreeFingerGestureLintener;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;

    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v1, Lcom/htc/album/helper/ThreeFingerGestureHelper$ThreeFingerGestureBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/helper/ThreeFingerGestureHelper$ThreeFingerGestureBroadcastReceiver;-><init>(Lcom/htc/album/helper/ThreeFingerGestureHelper;Lcom/htc/album/helper/ThreeFingerGestureHelper$1;)V

    iput-object v1, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ThreeFingerGestureHelper"

    const-string v1, "[ThreeFingerGestureHelper]: release"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/album/helper/ThreeFingerGestureHelper;->unregisterReceiver()V

    iput-object v2, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mListener:Lcom/htc/album/helper/ThreeFingerGestureLintener;

    iput-object v2, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/htc/album/helper/ThreeFingerGestureHelper;->mContext:Landroid/content/Context;

    return-void
.end method
