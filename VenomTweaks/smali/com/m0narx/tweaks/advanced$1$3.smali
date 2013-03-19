.class Lcom/m0narx/tweaks/advanced$1$3;
.super Ljava/lang/Object;
.source "advanced.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/advanced$1;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/advanced$1;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/advanced$1;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/advanced$1$3;->this$1:Lcom/m0narx/tweaks/advanced$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/m0narx/tweaks/advanced$1$3;->this$1:Lcom/m0narx/tweaks/advanced$1;

    #getter for: Lcom/m0narx/tweaks/advanced$1;->this$0:Lcom/m0narx/tweaks/advanced;
    invoke-static {v0}, Lcom/m0narx/tweaks/advanced$1;->access$0(Lcom/m0narx/tweaks/advanced$1;)Lcom/m0narx/tweaks/advanced;

    move-result-object v0

    const v1, 0x7f0a00d3

    const-string v2, "clean_dc.sh;pkill -TERM system_server;"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runWithDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->set(I)V

    return-void
.end method
