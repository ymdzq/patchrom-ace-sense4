.class Lcom/m0narx/tweaks/rosieTheme$3;
.super Ljava/lang/Object;
.source "rosieTheme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/rosieTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/rosieTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/rosieTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/rosieTheme$3;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/rosieTheme$3;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    const-class v2, Lcom/m0narx/tweaks/customizeRosieTheme;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/rosieTheme$3;->this$0:Lcom/m0narx/tweaks/rosieTheme;

    invoke-virtual {v1, v0}, Lcom/m0narx/tweaks/rosieTheme;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
