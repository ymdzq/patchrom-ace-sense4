.class Lcom/m0narx/tweaks/autobrightness_settings$1;
.super Ljava/lang/Object;
.source "autobrightness_settings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/autobrightness_settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/autobrightness_settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/autobrightness_settings;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 13

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v10, "brightness_presets"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    #getter for: Lcom/m0narx/tweaks/autobrightness_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/m0narx/tweaks/autobrightness_settings;->access$0(Lcom/m0narx/tweaks/autobrightness_settings;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tweaks_autobrightness"

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/m0narx/tweaks/autobrightness_settings;->refreshProfiles(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/m0narx/tweaks/autobrightness_settings;->access$3(Lcom/m0narx/tweaks/autobrightness_settings;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    #calls: Lcom/m0narx/tweaks/autobrightness_settings;->refreshSliders()V
    invoke-static {v10}, Lcom/m0narx/tweaks/autobrightness_settings;->access$4(Lcom/m0narx/tweaks/autobrightness_settings;)V

    :cond_1
    :goto_1
    const/4 v10, 0x1

    return v10

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    #getter for: Lcom/m0narx/tweaks/autobrightness_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/m0narx/tweaks/autobrightness_settings;->access$0(Lcom/m0narx/tweaks/autobrightness_settings;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tweaks_autobrightness"

    iget-object v12, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    #getter for: Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_LOWER:Ljava/lang/String;
    invoke-static {v12}, Lcom/m0narx/tweaks/autobrightness_settings;->access$1(Lcom/m0narx/tweaks/autobrightness_settings;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    #getter for: Lcom/m0narx/tweaks/autobrightness_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/m0narx/tweaks/autobrightness_settings;->access$0(Lcom/m0narx/tweaks/autobrightness_settings;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tweaks_autobrightness"

    iget-object v12, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    #getter for: Lcom/m0narx/tweaks/autobrightness_settings;->PROFILE_LOWEST:Ljava/lang/String;
    invoke-static {v12}, Lcom/m0narx/tweaks/autobrightness_settings;->access$2(Lcom/m0narx/tweaks/autobrightness_settings;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const-string v10, "level_"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v7, ""

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    :cond_5
    const v10, 0x3ec8c8c9

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    float-to-double v4, v10

    iget-object v10, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    invoke-virtual {v10}, Lcom/m0narx/tweaks/autobrightness_settings;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    double-to-float v10, v4

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v9, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x1

    :goto_2
    const/16 v10, 0xa

    if-le v1, v10, :cond_6

    iget-object v10, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    #getter for: Lcom/m0narx/tweaks/autobrightness_settings;->Cr:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/m0narx/tweaks/autobrightness_settings;->access$0(Lcom/m0narx/tweaks/autobrightness_settings;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tweaks_autobrightness"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "level_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    invoke-virtual {v10, v3}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    invoke-virtual {v10}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getProgress()I

    move-result v6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_7
    iget-object v10, p0, Lcom/m0narx/tweaks/autobrightness_settings$1;->this$0:Lcom/m0narx/tweaks/autobrightness_settings;

    invoke-virtual {v10, v3}, Lcom/m0narx/tweaks/autobrightness_settings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/m0narx/tweaks/widgets/SeekBarPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method
