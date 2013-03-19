.class Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;
.super Landroid/app/DialogFragment;
.source "ImageProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/processor/ImageProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLG_PROCESSING"
.end annotation


# instance fields
.field info:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/album/processor/ImageProcessorManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->info:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->info:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->info:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Lcom/htc/album/processor/ImageProcessorManager;->OnCancelProcessing(Landroid/app/Dialog;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->info:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->info:Landroid/os/Bundle;

    const-string v4, "ID"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #setter for: Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I
    invoke-static {v3, v2}, Lcom/htc/album/processor/ImageProcessorManager;->access$302(Lcom/htc/album/processor/ImageProcessorManager;I)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
