.class Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess$1;
.super Landroid/os/Handler;
.source "ShellInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess$1;->this$1:Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess$1;->this$1:Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;

    #getter for: Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;->access$0(Lcom/m0narx/tweaks/widgets/ShellInterface$bgProcess;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    return-void
.end method
