.class public Lcom/android/server/HtcPowerSaver;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HtcPowerSaver$GPS;,
        Lcom/android/server/HtcPowerSaver$OnlyCDMA;,
        Lcom/android/server/HtcPowerSaver$ReduceFrameRate;,
        Lcom/android/server/HtcPowerSaver$ReduceCPU;,
        Lcom/android/server/HtcPowerSaver$Switch2GCall;,
        Lcom/android/server/HtcPowerSaver$DataConn;,
        Lcom/android/server/HtcPowerSaver$Wifi;,
        Lcom/android/server/HtcPowerSaver$HapticFeedback;,
        Lcom/android/server/HtcPowerSaver$Animations;,
        Lcom/android/server/HtcPowerSaver$ScreenTimeout;,
        Lcom/android/server/HtcPowerSaver$Brightness;,
        Lcom/android/server/HtcPowerSaver$Feature;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ON:Z = false

.field public static final HTC_POWERSAVER_OFF:Ljava/lang/String; = "com.android.server.htcpowersaver.action.OFF"

.field public static final HTC_POWERSAVER_ON:Ljava/lang/String; = "com.android.server.htcpowersaver.action.ON"

.field public static final KEY_ENABLE_POWERSAVER:Ljava/lang/String; = "powersaver_enable"

.field public static final KEY_SET_SCHEDULE:Ljava/lang/String; = "powersaver_set_schedule"

.field public static final KEY_STATUS:Ljava/lang/String; = "STATUS_POWER_SAVING_AUTO"

.field public static final KEY_USER_POWERSAVER_ENABLE:Ljava/lang/String; = "user_powersaver_enable"

.field public static final NORMAL_STATUS:I = 0x1f40

.field public static final POWERSAVER_STATUS:I = 0x1f41

.field public static final POWERSAVER_USER_ENABLED:I = 0x1f42

.field public static final STATUS_NORMAL:I = 0x1f40

.field public static final STATUS_NO_CHANGED:I = -0x1

.field public static final STATUS_POWER_SAVING_AUTO:I = 0x1f41

.field public static final STATUS_POWER_SAVING_MANUAL:I = 0x1f42

.field private static final TAG:Ljava/lang/String; = "HtcPowerSaver"

.field protected static final TAG_PREFIX:Ljava/lang/String; = "HtcPowerSaver-"


# instance fields
.field private final ACTION_PREFIX:Ljava/lang/String;

.field public final AUTOMODE_OFF:Ljava/lang/String;

.field public final AUTOMODE_ON:Ljava/lang/String;

.field private final DEFAULT_ENABLE:Z

.field private final DEFAULT_ENABLE_LEVEL:I

.field private final DEFAULT_USER_ENABLE:Z

.field private final KEY_POWERSAVER_SHARED:Ljava/lang/String;

.field private final SYSPROP_POWERSAVER_GAP:Ljava/lang/String;

.field private final SYSPROP_POWERSAVER_STATUS:Ljava/lang/String;

.field private ignoreNext:Z

.field isAutoOn:Z

.field private mAllowAuto:Z

.field private mAutoModeOn:Z

.field private mBatteryInfoUpdated:Z

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mBootNotify:Z

.field private mContext:Landroid/content/Context;

.field private mDisableAuto:Z

.field private mFeatureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/HtcPowerSaver$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBatteryLevel:I

.field private mLastBatteryStatus:I

.field private mLastPlugType:I

.field private mLastPlugged:Z

.field private mLowBatteryWarningLevels:[I

.field private mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

.field private mPlugType:I

.field private mPlugged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/HtcPowerSaver;->DEBUG_ON:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService$PMSInternalAPI;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.htc.intent.action.HtcPowerSaver."

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver;->ACTION_PREFIX:Ljava/lang/String;

    const-string v0, "com.htc.intent.action.HtcPowerSaver.AutoModeOn"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver;->AUTOMODE_ON:Ljava/lang/String;

    const-string v0, "com.htc.intent.action.HtcPowerSaver.AutoModeOff"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver;->AUTOMODE_OFF:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->isAutoOn:Z

    iput-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->ignoreNext:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver;->mAllowAuto:Z

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver;->DEFAULT_ENABLE:Z

    iput-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->DEFAULT_USER_ENABLE:Z

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/HtcPowerSaver;->DEFAULT_ENABLE_LEVEL:I

    const-string v0, "powersaver_shared"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver;->KEY_POWERSAVER_SHARED:Ljava/lang/String;

    const-string v0, "sys.psaver.stat"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver;->SYSPROP_POWERSAVER_STATUS:Ljava/lang/String;

    const-string v0, "sys.psaver.gap"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver;->SYSPROP_POWERSAVER_GAP:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    iput-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->mBatteryInfoUpdated:Z

    iput-object p1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->registerAllFeatures()V

    return-void

    nop

    nop

    :array_0
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$200(Lcom/android/server/HtcPowerSaver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/HtcPowerSaver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/HtcPowerSaver;->mBootNotify:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/HtcPowerSaver;)Lcom/android/server/PowerManagerService$PMSInternalAPI;
    .locals 1

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    return-object v0
.end method

.method private broadcastIntent(I)V
    .locals 5

    const-string v1, "com.android.server.htcpowersaver.action.OFF"

    const/16 v2, 0x1f41

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1f42

    if-ne p1, v2, :cond_1

    :cond_0
    const-string v1, "com.android.server.htcpowersaver.action.ON"

    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "HtcPowerSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastIntent: intentString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nowStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private entering()V
    .locals 4

    const-string v2, "HtcPowerSaver"

    const-string v3, "Entering Power Saver mode..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcPowerSaver$Feature;

    #calls: Lcom/android/server/HtcPowerSaver$Feature;->apply()Z
    invoke-static {v0}, Lcom/android/server/HtcPowerSaver$Feature;->access$000(Lcom/android/server/HtcPowerSaver$Feature;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAPS()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_autopowersaver_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getCurrentStatus()I
    .locals 5

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "STATUS_POWER_SAVING_AUTO"

    const/16 v4, 0x1f40

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :try_start_0
    const-string v3, "sys.psaver.stat"

    invoke-direct {p0, v2}, Lcom/android/server/HtcPowerSaver;->statusToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v3, "HtcPowerSaver"

    const-string v4, "getCurrentStatus: Unable to set SystemProperties: sys.psaver.stat"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDialogId(IIZ)I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p2, p1, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    :cond_1
    move v1, v2

    :goto_0
    const/16 v4, 0xf

    if-ge p2, v4, :cond_4

    :goto_1
    const/4 v0, -0x1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const/4 v0, 0x2

    :cond_2
    :goto_2
    return v0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    goto :goto_2
.end method

.method private getEnable()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "powersaver_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSchedule()I
    .locals 5

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->getAPS()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_autopowersaver_level"

    const/16 v4, 0x14

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :cond_0
    :try_start_0
    const-string v2, "sys.psaver.gap"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "HtcPowerSaver"

    const-string v3, "getSchedule: Unable to set SystemProperties: sys.psaver.gap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v3, "HtcPowerSaver"

    const-string v4, "Context is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    const-string v3, "com.android.settings"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v2, "powersaver_shared"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSettingsSharedPreferences: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStatus(IZ)I
    .locals 4

    const/16 v2, 0x1f42

    if-eqz p2, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/HtcPowerSaver;->switchStatus(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/HtcPowerSaver;->mBootNotify:Z

    if-eqz v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->entering()V

    :cond_0
    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->broadcastIntent(I)V

    return v0

    :cond_2
    const/16 v1, 0x1f40

    goto :goto_0
.end method

.method private isPSEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_powersaver_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private leaving()V
    .locals 4

    const-string v2, "HtcPowerSaver"

    const-string v3, "Leaving Power Saver mode..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcPowerSaver$Feature;

    #calls: Lcom/android/server/HtcPowerSaver$Feature;->restore()V
    invoke-static {v0}, Lcom/android/server/HtcPowerSaver$Feature;->access$100(Lcom/android/server/HtcPowerSaver$Feature;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyUser(II)V
    .locals 0

    return-void
.end method

.method private popDialog(I)V
    .locals 4

    if-lez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.powersaversetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "case"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "HtcPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popDialog: Send intent with case: dialogId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private popLowBatteryDialog(IIIZZ)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    array-length v1, v5

    if-nez p4, :cond_0

    if-ne p3, v4, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/android/server/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    aget v5, v5, v0

    if-gt p1, v5, :cond_3

    if-nez p5, :cond_2

    iget v5, p0, Lcom/android/server/HtcPowerSaver;->mLastBatteryLevel:I

    iget-object v6, p0, Lcom/android/server/HtcPowerSaver;->mLowBatteryWarningLevels:[I

    aget v6, v6, v0

    if-le v5, v6, :cond_3

    :cond_2
    move v2, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_0
.end method

.method private registerAllFeatures()V
    .locals 2

    new-instance v0, Lcom/android/server/HtcPowerSaver$GPS;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcPowerSaver$GPS;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    new-instance v0, Lcom/android/server/HtcPowerSaver$Sync;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcPowerSaver$Sync;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    new-instance v0, Lcom/android/server/HtcPowerSaver$DataConn;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcPowerSaver$DataConn;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    new-instance v0, Lcom/android/server/HtcPowerSaver$Switch2GCall;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcPowerSaver$Switch2GCall;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    new-instance v0, Lcom/android/server/HtcPowerSaver$Animations;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcPowerSaver$Animations;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    new-instance v0, Lcom/android/server/HtcPowerSaver$Bluetooth;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcPowerSaver$Bluetooth;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    new-instance v0, Lcom/android/server/HtcPowerSaver$Brightness;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcPowerSaver$Brightness;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    new-instance v0, Lcom/android/server/HtcPowerSaver$HapticFeedback;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcPowerSaver$HapticFeedback;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    new-instance v0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcPowerSaver$ScreenTimeout;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    new-instance v0, Lcom/android/server/HtcPowerSaver$Wifi;

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcPowerSaver$Wifi;-><init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver;->registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V

    return-void
.end method

.method private registerFeature(Lcom/android/server/HtcPowerSaver$Feature;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver;->mFeatureList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sendAutoMode(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "com.htc.intent.action.HtcPowerSaver.AutoModeOn"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "com.htc.intent.action.HtcPowerSaver.AutoModeOff"

    goto :goto_0
.end method

.method private setEnable(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "powersaver_enable"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setNotification(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method private setPSEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_powersaver_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v2, "sys.psaver.stat"

    invoke-direct {p0, p1}, Lcom/android/server/HtcPowerSaver;->statusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "STATUS_POWER_SAVING_AUTO"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :catch_0
    move-exception v1

    const-string v2, "HtcPowerSaver"

    const-string v3, "setStatus: Unable to set SystemProperties: sys.psaver.stat"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private statusToString(I)Ljava/lang/String;
    .locals 2

    const-string v0, "unknown"

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v0, "normal"

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->isAutoOn:Z

    if-eqz v1, :cond_0

    const-string v0, "auto"

    :goto_1
    goto :goto_0

    :cond_0
    const-string v0, "manual"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchStatus(I)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->getCurrentStatus()I

    move-result v0

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/HtcPowerSaver;->setStatus(I)V

    :goto_1
    return p1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->leaving()V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->entering()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateStatusLocked(IIZ)V
    .locals 15

    const-string v1, "HtcPowerSaver"

    const-string v2, ">> updateStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->getCurrentStatus()I

    move-result v14

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->getSchedule()I

    move-result v7

    if-lez v7, :cond_6

    const/4 v9, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver;->isPSEnabled()Z

    move-result v10

    const/4 v1, -0x1

    move/from16 v0, p1

    if-le v0, v1, :cond_7

    const/4 v8, 0x1

    :goto_1
    if-nez p3, :cond_0

    move/from16 v0, p1

    if-lt v0, v7, :cond_1

    :cond_0
    const/4 v9, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->mAllowAuto:Z

    iget-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->isAutoOn:Z

    if-eqz v1, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->isAutoOn:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/HtcPowerSaver;->setPSEnabled(Z)V

    :cond_1
    if-eqz v9, :cond_2

    iget-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->mAllowAuto:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->mAllowAuto:Z

    if-nez v10, :cond_2

    const/4 v10, 0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->isAutoOn:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/HtcPowerSaver;->setPSEnabled(Z)V

    :cond_2
    if-nez v8, :cond_3

    const/4 v10, 0x0

    :cond_3
    invoke-direct {p0, v14, v10}, Lcom/android/server/HtcPowerSaver;->handleStatus(IZ)I

    move-result v12

    const/4 v1, -0x1

    if-eq v12, v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->isAutoOn:Z

    if-eqz v1, :cond_8

    const-string v11, "auto"

    :goto_2
    const-string v1, "HtcPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PowerSaver: mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", plugged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v3, p0, Lcom/android/server/HtcPowerSaver;->mLastBatteryLevel:I

    iget-boolean v6, p0, Lcom/android/server/HtcPowerSaver;->mLastPlugged:Z

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/HtcPowerSaver;->popLowBatteryDialog(IIIZZ)Z

    move-result v13

    if-eqz v13, :cond_5

    move/from16 v0, p1

    invoke-direct {p0, v7, v0, v10}, Lcom/android/server/HtcPowerSaver;->getDialogId(IIZ)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/HtcPowerSaver;->popDialog(I)V

    :cond_5
    const-string v1, "HtcPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enableLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", popDialog="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", statusChangeTo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAuto="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcPowerSaver;->isAutoOn:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/HtcPowerSaver;->mLastBatteryStatus:I

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/HtcPowerSaver;->mLastBatteryLevel:I

    iget v1, p0, Lcom/android/server/HtcPowerSaver;->mPlugType:I

    iput v1, p0, Lcom/android/server/HtcPowerSaver;->mLastPlugType:I

    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver;->mLastPlugged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/HtcPowerSaver;->mBootNotify:Z

    const-string v1, "HtcPowerSaver"

    const-string v2, "<< updateStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_8
    const-string v11, "manual"

    goto/16 :goto_2
.end method


# virtual methods
.method public bootCompletedNotify()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver;->mBootNotify:Z

    iget-boolean v0, p0, Lcom/android/server/HtcPowerSaver;->mBatteryInfoUpdated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver;->check()V

    :cond_0
    return-void
.end method

.method public check()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPowerSaver"

    const-string v1, "System is not ready. Skipping PowerSaver update."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "HtcPowerSaver"

    const-string v1, "Checking..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/HtcPowerSaver;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/HtcPowerSaver;->mBatteryStatus:I

    iget-boolean v2, p0, Lcom/android/server/HtcPowerSaver;->mPlugged:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/HtcPowerSaver;->updateStatusLocked(IIZ)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBatteryInfo(Landroid/content/Intent;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, -0x1

    const-string v6, "HtcPowerSaver"

    const-string v7, "Recived battery changed intent."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "level"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "status"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v6, "plugged"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    and-int/lit8 v6, v4, 0x7

    if-eqz v6, :cond_0

    :goto_0
    const-string v6, "scale"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v8, :cond_1

    const-string v6, "HtcPowerSaver"

    const-string v7, "Not found BatteryManager.EXTRA_LEVEL. Call with wrong Intent?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    mul-int/lit8 v6, v1, 0x64

    div-int v1, v6, v0

    monitor-enter p0

    :try_start_0
    iget v6, p0, Lcom/android/server/HtcPowerSaver;->mBatteryStatus:I

    iput v6, p0, Lcom/android/server/HtcPowerSaver;->mLastBatteryStatus:I

    iget v6, p0, Lcom/android/server/HtcPowerSaver;->mBatteryLevel:I

    iput v6, p0, Lcom/android/server/HtcPowerSaver;->mLastBatteryLevel:I

    iget v6, p0, Lcom/android/server/HtcPowerSaver;->mPlugType:I

    iput v6, p0, Lcom/android/server/HtcPowerSaver;->mLastPlugType:I

    iget-boolean v6, p0, Lcom/android/server/HtcPowerSaver;->mPlugged:Z

    iput-boolean v6, p0, Lcom/android/server/HtcPowerSaver;->mLastPlugged:Z

    iput v2, p0, Lcom/android/server/HtcPowerSaver;->mBatteryStatus:I

    iput v1, p0, Lcom/android/server/HtcPowerSaver;->mBatteryLevel:I

    iput v4, p0, Lcom/android/server/HtcPowerSaver;->mPlugType:I

    iput-boolean v5, p0, Lcom/android/server/HtcPowerSaver;->mPlugged:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/HtcPowerSaver;->mBatteryInfoUpdated:Z

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
