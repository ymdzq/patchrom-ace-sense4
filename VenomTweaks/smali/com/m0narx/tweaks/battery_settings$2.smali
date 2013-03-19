.class Lcom/m0narx/tweaks/battery_settings$2;
.super Ljava/lang/Object;
.source "battery_settings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


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

    iput-object p1, p0, Lcom/m0narx/tweaks/battery_settings$2;->this$0:Lcom/m0narx/tweaks/battery_settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "battery_icon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$2;->this$0:Lcom/m0narx/tweaks/battery_settings;

    const-class v3, Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "title"

    const v3, 0x7f0a0102

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "filter"

    iget-object v3, p0, Lcom/m0narx/tweaks/battery_settings$2;->this$0:Lcom/m0narx/tweaks/battery_settings;

    #getter for: Lcom/m0narx/tweaks/battery_settings;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v3}, Lcom/m0narx/tweaks/battery_settings;->access$3(Lcom/m0narx/tweaks/battery_settings;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/m0narx/tweaks/battery_settings$2;->this$0:Lcom/m0narx/tweaks/battery_settings;

    invoke-virtual {v2, v1, v4}, Lcom/m0narx/tweaks/battery_settings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
