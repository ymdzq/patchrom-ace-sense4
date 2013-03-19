.class Lcom/m0narx/tweaks/battery_settings$1;
.super Ljava/lang/Object;
.source "battery_settings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/battery_settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/battery_settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/battery_settings;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    const-string v2, "battery_text_style_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_battery_text_style"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return v6

    :cond_2
    const-string v2, "show_miui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_style"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const-string v2, "hide_battery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_hide_battery"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const-string v2, "battery_automatically_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_auto_enabled"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #calls: Lcom/m0narx/tweaks/battery_settings;->checkAutoMode()V
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$1(Lcom/m0narx/tweaks/battery_settings;)V

    goto :goto_0

    :cond_5
    const-string v2, "batterybar_automatically_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_auto_color"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #calls: Lcom/m0narx/tweaks/battery_settings;->checkAutoMode()V
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$1(Lcom/m0narx/tweaks/battery_settings;)V

    goto :goto_0

    :cond_6
    const-string v2, "barheight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_height"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    const-string v3, "barheight"

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/battery_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    iget-object v3, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->res:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/m0narx/tweaks/battery_settings;->access$2(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "battery_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_static"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    const-string v2, "battery_color_auto_charging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_auto_charging"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    const-string v2, "battery_color_auto_regular"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_auto_regular"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    const-string v2, "battery_color_auto_medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_auto_medium"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    const-string v2, "battery_color_auto_low"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_batt_color_auto_low"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    const-string v2, "batterybar_color_pref"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_color"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_d
    const-string v2, "batterybar_color_auto_charging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_color_auto_charging"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    const-string v2, "batterybar_color_auto_regular"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_color_auto_regular"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    const-string v2, "batterybar_color_auto_medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_color_auto_medium"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_10
    const-string v2, "batterybar_color_auto_low"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_color_auto_low"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_11
    const-string v2, "anim_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anim_type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_12
    const-string v2, "anim_pulse_type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anim_pulse_type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    const-string v2, "battery_bar_anim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$1;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/battery_settings;->access$0(Lcom/m0narx/tweaks/battery_settings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_bar_anim_on"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
