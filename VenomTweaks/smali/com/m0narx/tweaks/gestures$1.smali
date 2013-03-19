.class Lcom/m0narx/tweaks/gestures$1;
.super Ljava/lang/Object;
.source "gestures.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/gestures;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/gestures;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/gestures;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7

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
    const-string v5, "gesture_up"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v3, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    #getter for: Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/gestures;->access$0(Lcom/m0narx/tweaks/gestures;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_gesture_up"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    return v3

    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    const-class v6, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    invoke-virtual {v5, v2, v4}, Lcom/m0narx/tweaks/gestures;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    const-string v5, "gesture_down"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v3, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    #getter for: Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/gestures;->access$0(Lcom/m0narx/tweaks/gestures;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_gesture_down"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    const-class v5, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Lcom/m0narx/tweaks/gestures;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_5
    const-string v5, "gesture_left"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v3, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    #getter for: Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/gestures;->access$0(Lcom/m0narx/tweaks/gestures;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_gesture_left"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    const-class v5, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    const/4 v5, 0x4

    invoke-virtual {v4, v2, v5}, Lcom/m0narx/tweaks/gestures;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_7
    const-string v5, "gesture_right"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v3, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    #getter for: Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/gestures;->access$0(Lcom/m0narx/tweaks/gestures;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "tweaks_gesture_right"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    const-class v5, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Lcom/m0narx/tweaks/gestures;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_9
    const-string v3, "enable_gestures"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/m0narx/tweaks/gestures$1;->this$0:Lcom/m0narx/tweaks/gestures;

    #getter for: Lcom/m0narx/tweaks/gestures;->Cr:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/m0narx/tweaks/gestures;->access$0(Lcom/m0narx/tweaks/gestures;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "htc_gestures_enabled"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
