.class Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "FileOperationDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLG_FOLDER_DELETE"
.end annotation


# instance fields
.field private mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

.field mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;

.field private mContext:Landroid/content/Context;

.field private mFolderPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/FileOperationDialogManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager;Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mFolderPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    iput-object p4, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mFolderPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)Lcom/htc/album/modules/collection/Collection;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;->onCancel()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const-string v8, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mAlbumCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    const v9, 0x2040272

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0195

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x2040258

    new-instance v10, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;

    invoke-direct {v10, p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$2;-><init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x2040256

    new-instance v10, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$1;

    invoke-direct {v10, p0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE$1;-><init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mFolderPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    const v9, 0x2040259

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0194

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;->onDismiss()V

    return-void
.end method
