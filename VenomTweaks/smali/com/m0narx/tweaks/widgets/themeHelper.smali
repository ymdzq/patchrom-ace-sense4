.class public Lcom/m0narx/tweaks/widgets/themeHelper;
.super Ljava/lang/Object;
.source "themeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;
    }
.end annotation


# instance fields
.field public final RES_ALARM:I

.field public final RES_ALL:I

.field public final RES_BATTERY:I

.field public final RES_BLUETOOTH:I

.field public final RES_DATA:I

.field public final RES_EQS:I

.field public final RES_GPS:I

.field public final RES_HEADSET:I

.field public final RES_HEQS:I

.field public final RES_SIGNAL:I

.field public final RES_SYNC:I

.field public final RES_VOLUME:I

.field public final RES_WIFI:I

.field private mContext:Landroid/content/Context;

.field private sAlarm:Ljava/lang/String;

.field private sBluetooth:Ljava/lang/String;

.field private sData:Ljava/lang/String;

.field private sEQS:Ljava/lang/String;

.field private sGps:Ljava/lang/String;

.field private sHEQS:Ljava/lang/String;

.field private sHeadset:Ljava/lang/String;

.field private sSignal:Ljava/lang/String;

.field private sSync:Ljava/lang/String;

.field private sVolume:Ljava/lang/String;

.field private sWifi:Ljava/lang/String;

.field private systemuiBatt:Ljava/lang/String;

.field private systemuiPackage:Ljava/lang/String;

.field private tAlarm:Ljava/lang/String;

.field private tBluetooth:Ljava/lang/String;

.field private tData:Ljava/lang/String;

.field private tEQS:Ljava/lang/String;

.field private tGps:Ljava/lang/String;

.field private tHEQS:Ljava/lang/String;

.field private tHeadset:Ljava/lang/String;

.field private tSignal:Ljava/lang/String;

.field private tSync:Ljava/lang/String;

.field private tVolume:Ljava/lang/String;

.field private tWifi:Ljava/lang/String;

.field private themeBatt:Ljava/lang/String;

.field private themePkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->systemuiPackage:Ljava/lang/String;

    const-string v0, "venom.systemui.theme."

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->themePkg:Ljava/lang/String;

    const-string v0, "stat_sys_battery"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->systemuiBatt:Ljava/lang/String;

    const-string v0, "battery"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->themeBatt:Ljava/lang/String;

    const-string v0, "stat_sys_wifi_signal_3"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sWifi:Ljava/lang/String;

    const-string v0, "wifi"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tWifi:Ljava/lang/String;

    const-string v0, "stat_sys_5signal_3"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sSignal:Ljava/lang/String;

    const-string v0, "signal"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tSignal:Ljava/lang/String;

    const-string v0, "stat_sys_gps_on"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sGps:Ljava/lang/String;

    const-string v0, "gps"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tGps:Ljava/lang/String;

    const-string v0, "stat_sys_data_bluetooth_connected"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sBluetooth:Ljava/lang/String;

    const-string v0, "bluetooth"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tBluetooth:Ljava/lang/String;

    const-string v0, "stat_notify_alarm"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sAlarm:Ljava/lang/String;

    const-string v0, "alarm"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tAlarm:Ljava/lang/String;

    const-string v0, "stat_sys_headphones"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sHeadset:Ljava/lang/String;

    const-string v0, "headset"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tHeadset:Ljava/lang/String;

    const-string v0, "stat_sys_sync"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sSync:Ljava/lang/String;

    const-string v0, "sync"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tSync:Ljava/lang/String;

    const-string v0, "stat_sys_ringer_silent"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sVolume:Ljava/lang/String;

    const-string v0, "volume"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tVolume:Ljava/lang/String;

    const-string v0, "stat_sys_data_inandout_h"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sData:Ljava/lang/String;

    const-string v0, "data"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tData:Ljava/lang/String;

    const-string v0, "eqs_tweaks_icon"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sEQS:Ljava/lang/String;

    const-string v0, "eqs_tweaks_icon"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tEQS:Ljava/lang/String;

    const-string v0, "stat_tweaks"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sHEQS:Ljava/lang/String;

    const-string v0, "stat_tweaks"

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tHEQS:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_ALL:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_BATTERY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_WIFI:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_SIGNAL:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_GPS:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_BLUETOOTH:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_ALARM:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_HEADSET:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_SYNC:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_VOLUME:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_DATA:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_EQS:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->RES_HEQS:I

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCurrentDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->themePkg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getResNameByID(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v1, ""

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->systemuiPackage:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getResNameByID(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getResNameByID(IZ)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->systemuiBatt:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->themeBatt:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sWifi:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tWifi:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sSignal:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tSignal:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sGps:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tGps:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sBluetooth:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tBluetooth:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sAlarm:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tAlarm:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sHeadset:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tHeadset:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sSync:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tSync:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sVolume:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tVolume:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sData:Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tData:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sEQS:Ljava/lang/String;

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tEQS:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->sHEQS:Ljava/lang/String;

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->tHEQS:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "drawable"

    invoke-virtual {v1, p2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getThemeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v3, ""

    if-eq p1, v3, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->themePkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "theme_name"

    const-string v4, "string"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->themePkg:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :cond_0
    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a00f1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getThemes(I)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;",
            ">;"
        }
    .end annotation

    const/4 v12, -0x1

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v8, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;-><init>(Lcom/m0narx/tweaks/widgets/themeHelper;)V

    if-ne p1, v12, :cond_0

    const v8, 0x7f02001a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    const-string v8, ""

    iput-object v8, v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->packageName:Ljava/lang/String;

    const-string v8, ""

    iput-object v8, v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->themeName:Ljava/lang/String;

    const v8, 0x7f0a00f1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_1

    return-object v7

    :cond_0
    iget-object v8, p0, Lcom/m0narx/tweaks/widgets/themeHelper;->systemuiPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v11}, Lcom/m0narx/tweaks/widgets/themeHelper;->getResNameByID(IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "venom.systemui.theme."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :try_start_0
    new-instance v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;-><init>(Lcom/m0narx/tweaks/widgets/themeHelper;)V

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->title:Ljava/lang/CharSequence;

    if-ne p1, v12, :cond_4

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_2
    iget-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "venom.systemui.theme."

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->themeName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9}, Lcom/m0narx/tweaks/widgets/themeHelper;->getResNameByID(IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v11, :cond_5

    const/4 v8, 0x2

    if-ne p1, v8, :cond_6

    :cond_5
    iget-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_6
    if-nez p1, :cond_7

    iget-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_7
    const/16 v8, 0x9

    if-ne p1, v8, :cond_2

    iget-object v8, v6, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_3
.end method

.method public isThemeContainResource(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "venom.systemui.theme."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v1}, Lcom/m0narx/tweaks/widgets/themeHelper;->getResNameByID(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
