.class Lcom/m0narx/tweaks/systemui$1;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/systemui;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/m0narx/tweaks/systemui$1;->this$0:Lcom/m0narx/tweaks/systemui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/systemui$1;->this$0:Lcom/m0narx/tweaks/systemui;

    #getter for: Lcom/m0narx/tweaks/systemui;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/systemui;->access$0(Lcom/m0narx/tweaks/systemui;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    invoke-static {v4}, Lcom/m0narx/tweaks/widgets/Misc;->CheckButtonState(I)V

    return-void

    :pswitch_0
    const-string v1, "tweaks_show_alarm_icon"

    goto :goto_0

    :pswitch_1
    const-string v1, "tweaks_show_gps_icon"

    goto :goto_0

    :pswitch_2
    const-string v1, "tweaks_show_headset_icon"

    goto :goto_0

    :pswitch_3
    const-string v1, "tweaks_show_volume_icons"

    goto :goto_0

    :pswitch_4
    const-string v1, "tweaks_show_wifi_icon"

    goto :goto_0

    :pswitch_5
    const-string v1, "tweaks_show_bluetooth_icon"

    goto :goto_0

    :pswitch_6
    const-string v1, "tweaks_show_adb_icon"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v2, "setprop persist.adb.notify 1"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "setprop persist.adb.notify 0"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
