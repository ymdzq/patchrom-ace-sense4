.class public Lcom/m0narx/tweaks/battery_settings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "battery_settings.java"


# static fields
.field public static mActivity:Landroid/app/Activity;


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private final PICKER_BATT_ICON:I

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private res:Landroid/content/res/Resources;

.field private tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/battery_settings;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/battery_settings;->PICKER_BATT_ICON:I

    return-void
.end method

.method private CheckPreferences()V
    .locals 2

    const-string v0, "batterybar_color_auto_charging"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "batterybar_color_auto_regular"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "batterybar_color_auto_medium"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "batterybar_color_auto_low"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "batterybar_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "batterybar_automatically_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "barheight"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "battery_bar_anim"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "show_miui"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "anim_pulse_type"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_bar_anim"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "anim_type"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_bar_anim"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "battery_color_auto_charging"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "battery_color_auto_regular"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "battery_color_auto_medium"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "battery_color_auto_low"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "battery_automatically_color_pref"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/battery_settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/battery_settings;->checkAutoMode()V

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/battery_settings;)Lcom/m0narx/tweaks/widgets/themeHelper;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    return-object v0
.end method

.method private checkAutoMode()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_batt_color_auto_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "battery_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "battery_bar_auto_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "batterybar_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "battery_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "batterybar_color_pref"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private checkBatteryIcon()V
    .locals 5

    const-string v3, "battery_icon"

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_systemui_theme_battery"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/m0narx/tweaks/battery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3, v2}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    iget-object v3, p0, Lcom/m0narx/tweaks/battery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    iget-object v4, p0, Lcom/m0narx/tweaks/battery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/m0narx/tweaks/widgets/themeHelper;->getCurrentDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "theme"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_systemui_theme_battery"

    const-string v2, "theme"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/m0narx/tweaks/battery_settings;->checkBatteryIcon()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a004f

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarText(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/battery_settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;

    new-instance v0, Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/widgets/themeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/battery_settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->res:Landroid/content/res/Resources;

    new-instance v0, Lcom/m0narx/tweaks/battery_settings$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/battery_settings$1;-><init>(Lcom/m0narx/tweaks/battery_settings;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    new-instance v0, Lcom/m0narx/tweaks/battery_settings$2;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/battery_settings$2;-><init>(Lcom/m0narx/tweaks/battery_settings;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "hide_battery"

    const-string v2, "tweaks_hide_battery"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "battery_text_style_pref"

    const-string v3, "tweaks_battery_text_style"

    const-string v4, "list"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "show_miui"

    const-string v2, "battery_bar_style"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "barheight"

    const-string v3, "battery_bar_height"

    const-string v4, "seekbar"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "barheight"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->res:Landroid/content/res/Resources;

    const v2, 0x7f0a0151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v1, "barheight"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v1, "battery_icon"

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "battery_automatically_color_pref"

    const-string v2, "tweaks_batt_color_auto_enabled"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "battery_color_pref"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "battery_color_auto_charging"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "battery_color_auto_regular"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "battery_color_auto_medium"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "battery_color_auto_low"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "batterybar_automatically_color_pref"

    const-string v2, "battery_bar_auto_color"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "batterybar_color_pref"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "batterybar_color_auto_charging"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "batterybar_color_auto_regular"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "batterybar_color_auto_medium"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "batterybar_color_auto_low"

    const-string v3, ""

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "anim_type"

    const-string v2, "anim_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "anim_pulse_type"

    const-string v2, "anim_pulse_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/battery_settings;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "battery_bar_anim"

    const-string v2, "battery_bar_anim_on"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/m0narx/tweaks/battery_settings;->CheckPreferences()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/battery_settings;->checkAutoMode()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/battery_settings;->checkBatteryIcon()V

    return-void
.end method
