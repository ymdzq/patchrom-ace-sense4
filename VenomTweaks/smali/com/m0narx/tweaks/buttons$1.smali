.class Lcom/m0narx/tweaks/buttons$1;
.super Ljava/lang/Object;
.source "buttons.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/buttons;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/buttons;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/buttons;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x4

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
    const-string v5, "pref_capacitive_backlight"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    #getter for: Lcom/m0narx/tweaks/buttons;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/buttons;->access$0(Lcom/m0narx/tweaks/buttons;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_buttons_backlight"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    invoke-static {v8}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    move v3, v4

    :goto_1
    return v3

    :cond_2
    const-string v5, "longpress_home"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v3, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    #getter for: Lcom/m0narx/tweaks/buttons;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/buttons;->access$0(Lcom/m0narx/tweaks/buttons;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_longpress_home"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    const-class v5, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    invoke-virtual {v4, v2, v3}, Lcom/m0narx/tweaks/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    const-string v5, "longpress_menu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v3, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    #getter for: Lcom/m0narx/tweaks/buttons;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/buttons;->access$0(Lcom/m0narx/tweaks/buttons;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_longpress_menu"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    const-class v6, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    invoke-virtual {v5, v2, v4}, Lcom/m0narx/tweaks/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_6
    const-string v5, "longpress_back"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v3, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    #getter for: Lcom/m0narx/tweaks/buttons;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/buttons;->access$0(Lcom/m0narx/tweaks/buttons;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_longpress_back"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    const-class v5, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    invoke-virtual {v4, v2, v8}, Lcom/m0narx/tweaks/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_8
    const-string v5, "longpress_search"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v3, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    #getter for: Lcom/m0narx/tweaks/buttons;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/buttons;->access$0(Lcom/m0narx/tweaks/buttons;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_longpress_search"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    const-class v5, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Lcom/m0narx/tweaks/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_a
    const-string v5, "shortpress_search"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v3, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    #getter for: Lcom/m0narx/tweaks/buttons;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/buttons;->access$0(Lcom/m0narx/tweaks/buttons;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_shortpress_search"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    const-class v5, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    invoke-virtual {v4, v2, v7}, Lcom/m0narx/tweaks/buttons;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_c
    const-string v3, "longpress_timeout"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    #getter for: Lcom/m0narx/tweaks/buttons;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/buttons;->access$0(Lcom/m0narx/tweaks/buttons;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_longpress_delay"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_d
    const-string v3, "use_voldown_screenoff"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    #getter for: Lcom/m0narx/tweaks/buttons;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/buttons;->access$0(Lcom/m0narx/tweaks/buttons;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_use_voldown_screenoff"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    const-string v3, "use_volume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/m0narx/tweaks/buttons$1;->this$0:Lcom/m0narx/tweaks/buttons;

    #getter for: Lcom/m0narx/tweaks/buttons;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/buttons;->access$0(Lcom/m0narx/tweaks/buttons;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_use_volume"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
