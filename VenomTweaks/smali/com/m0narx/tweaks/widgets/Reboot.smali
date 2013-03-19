.class public Lcom/m0narx/tweaks/widgets/Reboot;
.super Ljava/lang/Object;
.source "Reboot.java"


# static fields
.field public static final FULL_RESTART:I = 0x4

.field public static final HOT_RESTART:I = 0x2

.field public static final SENSE:I = 0x0

.field public static final SYSTEMUI:I = 0x1

.field public static final SYSTEMUI_N_SENSE:I = 0x3

.field private static is_need_full_phone_restart:Z

.field private static is_need_on_change_dialog:Z

.field private static is_need_phone_restart:Z

.field private static is_need_sense_restart:Z

.field private static is_need_systemui_restart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_phone_restart:Z

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_full_phone_restart:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(I)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_full_phone_restart:Z

    goto :goto_0

    :pswitch_1
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_phone_restart:Z

    goto :goto_0

    :pswitch_2
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    goto :goto_0

    :pswitch_3
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    goto :goto_0

    :pswitch_4
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getButtonNameRes(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f0a0023

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a001f

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a001d

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getHeaderMsg(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0a000d

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a000c

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a000e

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a000a

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0a000b

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static is(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v1, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    packed-switch p0, :pswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_full_phone_restart:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :pswitch_1
    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_phone_restart:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :pswitch_2
    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :pswitch_3
    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :pswitch_4
    sget-boolean v2, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static perform(Landroid/content/Context;I)V
    .locals 3

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    const v1, 0x7f0a009a

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runWithDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "pkill system_server"

    goto :goto_0

    :pswitch_1
    const-string v0, "pkill com.htc.launcher"

    goto :goto_0

    :pswitch_2
    const-string v0, "pkill com.android.systemui"

    goto :goto_0

    :pswitch_3
    const-string v0, "pkill com.htc.launcher;pkill com.android.systemui;"

    goto :goto_0

    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.venom.action.FULL_REBOOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static set(I)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_full_phone_restart:Z

    goto :goto_0

    :pswitch_1
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_phone_restart:Z

    goto :goto_0

    :pswitch_2
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    goto :goto_0

    :pswitch_3
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    goto :goto_0

    :pswitch_4
    sput-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static showDialog(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_on_change_dialog:Z

    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_full_phone_restart:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_phone_restart:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;II)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_sense_restart:Z

    if-eqz v0, :cond_4

    invoke-static {p0, v1, v1}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;II)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/m0narx/tweaks/widgets/Reboot;->is_need_systemui_restart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartDialog(Landroid/content/Context;II)V

    goto :goto_0
.end method
