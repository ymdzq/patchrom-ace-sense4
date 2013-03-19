.class public Lcom/m0narx/tweaks/gestures;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "gestures.java"


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private final GESTURE_DOWN:I

.field private final GESTURE_LEFT:I

.field private final GESTURE_RIGHT:I

.field private final GESTURE_UP:I

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/gestures;->GESTURE_UP:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/m0narx/tweaks/gestures;->GESTURE_RIGHT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/m0narx/tweaks/gestures;->GESTURE_DOWN:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/m0narx/tweaks/gestures;->GESTURE_LEFT:I

    return-void
.end method

.method private CheckPreferences()V
    .locals 2

    const-string v0, "gesture_up"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "gesture_left"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "gesture_down"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    const-string v0, "gesture_right"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_gestures"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/gestures;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_up"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_up_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_up_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "gesture_up"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_down"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_down_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_down_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "gesture_down"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_left"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_left_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_left_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "gesture_left"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_right"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_right_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_gesture_right_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "gesture_right"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/gestures;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a00f4

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarText(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/gestures;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/gestures;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;

    new-instance v0, Lcom/m0narx/tweaks/gestures$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/gestures$1;-><init>(Lcom/m0narx/tweaks/gestures;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/gestures;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "enable_gestures"

    const-string v2, "htc_gestures_enabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "gesture_up"

    const-string v2, "tweaks_gesture_up"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "gesture_down"

    const-string v2, "tweaks_gesture_down"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "gesture_left"

    const-string v2, "tweaks_gesture_left"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/gestures;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "gesture_right"

    const-string v2, "tweaks_gesture_right"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/m0narx/tweaks/gestures;->CheckPreferences()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->SetupHeader(Landroid/content/Context;I)V

    return-void
.end method
