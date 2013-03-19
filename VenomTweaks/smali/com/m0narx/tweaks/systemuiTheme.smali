.class public Lcom/m0narx/tweaks/systemuiTheme;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "systemuiTheme.java"


# static fields
.field public static mActivity:Landroid/app/Activity;


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private final PICKER_ALARM_ICON:I

.field private final PICKER_BATT_ICON:I

.field private final PICKER_BLUETOOTH_ICON:I

.field private final PICKER_DATA_ICON:I

.field private final PICKER_EQS_ICON:I

.field private final PICKER_GPS_ICON:I

.field private final PICKER_HEADSET_ICON:I

.field private final PICKER_HEQS_ICON:I

.field private final PICKER_SIGNAL_ICON:I

.field private final PICKER_SYNC_ICON:I

.field private final PICKER_THEME:I

.field private final PICKER_VOLUME_ICON:I

.field private final PICKER_WIFI_ICON:I

.field private PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/systemuiTheme;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_THEME:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_BATT_ICON:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_WIFI_ICON:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_SIGNAL_ICON:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_GPS_ICON:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_BLUETOOTH_ICON:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_ALARM_ICON:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_HEADSET_ICON:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_SYNC_ICON:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_VOLUME_ICON:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_DATA_ICON:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_EQS_ICON:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->PICKER_HEQS_ICON:I

    return-void
.end method

.method private ApplyTheme(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "theme"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/m0narx/tweaks/systemuiTheme;->onActivityResult(IILandroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V

    return-void
.end method

.method private checkAllIcons()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const-string v0, "battery_icon"

    const-string v1, "tweaks_systemui_theme_battery"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "signal_icon"

    const-string v1, "tweaks_systemui_theme_signal"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "wifi_icon"

    const-string v1, "tweaks_systemui_theme_wifi"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "gps_icon"

    const-string v1, "tweaks_systemui_theme_gps"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "bluetooth_icon"

    const-string v1, "tweaks_systemui_theme_bluetooth"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1, v5, v4}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "alarm_icon"

    const-string v1, "tweaks_systemui_theme_alarm"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "headset_icon"

    const-string v1, "tweaks_systemui_theme_headset"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "sync_icon"

    const-string v1, "tweaks_systemui_theme_sync"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "volume_icon"

    const-string v1, "tweaks_systemui_theme_volume"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "data_icon"

    const-string v1, "tweaks_systemui_theme_data"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    const/16 v3, 0x1c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "eqs_icons"

    const-string v1, "tweaks_systemui_theme_eqs"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v0, "heqs_icons"

    const-string v1, "tweaks_systemui_theme_heqs"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private checkIcon(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/systemuiTheme;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    invoke-static {v3, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    iget-object v3, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3, v2, p3}, Lcom/m0narx/tweaks/widgets/themeHelper;->getCurrentDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private chooseTheme(III)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "filter"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Lcom/m0narx/tweaks/systemuiTheme;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const-string v0, "aaa"

    const-string v1, "wrong result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "theme"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "aaa"

    const-string v1, "no data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_battery"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "battery_icon"

    const-string v1, "tweaks_systemui_theme_battery"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x32

    invoke-direct {p0, v0, v1, v5, v2}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :sswitch_1
    const-string v0, "theme"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/systemuiTheme;->ApplyTheme(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_wifi"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "wifi_icon"

    const-string v1, "tweaks_systemui_theme_wifi"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v6}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_signal"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "signal_icon"

    const-string v1, "tweaks_systemui_theme_signal"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1, v6, v4}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v7}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_gps"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "gps_icon"

    const-string v1, "tweaks_systemui_theme_gps"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1, v7, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_bluetooth"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "bluetooth_icon"

    const-string v1, "tweaks_systemui_theme_bluetooth"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_alarm"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "alarm_icon"

    const-string v1, "tweaks_systemui_theme_alarm"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_headset"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "headset_icon"

    const-string v1, "tweaks_systemui_theme_headset"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_sync"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "sync_icon"

    const-string v1, "tweaks_systemui_theme_sync"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_volume"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "volume_icon"

    const-string v1, "tweaks_systemui_theme_volume"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_data"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "data_icon"

    const-string v1, "tweaks_systemui_theme_data"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    const/16 v3, 0x1c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_eqs"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "eqs_icons"

    const-string v1, "tweaks_systemui_theme_eqs"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    const-string v1, "theme"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->isThemeContainResource(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_heqs"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "heqs_icons"

    const-string v1, "tweaks_systemui_theme_heqs"

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/systemuiTheme;->checkIcon(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0a00fc

    invoke-static {p0, v2}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarText(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    const v2, 0x7f04000f

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/systemuiTheme;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/systemuiTheme;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/widgets/themeHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    new-instance v2, Lcom/m0narx/tweaks/systemuiTheme$1;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/systemuiTheme$1;-><init>(Lcom/m0narx/tweaks/systemuiTheme;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setRightDividerEnabled(Z)V

    new-instance v1, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    new-instance v2, Lcom/m0narx/tweaks/systemuiTheme$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/systemuiTheme$2;-><init>(Lcom/m0narx/tweaks/systemuiTheme;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    new-instance v1, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    new-instance v2, Lcom/m0narx/tweaks/systemuiTheme$3;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/systemuiTheme$3;-><init>(Lcom/m0narx/tweaks/systemuiTheme;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "apply_theme"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "battery_icon"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "signal_icon"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "wifi_icon"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "gps_icon"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "bluetooth_icon"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "alarm_icon"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "headset_icon"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "sync_icon"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "volume_icon"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "data_icon"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "eqs_icons"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/systemuiTheme;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v3, "heqs_icons"

    invoke-static {p0, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/m0narx/tweaks/systemuiTheme;->checkAllIcons()V

    return-void
.end method
