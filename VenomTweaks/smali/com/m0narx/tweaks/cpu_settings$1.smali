.class Lcom/m0narx/tweaks/cpu_settings$1;
.super Ljava/lang/Object;
.source "cpu_settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/cpu_settings;->CheckButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/cpu_settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/cpu_settings;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/cpu_settings$1;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.m0narx.hub"

    const-string v2, "com.m0narx.hub.kernels"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/cpu_settings$1;->this$0:Lcom/m0narx/tweaks/cpu_settings;

    invoke-virtual {v1, v0}, Lcom/m0narx/tweaks/cpu_settings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
