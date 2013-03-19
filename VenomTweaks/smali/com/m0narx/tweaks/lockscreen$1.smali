.class Lcom/m0narx/tweaks/lockscreen$1;
.super Ljava/lang/Object;
.source "lockscreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/lockscreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/lockscreen;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/lockscreen;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/lockscreen$1;->this$0:Lcom/m0narx/tweaks/lockscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen$1;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :pswitch_0
    const-string v1, "tweaks_lockscreen_hide_date"

    goto :goto_0

    :pswitch_1
    const-string v1, "tweaks_lockscreen_hide_time"

    goto :goto_0

    :pswitch_2
    const-string v1, "tweaks_lockscreen_hide_ampm"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
