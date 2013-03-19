.class Lcom/m0narx/tweaks/customizeQuickLaunch$1;
.super Ljava/lang/Object;
.source "customizeQuickLaunch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/customizeQuickLaunch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/customizeQuickLaunch;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/customizeQuickLaunch;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/customizeQuickLaunch$1;->this$0:Lcom/m0narx/tweaks/customizeQuickLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeQuickLaunch$1;->this$0:Lcom/m0narx/tweaks/customizeQuickLaunch;

    const-class v2, Lcom/m0narx/tweaks/widgets/appPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeQuickLaunch$1;->this$0:Lcom/m0narx/tweaks/customizeQuickLaunch;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/m0narx/tweaks/customizeQuickLaunch;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
