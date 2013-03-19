.class Lcom/m0narx/tweaks/customLSnotifications$1;
.super Ljava/lang/Object;
.source "customLSnotifications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/customLSnotifications;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/customLSnotifications;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/customLSnotifications;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/customLSnotifications$1;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/customLSnotifications$1;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    const-class v2, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customLSnotifications$1;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/customLSnotifications;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
