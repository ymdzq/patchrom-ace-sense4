.class public Lcom/m0narx/tweaks/advanced;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "advanced.java"


# static fields
.field private static final PICKER_GET_BOOTANIMATION:I = 0x0

.field private static final PICKER_GET_BOOT_SOUND:I = 0x2

.field private static final PICKER_GET_DOWNANIMATION:I = 0x1

.field private static final PICKER_GET_FONT:I = 0x3


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field private PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private Res:Landroid/content/res/Resources;

.field private fontNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/advanced;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->Res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/advanced;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/advanced;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/advanced;->cancelCustomFont()V

    return-void
.end method

.method private cancelCustomFont()V
    .locals 5

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v2

    const-string v0, ""

    if-nez v2, :cond_0

    const-string v0, "busybox mount -o remount,rw /system;"

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "busybox mount -o remount,ro /system;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const v3, 0x7f0a009a

    const/4 v4, 0x1

    invoke-static {p0, v3, v0, v4}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runWithDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "cp -a /system/fonts/_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /system/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "chmod 666 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/system/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkAnimFile(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "desc.txt"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/m0narx/tweaks/widgets/Misc;->checkZipContent(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private checkFontZipFile(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/m0narx/tweaks/widgets/Misc;->checkZipContent(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private installFontZip(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/m0narx/tweaks/widgets/fontsInstaller;

    iget-object v2, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    const-string v1, "custom_font"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/advanced;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/m0narx/tweaks/widgets/fontsInstaller;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/htc/preference/HtcCheckBoxPreference;)V

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/fontsInstaller;->start()V

    return-void
.end method


# virtual methods
.method public bootSoundEnabled()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/customize/resource/android_audio.mp3"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "enable_boot_sound"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/advanced;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "enable_boot_sound"

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/advanced;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public cancelCustomResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v1

    const-string v0, ""

    if-nez v1, :cond_0

    const-string v0, "busybox mount -o remount,rw /system;"

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "cp -f /system/customize/resource/_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /system/customize/resource/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "busybox mount -o remount,ro /system;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public copyFileToResDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/system/customize/resource/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->toogleSystemSetting(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->toogleCheckBox(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->start()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const v3, 0x7f0a00e3

    const/4 v4, 0x2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "m0narX_tweaks"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Picked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    goto :goto_0

    :pswitch_0
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/advanced;->checkAnimFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bootanimation.zip"

    const-string v2, "bootanimation"

    const-string v3, "tweaks_custom_bootanimation"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/advanced;->copyFileToResDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Dialogs;->errorDialog(Landroid/content/Context;I)V

    goto :goto_1

    :pswitch_1
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/advanced;->checkAnimFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "downanimation.zip"

    const-string v2, "downanimation"

    const-string v3, "tweaks_custom_downanimation"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/advanced;->copyFileToResDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Dialogs;->errorDialog(Landroid/content/Context;I)V

    goto :goto_1

    :pswitch_2
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/advanced;->checkFontZipFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m0narx/tweaks/advanced;->installFontZip(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0a0162

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Dialogs;->errorDialog(Landroid/content/Context;I)V

    goto :goto_1

    :pswitch_3
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_audio.mp3"

    const-string v2, "boot_sound"

    const-string v3, "tweaks_custom_bootsound"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/advanced;->copyFileToResDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/advanced;->addPreferencesFromResource(I)V

    invoke-static {p0, v6}, Lcom/m0narx/tweaks/widgets/Misc;->SetupHeader(Landroid/content/Context;I)V

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/advanced;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/advanced;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/advanced;->Res:Landroid/content/res/Resources;

    new-instance v0, Lcom/m0narx/tweaks/advanced$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/advanced$1;-><init>(Lcom/m0narx/tweaks/advanced;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    new-instance v0, Lcom/m0narx/tweaks/advanced$2;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/advanced$2;-><init>(Lcom/m0narx/tweaks/advanced;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_system_rw"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/log/main"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_disable_logcat"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v1, "pref_zip"

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "pref_sysrw"

    const-string v2, "tweaks_system_rw"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "disable_logcat"

    const-string v2, "tweaks_disable_logcat"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v1, "pref_cache"

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    const-string v1, "pref_dalvik"

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->OnClickListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "bootanimation"

    const-string v2, "tweaks_custom_bootanimation"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "downanimation"

    const-string v2, "tweaks_custom_downanimation"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "enable_boot_sound"

    const-string v2, ""

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "boot_sound"

    const-string v2, "tweaks_custom_bootsound"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->PrefOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    const-string v1, "custom_font"

    const-string v2, "tweaks_custom_font"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/Misc;->OnChangeListener(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    const-string v1, "Roboto-Regular.ttf"

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    const-string v1, "Roboto-Italic.ttf"

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    const-string v1, "Roboto-BoldItalic.ttf"

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "Roboto-Bold.ttf"

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "Roboto-Bold.ttf"

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->fontNames:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "DroidSansFallback.ttf"

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/m0narx/tweaks/advanced;->bootSoundEnabled()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/advanced;->setDependes()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_system_rw"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;

    const-string v1, "tweaks_disable_logcat"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/m0narx/tweaks/widgets/Misc;->SetupHeader(Landroid/content/Context;I)V

    return-void
.end method

.method public setDependes()V
    .locals 2

    const-string v0, "boot_sound"

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/advanced;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const-string v1, "enable_boot_sound"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    return-void
.end method
