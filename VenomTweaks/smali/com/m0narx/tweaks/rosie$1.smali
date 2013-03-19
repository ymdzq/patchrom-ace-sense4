.class Lcom/m0narx/tweaks/rosie$1;
.super Ljava/lang/Object;
.source "rosie.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/rosie;->makeDialog(I)V
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

    iput-object p1, p0, Lcom/m0narx/tweaks/rosie$1;->this$0:Lcom/m0narx/tweaks/rosie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 6

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v1, ""

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$1;->this$0:Lcom/m0narx/tweaks/rosie;

    #getter for: Lcom/m0narx/tweaks/rosie;->Cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/m0narx/tweaks/rosie;->access$0(Lcom/m0narx/tweaks/rosie;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return-void

    :pswitch_0
    const-string v1, "tweaks_custom_clock_app"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    const-string v1, "tweaks_custom_weather_clock_app"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$1;->this$0:Lcom/m0narx/tweaks/rosie;

    const-class v5, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/m0narx/tweaks/rosie$1;->this$0:Lcom/m0narx/tweaks/rosie;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/m0narx/tweaks/rosie;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
