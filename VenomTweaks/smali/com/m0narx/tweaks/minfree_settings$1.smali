.class Lcom/m0narx/tweaks/minfree_settings$1;
.super Ljava/lang/Object;
.source "minfree_settings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/minfree_settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/minfree_settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/minfree_settings;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v11, 0x1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v6, "minfree_presets"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/minfree_settings;->access$0(Lcom/m0narx/tweaks/minfree_settings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_minfree"

    iget-object v8, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->PROFILE_S:Ljava/lang/String;
    invoke-static {v8}, Lcom/m0narx/tweaks/minfree_settings;->access$1(Lcom/m0narx/tweaks/minfree_settings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/m0narx/tweaks/minfree_settings;->refreshProfiles(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/m0narx/tweaks/minfree_settings;->access$5(Lcom/m0narx/tweaks/minfree_settings;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #calls: Lcom/m0narx/tweaks/minfree_settings;->refreshSliders()V
    invoke-static {v6}, Lcom/m0narx/tweaks/minfree_settings;->access$6(Lcom/m0narx/tweaks/minfree_settings;)V

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    iget-object v7, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/m0narx/tweaks/minfree_settings;->access$0(Lcom/m0narx/tweaks/minfree_settings;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_minfree"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/m0narx/tweaks/minfree_settings;->setMinfreeValues(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/m0narx/tweaks/minfree_settings;->access$8(Lcom/m0narx/tweaks/minfree_settings;Ljava/lang/String;)V

    :goto_2
    return v11

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/minfree_settings;->access$0(Lcom/m0narx/tweaks/minfree_settings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_minfree"

    iget-object v8, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MT:Ljava/lang/String;
    invoke-static {v8}, Lcom/m0narx/tweaks/minfree_settings;->access$2(Lcom/m0narx/tweaks/minfree_settings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/minfree_settings;->access$0(Lcom/m0narx/tweaks/minfree_settings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_minfree"

    iget-object v8, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MTX:Ljava/lang/String;
    invoke-static {v8}, Lcom/m0narx/tweaks/minfree_settings;->access$3(Lcom/m0narx/tweaks/minfree_settings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/minfree_settings;->access$0(Lcom/m0narx/tweaks/minfree_settings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_minfree"

    iget-object v8, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->PROFILE_MTU:Ljava/lang/String;
    invoke-static {v8}, Lcom/m0narx/tweaks/minfree_settings;->access$4(Lcom/m0narx/tweaks/minfree_settings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    const-string v7, "minfree_presets"

    invoke-virtual {v6, v7}, Lcom/m0narx/tweaks/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcListPreference;

    const-string v6, "4"

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    const-string v7, "minfree_sliders"

    invoke-virtual {v6, v7}, Lcom/m0narx/tweaks/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    const-string v6, "value_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, ""

    const/4 v1, 0x1

    :goto_3
    const/4 v6, 0x6

    if-le v1, v6, :cond_7

    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/m0narx/tweaks/minfree_settings;->access$0(Lcom/m0narx/tweaks/minfree_settings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_minfree"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "value_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    invoke-virtual {v6, v2}, Lcom/m0narx/tweaks/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    invoke-virtual {v6}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getProgress()I

    move-result v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_8
    iget-object v6, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    invoke-virtual {v6, v2}, Lcom/m0narx/tweaks/minfree_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    iget-object v7, p0, Lcom/m0narx/tweaks/minfree_settings$1;->this$0:Lcom/m0narx/tweaks/minfree_settings;

    #getter for: Lcom/m0narx/tweaks/minfree_settings;->res:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/m0narx/tweaks/minfree_settings;->access$7(Lcom/m0narx/tweaks/minfree_settings;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0150

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    mul-int/lit16 v6, v4, 0x400

    div-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit16 v7, v4, 0x400

    div-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method
