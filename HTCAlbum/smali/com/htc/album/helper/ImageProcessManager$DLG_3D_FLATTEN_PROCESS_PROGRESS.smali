.class public Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;
.super Landroid/app/DialogFragment;
.source "ImageProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ImageProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_3D_FLATTEN_PROCESS_PROGRESS"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->info:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->info:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->info:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->isShareCancel:Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/ImageProcessManager;->access$002(Lcom/htc/album/helper/ImageProcessManager;Z)Z

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager;->cancelProcessMedias()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v2, 0x0

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->isShareCancel:Z
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$002(Lcom/htc/album/helper/ImageProcessManager;Z)Z

    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$100(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v2, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$100(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;-><init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/ObserverAdapter;)V

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$202(Lcom/htc/album/helper/ImageProcessManager;Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$200(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->start()V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v2, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;-><init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;)V

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$202(Lcom/htc/album/helper/ImageProcessManager;Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method