.class public Lcom/m0narx/tweaks/lockscreen;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "lockscreen.java"


# static fields
.field private static final ACTION_CUSTOM_APP:I = 0x4

.field private static final PICKER_GET_GESTURE_FROMBACK:I = 0x2

.field private static final PICKER_GET_GESTURE_FROMMENU:I = 0x1

.field private static final PICKER_GET_LPHOME:I


# instance fields
.field private final ACTION_CUSTOM_APP_LS:I

.field private Cr:Landroid/content/ContentResolver;

.field final DIALOG_DATE_COMPONENTS:I

.field final DIALOG_UNLOCK_BUTTONS:I

.field final HIDE_AMPM:I

.field final HIDE_DATE:I

.field final HIDE_TIME:I

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private final S2WFiles:[Ljava/lang/String;

.field final UNLOCK_BACK:I

.field final UNLOCK_HOME:I

.field final UNLOCK_MENU:I

.field final UNLOCK_SEARCH:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    const/16 v0, 0x65

    iput v0, p0, Lcom/m0narx/tweaks/lockscreen;->DIALOG_DATE_COMPONENTS:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/m0narx/tweaks/lockscreen;->DIALOG_UNLOCK_BUTTONS:I

    iput v3, p0, Lcom/m0narx/tweaks/lockscreen;->HIDE_DATE:I

    iput v2, p0, Lcom/m0narx/tweaks/lockscreen;->HIDE_TIME:I

    iput v1, p0, Lcom/m0narx/tweaks/lockscreen;->HIDE_AMPM:I

    iput v3, p0, Lcom/m0narx/tweaks/lockscreen;->UNLOCK_HOME:I

    iput v2, p0, Lcom/m0narx/tweaks/lockscreen;->UNLOCK_MENU:I

    iput v1, p0, Lcom/m0narx/tweaks/lockscreen;->UNLOCK_BACK:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/m0narx/tweaks/lockscreen;->UNLOCK_SEARCH:I

    iput v2, p0, Lcom/m0narx/tweaks/lockscreen;->ACTION_CUSTOM_APP_LS:I

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "/sys/android_touch/sweep2wake/s2w_switch"

    aput-object v1, v0, v3

    const-string v1, "/sys/android_touch/sweep2wake"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->S2WFiles:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/lockscreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->checkLockscreenStyle()V

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/lockscreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->checkOpName()V

    return-void
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/lockscreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->checkSlide2Unlock()V

    return-void
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/lockscreen;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->getS2WFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkLockscreenStyle()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_lockscreen_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "lockscreen_caption"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "lockscreen_hide_opname"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "lockscreen_hide_datetime"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "shortcuts"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "lockscreen_caption"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "lockscreen_hide_opname"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "lockscreen_hide_datetime"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v0, "shortcuts"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkOpName()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_lockscreen_hide_opname"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "lockscreen_caption"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "lockscreen_caption"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkSlide2Unlock()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_slide_unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "unlock_buttons"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "unlock_buttons"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkSweep2Wake()V
    .locals 2

    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->getS2WFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sweep_wake"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getS2WFile()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->S2WFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const-string v2, ""

    :goto_1
    return-object v2

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->S2WFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen;->S2WFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_longpress_home_ls"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_longpress_home_ls_package"

    const-string v2, "package"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_longpress_home_ls_activity"

    const-string v2, "activity"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "longress_home_ls"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->addPreferencesFromResource(I)V

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->SetupHeader(Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/lockscreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    new-instance v0, Lcom/m0narx/tweaks/lockscreen$5;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/lockscreen$5;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    new-instance v0, Lcom/m0narx/tweaks/lockscreen$6;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/lockscreen$6;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "lockscreen_style"

    const-string v2, "tweaks_lockscreen_style"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "lockscreen_caption"

    const-string v2, "tweaks_lockscreen_caption"

    const-string v3, ""

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "lockscreen_hide_opname"

    const-string v2, "tweaks_lockscreen_hide_opname"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v1, "lockscreen_hide_datetime"

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "use_media"

    const-string v2, "tweaks_use_media"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "disable_volkeys_on_ls"

    const-string v2, "tweaks_disable_volkeys_on_ls"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "longress_home_ls"

    const-string v2, "tweaks_longpress_home_ls"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "unlock_slide"

    const-string v2, "tweaks_slide_unlock"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "aosp_call_unlock"

    const-string v2, "tweaks_aosp_call_unlock"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "sweep_wake"

    const-string v2, "tweaks_sweep_wake"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v1, "unlock_buttons"

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    const-string v0, "aosp_call_unlock"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/lockscreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "lockscreen_style"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->checkSlide2Unlock()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->checkLockscreenStyle()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->checkOpName()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/lockscreen;->checkSweep2Wake()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/high16 v7, 0x7f02

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    new-array v0, v6, [Z

    aput-boolean v3, v0, v3

    aput-boolean v3, v0, v4

    aput-boolean v3, v0, v5

    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_lockscreen_hide_date"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    aput-boolean v4, v0, v3

    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_lockscreen_hide_time"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    aput-boolean v4, v0, v4

    :cond_1
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_lockscreen_hide_ampm"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    aput-boolean v4, v0, v5

    :cond_2
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0094

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050029

    new-instance v3, Lcom/m0narx/tweaks/lockscreen$1;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/lockscreen$1;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a007e

    new-instance v3, Lcom/m0narx/tweaks/lockscreen$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/lockscreen$2;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x4

    new-array v0, v1, [Z

    aput-boolean v3, v0, v3

    aput-boolean v3, v0, v4

    aput-boolean v3, v0, v5

    aput-boolean v3, v0, v6

    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_home_unlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    aput-boolean v4, v0, v3

    :cond_3
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_menu_unlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    aput-boolean v4, v0, v4

    :cond_4
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_back_unlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    aput-boolean v4, v0, v5

    :cond_5
    iget-object v1, p0, Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;

    const-string v2, "tweaks_search_unlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_6

    aput-boolean v4, v0, v6

    :cond_6
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050013

    new-instance v3, Lcom/m0narx/tweaks/lockscreen$3;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/lockscreen$3;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a007e

    new-instance v3, Lcom/m0narx/tweaks/lockscreen$4;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/lockscreen$4;-><init>(Lcom/m0narx/tweaks/lockscreen;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->SetupHeader(Landroid/content/Context;I)V

    return-void
.end method
