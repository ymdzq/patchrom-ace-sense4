.class Lcom/android/server/HtcPowerSaver$Switch2GCall$1;
.super Ljava/lang/Thread;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HtcPowerSaver$Switch2GCall;->setPreferedNetworkMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/HtcPowerSaver$Switch2GCall;

.field private final synthetic val$Mode:I

.field private final synthetic val$svc:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver$Switch2GCall;Lcom/android/internal/telephony/ITelephony;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall$1;->this$1:Lcom/android/server/HtcPowerSaver$Switch2GCall;

    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall$1;->val$svc:Lcom/android/internal/telephony/ITelephony;

    iput p3, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall$1;->val$Mode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall$1;->val$svc:Lcom/android/internal/telephony/ITelephony;

    iget v2, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall$1;->val$Mode:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "m0narx_tweaks"

    const-string v2, "can\'t call setPreferedNetworkMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
