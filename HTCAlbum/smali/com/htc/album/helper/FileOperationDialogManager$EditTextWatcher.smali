.class Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field mButton:Landroid/widget/Button;

.field mDialog:Lcom/htc/widget/HtcAlertDialog;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/album/helper/FileOperationDialogManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/FileOperationDialogManager;Landroid/view/View;Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iput-object p2, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mView:Landroid/view/View;

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mButton:Landroid/widget/Button;

    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationDialogManager;->access$400(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->this$0:Lcom/htc/album/helper/FileOperationDialogManager;

    #getter for: Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationDialogManager;->access$400(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setPositiveButtonEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
