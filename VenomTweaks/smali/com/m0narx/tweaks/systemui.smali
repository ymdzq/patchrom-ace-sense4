.class public Lcom/m0narx/tweaks/systemui;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "systemui.java"


# static fields
.field private static final BG_STATUSBAR:I = 0x1

.field private static final BG_STATUSBARICON:I = 0x0

.field private static final DIALOG_ICONS:I = 0x1

.field private static final DIALOG_STATUSBAR_TRANS:I = 0x2

.field private static final ICON_ADB:I = 0x6

.field private static final ICON_ALARM:I = 0x0

.field private static final ICON_BLUETOOTH:I = 0x5

.field private static final ICON_GPS:I = 0x1

.field private static final ICON_HEADPHONES:I = 0x2

.field private static final ICON_SOUND:I = 0x3

.field private static final ICON_WIFI:I = 0x4


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private PrefOnSeekBarChangeListener:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/systemui;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/systemui;->checkQS()V

    return-void
.end method

.method private checkQS()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_hide_qs"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "super_quick_settings"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "quicklauncher_state"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "quicklauncher"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "super_quick_settings"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    const-string v0, "quicklauncher_state"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_auto_quick_settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_auto_quick_settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "super_quick_settings"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "quicklauncher"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "quicklauncher_state"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, ""

    const-string v1, ""

    const-string v0, ""

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/system/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    invoke-static {v4, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_0
    const-string v3, "tweaks_statusbar_customimage"

    const-string v1, "statusbar_custombg"

    const-string v0, "background_pulldown.png"

    goto :goto_1

    :pswitch_1
    const-string v3, "tweaks_status_icon"

    const-string v1, "statusbar_icon"

    const-string v0, "status_icon.png"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->addPreferencesFromResource(I)V

    invoke-static {p0, v7}, Lcom/m0narx/tweaks/widgets/Misc;->SetupHeader(Landroid/content/Context;I)V

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/systemui;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    new-instance v0, Lcom/m0narx/tweaks/systemui$4;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/systemui$4;-><init>(Lcom/m0narx/tweaks/systemui;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnSeekBarChangeListener:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    new-instance v0, Lcom/m0narx/tweaks/systemui$5;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/systemui$5;-><init>(Lcom/m0narx/tweaks/systemui;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    new-instance v0, Lcom/m0narx/tweaks/systemui$6;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/systemui$6;-><init>(Lcom/m0narx/tweaks/systemui;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "super_quick_settings"

    const-string v2, "tweaks_auto_quick_settings"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "quicklauncher_state"

    const-string v2, "tweaks_quicklauncher_state"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v1, "hide_noti"

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v1, "statusbar_trans"

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "h_icon_replace"

    const-string v3, "tweaks_statusbar_h_icon"

    const-string v4, "list"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "hide_date"

    const-string v2, "tweaks_statusbar_hide_date"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "statusbar_bgcolor_pref"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "statusbar_custombg"

    const-string v2, "tweaks_statusbar_customimage"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "statusbar_icon"

    const-string v2, "tweaks_status_icon"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "block_pulldown"

    const-string v2, "tweaks_block_pulldown"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "hide_qs"

    const-string v2, "tweaks_hide_qs"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "cm_brightness_control"

    const-string v2, "tweaks_cm_brightness_control"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/systemui;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "recentapps_style"

    const-string v2, "tweaks_recentapps_style"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "quicklauncher"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/systemui;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "quicklauncher_state"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/m0narx/tweaks/systemui;->checkQS()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    const v11, 0x7f080013

    const v10, 0x7f080012

    const/16 v9, 0xff

    const/4 v8, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :pswitch_0
    const/4 v2, 0x0

    const/4 v5, 0x7

    new-array v2, v5, [Z

    aput-boolean v8, v2, v8

    aput-boolean v8, v2, v7

    const/4 v5, 0x2

    aput-boolean v8, v2, v5

    const/4 v5, 0x3

    aput-boolean v8, v2, v5

    const/4 v5, 0x4

    aput-boolean v8, v2, v5

    const/4 v5, 0x5

    aput-boolean v8, v2, v5

    const/4 v5, 0x6

    aput-boolean v8, v2, v5

    iget-object v5, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_show_alarm_icon"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    aput-boolean v7, v2, v8

    :cond_0
    iget-object v5, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_show_gps_icon"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    aput-boolean v7, v2, v7

    :cond_1
    iget-object v5, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_show_headset_icon"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    aput-boolean v7, v2, v5

    :cond_2
    iget-object v5, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_show_volume_icons"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x3

    aput-boolean v7, v2, v5

    :cond_3
    iget-object v5, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_show_wifi_icon"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x4

    aput-boolean v7, v2, v5

    :cond_4
    iget-object v5, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_show_bluetooth_icon"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x5

    aput-boolean v7, v2, v5

    :cond_5
    iget-object v5, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_show_adb_icon"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x6

    aput-boolean v7, v2, v5

    :cond_6
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x7f02

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a005d

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f05002b

    new-instance v7, Lcom/m0narx/tweaks/systemui$1;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/systemui$1;-><init>(Lcom/m0narx/tweaks/systemui;)V

    invoke-virtual {v5, v6, v2, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a007e

    new-instance v7, Lcom/m0narx/tweaks/systemui$2;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/systemui$2;-><init>(Lcom/m0narx/tweaks/systemui;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_1
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/systemui;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_statusbar_transp_home"

    const/16 v7, 0x66

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_statusbar_transp_app"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSeekBar;

    iget-object v6, p0, Lcom/m0narx/tweaks/systemui;->PrefOnSeekBarChangeListener:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSeekBar;

    iget-object v6, p0, Lcom/m0narx/tweaks/systemui;->PrefOnSeekBarChangeListener:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x7f02

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00c0

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a007e

    new-instance v7, Lcom/m0narx/tweaks/systemui$3;

    invoke-direct {v7, p0}, Lcom/m0narx/tweaks/systemui$3;-><init>(Lcom/m0narx/tweaks/systemui;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->SetupHeader(Landroid/content/Context;I)V

    return-void
.end method
