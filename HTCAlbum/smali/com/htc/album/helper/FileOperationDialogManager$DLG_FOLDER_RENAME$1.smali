.class Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

.field final synthetic val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;Lcom/htc/widget/HtcAutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iput-object p2, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mFolderPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$000(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/helper/FileOperationHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->val$folderNameText:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mFolderPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$000(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mIllegalFlag:I
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$200(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "FileOperationDialogManager"

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->access$400(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager;->access$400(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->notifyComplete()V

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    iget-object v0, v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #setter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v0, v3}, Lcom/htc/album/helper/FileOperationDialogManager;->access$402(Lcom/htc/album/helper/FileOperationDialogManager;Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$300(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mCallBack:Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$300(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mFolderPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$000(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_RENAME_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    invoke-interface/range {v0 .. v5}, Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;->onConfirm(Ljava/lang/String;Ljava/lang/String;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0198

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a019a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->instance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v12

    check-cast v12, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0188

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME$1;->this$1:Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;->access$100(Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0199

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->instance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v12

    check-cast v12, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x24510
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
