.class final Lcom/android/server/HtcPowerSaver$GPS;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GPS"
.end annotation


# instance fields
.field private cr:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$GPS;->this$0:Lcom/android/server/HtcPowerSaver;

    const-string v2, "GPS"

    const-string v3, "powersaver_gps"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.GPS"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$GPS;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$GPS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$GPS;->cr:Landroid/content/ContentResolver;

    return-void
.end method

.method private isGPSOn()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$GPS;->cr:Landroid/content/ContentResolver;

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$GPS;->isGPSOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$GPS;->cr:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    return v2
.end method

.method protected restoreSystemSettings()I
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$GPS;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$GPS;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "power_gps_laststate"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$GPS;->isGPSOn()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$GPS;->cr:Landroid/content/ContentResolver;

    const-string v3, "gps"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    return v4
.end method

.method protected saveSystemSettings()I
    .locals 4

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$GPS;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$GPS;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "power_gps_laststate"

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$GPS;->isGPSOn()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
