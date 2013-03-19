.class public Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;
.super Landroid/app/DialogFragment;
.source "OnlineDeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/OnlineDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_PROGRESS_LOAD"
.end annotation


# instance fields
.field mMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/OnlineDeleteManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->mMessage:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->mMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->cancelDeleteMedias()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DLG_PROGRESS_LOAD;->mMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method
