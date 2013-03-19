.class final Lcom/android/server/HtcPowerSaver$DataConn;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataConn"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$DataConn;->this$0:Lcom/android/server/HtcPowerSaver;

    const-string v2, "DataConn"

    const-string v3, "powersaver_dataconnection"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.dconn"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$DataConn;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isDataOn()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$DataConn;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private setDataState(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$DataConn;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$DataConn;->isDataOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/HtcPowerSaver$DataConn;->setDataState(Z)V

    :cond_0
    return v1
.end method

.method protected restoreSystemSettings()I
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$DataConn;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$DataConn;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "power_dataconn_laststate"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$DataConn;->isDataOn()Z

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$DataConn;->setDataState(Z)V

    :cond_0
    return v4
.end method

.method protected saveSystemSettings()I
    .locals 4

    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$DataConn;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$DataConn;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "power_dataconn_laststate"

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$DataConn;->isDataOn()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
