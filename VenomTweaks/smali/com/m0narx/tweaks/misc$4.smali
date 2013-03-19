.class Lcom/m0narx/tweaks/misc$4;
.super Ljava/lang/Object;
.source "misc.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/misc;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/misc;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/misc;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    if-ne v8, v9, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    const-string v8, "overscroll_color"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_overscroll_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v10}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    invoke-virtual {v6}, Lcom/m0narx/tweaks/misc;->updateHeader()V

    move v6, v7

    :goto_1
    return v6

    :cond_2
    const-string v8, "weatherzh"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v6, "busybox mount -o remount,rw /system;"

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "false"

    if-ne v6, v8, :cond_3

    const-string v6, "cp -f /system/xx82/Weatherzh/WeatherSyncProvider.apk /system/app"

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    const-string v6, "cp -f /system/xx82/Weatherzh/Weather.apk /system/app"

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    :goto_2
    iget-object v7, p0, Lcom/m0narx/tweaks/misc$2;->this$0:Lcom/m0narx/tweaks/misc;

    invoke-static {v7}, Lcom/m0narx/tweaks/misc;->access$1(Lcom/m0narx/tweaks/misc;)V

    goto/16 :goto_0

    :cond_3
    const-string v6, "cp -f /system/xx82/WeatherACC/WeatherSyncProvider.apk /system/app"

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    const-string v6, "cp -f /system/xx82/WeatherACC/Weather.apk /system/app"

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    const-string v8, "sms_screenon"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_sms_screen_on"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    const-string v8, "sms_use_smiles_button"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_sms_use_smiles_button"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    const-string v8, "cube_animation"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_cube_animation"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v10}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto/16 :goto_0

    :cond_7
    const-string v8, "volume_control"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_volume_control"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v10}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto/16 :goto_0

    :cond_8
    const-string v8, "automotive_navapp"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_9

    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    const-class v8, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    const/4 v8, 0x3

    invoke-virtual {v7, v4, v8}, Lcom/m0narx/tweaks/misc;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_automotive_navapp"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    const-string v8, "use_bravia"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_b

    const-string v6, "ro.service.swiqi.supported"

    const-string v8, "true"

    invoke-static {v6, v8}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v6, "persist.service.swiqi.enable"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "setprop persist.service.swiqi.enable "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v10}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto/16 :goto_0

    :cond_b
    const-string v6, "ro.service.swiqi.supported"

    const-string v8, "false"

    invoke-static {v6, v8}, Lcom/m0narx/tweaks/widgets/Misc;->setBuildPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string v8, "use_xloud"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_use_xloud"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sonyericsson.audioeffectservice.intent.action.XLOUD_REQUEST"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.sonyericsson.audioeffectservice.intent.extra.XLOUD_STATUS"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    invoke-virtual {v6, v5}, Lcom/m0narx/tweaks/misc;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    const-string v8, "fast_dormancy"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_dormancy"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v10}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto/16 :goto_0

    :cond_e
    const-string v8, "disable_smartsync"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "SMARTSYNC_NIGHT_ENABLE"

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "sleep_mode_mode"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "smartsync_turn_off_wifi"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "powersaver_switch_2G_call"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    iget-object v8, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "SMARTSYNC_NIGHT_ENABLE"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_10
    const-string v8, "camera_use_volume"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_camera_use_volume"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_11
    const-string v8, "camera_hidebar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_camera_hidebar"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_12
    const-string v8, "camera_use_search"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_camera_use_search"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    const-string v8, "volume_sound_off"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_volume_sound_off"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_14
    const-string v8, "animations"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_animations"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_15
    const-string v8, "force_wifi_n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_19

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_country_code"

    invoke-static {v6, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    :cond_16
    const-string v3, "EU"

    :cond_17
    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_country_code_original"

    invoke-static {v6, v8, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_country_code"

    const-string v9, "EU"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_18
    :goto_5
    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "tweaks_force_wifi_n"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_19
    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_country_code_original"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v6, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    #getter for: Lcom/m0narx/tweaks/misc;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/misc;->access$0(Lcom/m0narx/tweaks/misc;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifi_country_code"

    invoke-static {v6, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :cond_1a
    const-string v8, "fix_hdmi"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/m0narx/tweaks/misc$4;->this$0:Lcom/m0narx/tweaks/misc;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v7, :cond_1b

    move v6, v7

    :cond_1b
    invoke-static {v8, v6}, Lcom/m0narx/tweaks/misc;->access$1(Lcom/m0narx/tweaks/misc;Z)V

    invoke-static {v11}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto/16 :goto_0
.end method
