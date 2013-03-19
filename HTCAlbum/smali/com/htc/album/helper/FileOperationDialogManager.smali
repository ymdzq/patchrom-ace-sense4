.class public Lcom/htc/album/helper/FileOperationDialogManager;
.super Ljava/lang/Object;
.source "FileOperationDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/FileOperationDialogManager$1;,
        Lcom/htc/album/helper/FileOperationDialogManager$EditTextWatcher;,
        Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;,
        Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;,
        Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;,
        Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;,
        Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileOperationDialogManager"


# instance fields
.field private mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field private mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/album/helper/FileOperationDialogManager;Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;)Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/album/helper/FileOperationDialogManager;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-object v0
.end method


# virtual methods
.method public createDuplicateFileWarningDialog(Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 2

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    :cond_0
    new-instance v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;-><init>(Lcom/htc/album/helper/FileOperationDialogManager;Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;)V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-object v0
.end method

.method public createFileOperationErrorDialog(Landroid/app/Activity;ILcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;
    .locals 5

    iget-object v3, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v3}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->instance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-object v1

    :pswitch_0
    const v3, 0x2040298

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/htc/album/helper/FileOperationDialogManager$1;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {p3}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const v3, 0x7f0a018f

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v3, 0x7f0a0190

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v3, 0x7f0a018c

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/htc/album/helper/FileOperationDialogManager$1;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {p3}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    const v3, 0x7f0a0191

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v3, 0x7f0a0192

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x68561
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public createFolderDeleteDialog(Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 6

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    :cond_0
    new-instance v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_DELETE;-><init>(Lcom/htc/album/helper/FileOperationDialogManager;Landroid/content/Context;Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;)V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-object v0
.end method

.method public createFolderRenameDialog(Landroid/content/Context;Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    .locals 2

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    :cond_0
    new-instance v0, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_FOLDER_RENAME;-><init>(Lcom/htc/album/helper/FileOperationDialogManager;Landroid/content/Context;Ljava/lang/String;Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;)V

    iput-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    return-object v0
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    iput-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/htc/album/helper/FileOperationDialogManager;->mFindExistedFolderTask:Lcom/htc/album/helper/FileOperationDialogManager$FindExistedFolderTask;

    :cond_1
    return-void
.end method
