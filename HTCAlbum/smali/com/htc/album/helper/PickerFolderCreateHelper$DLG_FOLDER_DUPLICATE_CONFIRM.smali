.class public Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "PickerFolderCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_FOLDER_DUPLICATE_CONFIRM"
.end annotation


# instance fields
.field mTargetFolderDisplayName:Ljava/lang/String;

.field mTargetFolderLocation:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->mTargetFolderLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->mTargetFolderDisplayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->mTargetFolderLocation:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->mTargetFolderDisplayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getContentMessage()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mFileOperationType:I
    invoke-static {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$1000(Lcom/htc/album/helper/PickerFolderCreateHelper;)I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a018b

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->mTargetFolderDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a018a

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->mTargetFolderDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0188

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    const-string v1, "DLG_FOLDER_DUPLICATE_CONFIRM"

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->doCancel(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->getContentMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x2040174

    new-instance v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM$2;

    invoke-direct {v6, p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM$2;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20401ee

    new-instance v6, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM$1;

    invoke-direct {v6, p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM$1;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method
