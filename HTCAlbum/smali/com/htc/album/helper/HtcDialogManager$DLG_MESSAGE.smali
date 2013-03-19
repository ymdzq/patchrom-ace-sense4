.class public Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "HtcDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/HtcDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLG_MESSAGE"
.end annotation


# instance fields
.field private mDialogMessage:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogMessage:Ljava/lang/String;

    return-void
.end method

.method public static instance(II)Landroid/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;

    invoke-direct {v0, p0, p1}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;-><init>(II)V

    return-object v0
.end method

.method public static instance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;

    invoke-direct {v0, p0, p1}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v2, 0x2040258

    new-instance v3, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE$1;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE$1;-><init>(Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogMessage:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->mDialogTitle:Ljava/lang/String;

    return-void
.end method
