.class Lcom/m0narx/tweaks/lockscreen$5;
.super Ljava/lang/Object;
.source "lockscreen.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/lockscreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/lockscreen;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/lockscreen;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    if-ne v5, v6, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    const-string v5, "lockscreen_style"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_lockscreen_style"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #calls: Lcom/m0narx/tweaks/lockscreen;->checkLockscreenStyle()V
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$1(Lcom/m0narx/tweaks/lockscreen;)V

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    :cond_1
    :goto_0
    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    move v3, v4

    :goto_1
    return v3

    :cond_2
    const-string v5, "lockscreen_caption"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_lockscreen_caption"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-string v5, "lockscreen_hide_opname"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_lockscreen_hide_opname"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #calls: Lcom/m0narx/tweaks/lockscreen;->checkOpName()V
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$2(Lcom/m0narx/tweaks/lockscreen;)V

    goto :goto_0

    :cond_4
    const-string v5, "lockscreen_hide_navbar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_lockscreen_hide_navbar"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    const-string v5, "use_media"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_use_media"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    const-string v5, "longress_home_ls"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_longpress_home_ls"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    const-class v5, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    invoke-virtual {v4, v2, v3}, Lcom/m0narx/tweaks/lockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_8
    const-string v5, "unlock_slide"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_slide_unlock"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #calls: Lcom/m0narx/tweaks/lockscreen;->checkSlide2Unlock()V
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$3(Lcom/m0narx/tweaks/lockscreen;)V

    goto/16 :goto_0

    :cond_9
    const-string v5, "lockscreen_hide_labels"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_lockscreen_hide_labels"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "pkill com.htc.idlescreen.shortcut"

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v5, "lockscreen_orientation"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_lockscreen_orientation"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v7}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto/16 :goto_0

    :cond_b
    const-string v5, "sweep_wake"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_sweep_wake"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "echo "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #calls: Lcom/m0narx/tweaks/lockscreen;->getS2WFile()Ljava/lang/String;
    invoke-static {v5}, Lcom/m0narx/tweaks/lockscreen;->access$4(Lcom/m0narx/tweaks/lockscreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v5, "aosp_call_unlock"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_aosp_call_unlock"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_d
    const-string v5, "disable_volkeys_on_ls"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_disable_volkeys_on_ls"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    const-string v5, "gesture_frommenu_ls"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_gesture_frommenu_ls"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    const-class v6, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    invoke-virtual {v5, v2, v4}, Lcom/m0narx/tweaks/lockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_10
    const-string v5, "gesture_fromback_ls"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v3, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_gesture_fromback_ls"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_11
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    const-class v5, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/lockscreen$5;->this$0:Lcom/m0narx/tweaks/lockscreen;

    invoke-virtual {v4, v2, v7}, Lcom/m0narx/tweaks/lockscreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method
