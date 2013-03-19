.class Lcom/m0narx/tweaks/systemui$5;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/systemui;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/systemui;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/systemui;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    if-ne v4, v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    const-string v4, "super_quick_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_auto_quick_settings"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    move v2, v3

    :goto_1
    return v2

    :cond_2
    const-string v4, "hide_date"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_statusbar_hide_date"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const-string v4, "hide_qs"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_hide_qs"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #calls: Lcom/m0narx/tweaks/systemui;->checkQS()V
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$1(Lcom/m0narx/tweaks/systemui;)V

    goto :goto_0

    :cond_4
    const-string v4, "block_pulldown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_block_pulldown"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    const-string v4, "h_icon_replace"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_statusbar_h_icon"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    const-string v4, "statusbar_bgcolor_pref"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_statusbar_bgcolor"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    const-string v4, "statusbar_custombg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_8

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_statusbar_customimage"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    invoke-static {v4, v3}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_9
    const-string v4, "cm_brightness_control"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_cm_brightness_control"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    const-string v4, "recentapps_style"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_recentapps_style"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v3}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "statusbar_icon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_c

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_status_icon"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    invoke-static {v3, v2}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "quicklauncher_state"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_quicklauncher_state"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
