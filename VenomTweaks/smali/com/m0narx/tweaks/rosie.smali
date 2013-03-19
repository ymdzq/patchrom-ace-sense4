.class public Lcom/m0narx/tweaks/rosie;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "rosie.java"


# static fields
.field private static final BG_ROSIE:I = 0x2

.field private static final CLOCK_APP:I = 0x3

.field private static final CLOCK_WIDGET:I = 0x1

.field private static final ITEM_CLOCK_APP:I = 0x0

.field private static final ITEM_WEATHER_APP:I = 0x1

.field private static final WEATHER_APP:I = 0x4


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public makeDialog(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    new-array v0, v1, [Z

    aput-boolean v3, v0, v3

    aput-boolean v3, v0, v4

    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_custom_clock_app"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    aput-boolean v4, v0, v3

    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_custom_weather_clock_app"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    aput-boolean v4, v0, v4

    :cond_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a012d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050010

    new-instance v3, Lcom/m0narx/tweaks/rosie$1;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/rosie$1;-><init>(Lcom/m0narx/tweaks/rosie;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a007e

    new-instance v3, Lcom/m0narx/tweaks/rosie$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/rosie$2;-><init>(Lcom/m0narx/tweaks/rosie;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "/data/system/background_appdrawer.png"

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->copyFileFromMediaURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_rosie_customimage"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "rosie_custombg"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/rosie;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    if-eq p2, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/rosie;->makeDialog(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_clock_app"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_clock_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_clock_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/rosie;->makeDialog(I)V

    goto :goto_0

    :pswitch_2
    if-eq p2, v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/rosie;->makeDialog(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_weather_clock_app"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_weather_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_custom_weather_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/rosie;->makeDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/rosie;->addPreferencesFromResource(I)V

    invoke-static {p0, v4}, Lcom/m0narx/tweaks/widgets/Misc;->SetupHeader(Landroid/content/Context;I)V

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/rosie;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;

    new-instance v0, Lcom/m0narx/tweaks/rosie$3;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/rosie$3;-><init>(Lcom/m0narx/tweaks/rosie;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/rosie;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    new-instance v0, Lcom/m0narx/tweaks/rosie$4;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/rosie$4;-><init>(Lcom/m0narx/tweaks/rosie;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "show_unlock_animation"

    const-string v2, "tweaks_show_unlock_animation"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "enable_landscape"

    const-string v2, "tweaks_enable_landscape"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "nav_trans"

    const-string v2, "tweaks_rosie_navbar_transp"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "rosie_ringscroll"

    const-string v2, "tweaks_rosie_ringscroll"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "rosie_custombg"

    const-string v2, "tweaks_rosie_customimage"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v2, "rosie_bgcolor"

    const-string v3, ""

    const-string v4, "colorNA"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/rosie;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "rosie_scrollwall"

    const-string v2, "tweaks_rosie_scrollwall"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->SetupHeader(Landroid/content/Context;I)V

    return-void
.end method
