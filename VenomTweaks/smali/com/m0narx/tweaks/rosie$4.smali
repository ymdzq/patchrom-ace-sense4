.class Lcom/m0narx/tweaks/rosie$4;
.super Ljava/lang/Object;
.source "rosie.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/rosie;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/rosie;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/rosie;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

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
    const-string v4, "show_unlock_animation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_show_unlock_animation"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    move v2, v3

    :goto_1
    return v2

    :cond_2
    const-string v4, "enable_landscape"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_enable_landscape"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto :goto_0

    :cond_3
    const-string v4, "nav_trans"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_rosie_navbar_transp"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto :goto_0

    :cond_4
    const-string v4, "rosie_extappdrawer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_rosie_extappdrawer"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto :goto_0

    :cond_5
    const-string v4, "rosie_ringscroll"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_rosie_ringscroll"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto :goto_0

    :cond_6
    const-string v4, "rosie_bgcolor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_rosie_bgcolor"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    const-string v4, "rosie_custombg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_rosie_customimage"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/m0narx/tweaks/widgets/Misc;->InstallBg(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_9
    const-string v4, "rosie_scrollwall"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$4;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_rosie_scrollwall"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    goto/16 :goto_0
.end method
