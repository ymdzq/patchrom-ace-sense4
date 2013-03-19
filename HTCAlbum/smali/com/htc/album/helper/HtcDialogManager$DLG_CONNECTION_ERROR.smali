.class public Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "HtcDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/HtcDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLG_CONNECTION_ERROR"
.end annotation


# instance fields
.field private mErrorMessage:Ljava/lang/String;

.field private mErrorTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->mErrorTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static instance()Landroid/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;

    invoke-direct {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    iget-object v1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->mErrorTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    const v2, 0x7f0a0047

    invoke-virtual {p0, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->mErrorMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    const v2, 0x7f0a0048

    invoke-virtual {p0, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20401ee

    new-instance v4, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR$1;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR$1;-><init>(Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->mErrorTitle:Ljava/lang/String;

    return-void
.end method
