.class final Lcom/android/server/HtcPowerSaver$Switch2GCall;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Switch2GCall"
.end annotation


# instance fields
.field private final MODE_2G:I

.field private final MODE_3G:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->this$0:Lcom/android/server/HtcPowerSaver;

    const-string v2, "Switch2GCall"

    const-string v3, "powersaver_gsm"

    const-string v5, "sys.psaver.gsm"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iput v4, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->MODE_2G:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->MODE_3G:I

    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPrefferedNetworkMode()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "m0narx_tweaks"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private setPreferedNetworkMode(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Switch2GCall;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/HtcPowerSaver$Switch2GCall$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/HtcPowerSaver$Switch2GCall$1;-><init>(Lcom/android/server/HtcPowerSaver$Switch2GCall;Lcom/android/internal/telephony/ITelephony;I)V

    invoke-virtual {v1}, Lcom/android/server/HtcPowerSaver$Switch2GCall$1;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Switch2GCall;->getPrefferedNetworkMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/HtcPowerSaver$Switch2GCall;->setPreferedNetworkMode(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected restoreSystemSettings()I
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "power_gsm_laststate"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Switch2GCall;->getPrefferedNetworkMode()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$Switch2GCall;->setPreferedNetworkMode(I)V

    :cond_0
    return v4
.end method

.method protected saveSystemSettings()I
    .locals 4

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "power_gsm_laststate"

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Switch2GCall;->getPrefferedNetworkMode()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
