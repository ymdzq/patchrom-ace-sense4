.class Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mFolderPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->access$500(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;
    invoke-static {v3}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->access$600(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    sget-object v4, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;->onConfirm(Ljava/lang/String;Ljava/lang/String;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;Z)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
