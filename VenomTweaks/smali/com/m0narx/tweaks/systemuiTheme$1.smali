.class Lcom/m0narx/tweaks/systemuiTheme$1;
.super Ljava/lang/Object;
.source "systemuiTheme.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/systemuiTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/systemuiTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/systemuiTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "battery_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a0102

    iget-object v3, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v3}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v4, v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v1, "wifi_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a0100

    iget-object v3, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v3}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v5, v5}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto :goto_0

    :cond_2
    const-string v1, "signal_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a0101

    iget-object v3, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v3}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v6, v6}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto :goto_0

    :cond_3
    const-string v1, "apply_theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a00fe

    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto :goto_0

    :cond_4
    const-string v1, "gps_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a0103

    iget-object v3, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v3}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v7, v7}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto :goto_0

    :cond_5
    const-string v1, "bluetooth_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a0104

    iget-object v3, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v3}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v8, v8}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "alarm_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a0105

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "headset_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a0106

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "sync_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a0107

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x7

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "volume_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a0108

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x8

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "data_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a0109

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x9

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "eqs_icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a010c

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xa

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "heqs_icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    const v2, 0x7f0a018d

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/m0narx/tweaks/systemuiTheme$1;->this$0:Lcom/m0narx/tweaks/systemuiTheme;

    #getter for: Lcom/m0narx/tweaks/systemuiTheme;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;
    invoke-static {v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$0(Lcom/m0narx/tweaks/systemuiTheme;)Lcom/m0narx/tweaks/widgets/themeHelper;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xb

    #calls: Lcom/m0narx/tweaks/systemuiTheme;->chooseTheme(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/m0narx/tweaks/systemuiTheme;->access$1(Lcom/m0narx/tweaks/systemuiTheme;III)V

    goto/16 :goto_0
.end method
