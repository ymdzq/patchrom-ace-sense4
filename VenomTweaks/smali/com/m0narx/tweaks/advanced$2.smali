.class Lcom/m0narx/tweaks/advanced$2;
.super Ljava/lang/Object;
.source "advanced.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/advanced;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/advanced;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/advanced;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "true"

    if-ne v5, v8, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_0
    const-string v5, "pref_sysrw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, ""

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_1

    const-string v0, "busybox mount -o remount,rw /system;"

    :goto_0
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v5, "failed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    iget-object v8, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    #getter for: Lcom/m0narx/tweaks/advanced;->Res:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/m0narx/tweaks/advanced;->access$0(Lcom/m0narx/tweaks/advanced;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00cf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    :goto_1
    return v5

    :cond_1
    const-string v0, "busybox mount -o remount,ro /system;"

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    #getter for: Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/m0narx/tweaks/advanced;->access$1(Lcom/m0narx/tweaks/advanced;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_system_rw"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_2
    invoke-static {v9}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    move v5, v7

    goto :goto_1

    :cond_4
    const-string v5, "enable_boot_sound"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v5, "busybox mount -o remount,rw /system;"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_6

    const-string v5, "cp -f /system/customize/resource/_android_audio.mp3 /system/customize/resource/android_audio.mp3"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    :goto_3
    if-nez v4, :cond_3

    const-string v5, "busybox mount -o remount,ro /system;"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v5, "rm -f /system/customize/resource/android_audio.mp3"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    #getter for: Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/m0narx/tweaks/advanced;->access$1(Lcom/m0narx/tweaks/advanced;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_custom_bootsound"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    const-string v8, "boot_sound"

    invoke-virtual {v5, v8}, Lcom/m0narx/tweaks/advanced;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    :cond_7
    const-string v5, "bootanimation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_8

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    const-string v7, "zip"

    const v8, 0x7f0a00df

    invoke-static {v5, v7, v8, v6}, Lcom/m0narx/tweaks/widgets/FilePicker;->startFilePicker(Landroid/content/Context;Ljava/lang/String;II)V

    move v5, v6

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    const-string v6, "bootanimation.zip"

    const-string v8, "tweaks_custom_bootanimation"

    invoke-virtual {v5, v6, v8}, Lcom/m0narx/tweaks/advanced;->cancelCustomResource(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v5, "downanimation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_a

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    const-string v8, "zip"

    const v9, 0x7f0a00e0

    invoke-static {v5, v8, v9, v7}, Lcom/m0narx/tweaks/widgets/FilePicker;->startFilePicker(Landroid/content/Context;Ljava/lang/String;II)V

    move v5, v6

    goto/16 :goto_1

    :cond_a
    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    const-string v6, "downanimation.zip"

    const-string v8, "tweaks_custom_downanimation"

    invoke-virtual {v5, v6, v8}, Lcom/m0narx/tweaks/advanced;->cancelCustomResource(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v5, "boot_sound"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_c

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    const-string v7, "mp3"

    const v8, 0x7f0a00e2

    invoke-static {v5, v7, v8, v9}, Lcom/m0narx/tweaks/widgets/FilePicker;->startFilePicker(Landroid/content/Context;Ljava/lang/String;II)V

    move v5, v6

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    const-string v6, "android_audio.mp3"

    const-string v8, "tweaks_custom_bootsound"

    invoke-virtual {v5, v6, v8}, Lcom/m0narx/tweaks/advanced;->cancelCustomResource(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v5, "cn_font"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_e

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    const-string v7, "xx82"

    const v8, 0x7f0a0161

    const/4 v9, 0x3

    invoke-static {v5, v7, v8, v9}, Lcom/m0narx/tweaks/widgets/FilePicker;->startFilePicker(Landroid/content/Context;Ljava/lang/String;II)V

    move v5, v6

    goto/16 :goto_1

    :cond_e
    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    #calls: Lcom/m0narx/tweaks/advanced;->cancelCustomFont()V
    invoke-static {v5}, Lcom/m0narx/tweaks/advanced;->access$2(Lcom/m0narx/tweaks/advanced;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    #getter for: Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/m0narx/tweaks/advanced;->access$1(Lcom/m0narx/tweaks/advanced;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_cn_font"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_f
    const-string v5, "custom_font"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_10

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    const-string v7, "vfpack"

    const v8, 0x7f0a0161

    const/4 v9, 0x3

    invoke-static {v5, v7, v8, v9}, Lcom/m0narx/tweaks/widgets/FilePicker;->startFilePicker(Landroid/content/Context;Ljava/lang/String;II)V

    move v5, v6

    goto/16 :goto_1

    :cond_10
    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    #calls: Lcom/m0narx/tweaks/advanced;->cancelCustomFont()V
    invoke-static {v5}, Lcom/m0narx/tweaks/advanced;->access$2(Lcom/m0narx/tweaks/advanced;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    #getter for: Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/m0narx/tweaks/advanced;->access$1(Lcom/m0narx/tweaks/advanced;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_custom_font"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_11
    const-string v5, "disable_logcat"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_12

    const-string v5, "rm /dev/log/main"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    :goto_4
    iget-object v5, p0, Lcom/m0narx/tweaks/advanced$2;->this$0:Lcom/m0narx/tweaks/advanced;

    #getter for: Lcom/m0narx/tweaks/advanced;->Cr:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/m0narx/tweaks/advanced;->access$1(Lcom/m0narx/tweaks/advanced;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_disable_logcat"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_12
    const-string v5, "mknod /dev/log/main c 10 24;chown 0:1007 /dev/log/main;"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4
.end method
