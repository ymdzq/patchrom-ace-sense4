.class public Lcom/htc/album/helper/PickerFolderCreateHelper;
.super Ljava/lang/Object;
.source "PickerFolderCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;,
        Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PickerFolderCreateHelper"

.field private static final TEXTVIEW_MAX_INPUT_WORDS:I = 0xff


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;

.field private mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

.field private mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field private mFileOperationType:I

.field private mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

.field private mSelectedFiles:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFileOperationType:I

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mSelectedFiles:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->popUpCreaetFolderDialog(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/helper/PickerFolderCreateHelper;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFileOperationType:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->getFolderPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/helper/PickerFolderCreateHelper;Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z

    move-result v0

    return v0
.end method

.method private static getDefaultPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getDefaultStorageRootPaths(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/StorageInfo;

    invoke-virtual {v1}, Lcom/htc/album/helper/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "PickerFolderCreateHelper"

    const-string v2, "FileOperationHelper.getDefaultStorageRootPaths return size 0"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/"

    goto :goto_0
.end method

.method public static getFolderPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->getDefaultPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-string v2, "PickerFolderCreateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getFolderPath] collection.getCoverImage().mFilePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "PickerFolderCreateHelper"

    const-string v3, "[getFolderPath] collection.getCoverImage().mFilePath is null. "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getFolderPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method private popUpCreaetFolderDialog(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    const-string v2, "DLG_FOLDER_CREATE"

    invoke-virtual {v1, v0, v2}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "PickerFolderCreateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[popUpCreaetFolderDialog] fm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFileOperationType(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFileOperationType:I

    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mSelectedFiles:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancelRunningTask()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/album/helper/FileOperationHelper;->cancel()V

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    :cond_3
    return-void
.end method

.method public checkFolderExist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->cancelRunningTask()V

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFileOperationType:I

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mSelectedFiles:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public doCancel(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->sendBackResult(ILjava/lang/String;)V

    const-string v0, "PickerFolderCreateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCancel] Action has canelled, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public folderDuplicateConfirm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_DUPLICATE_CONFIRM;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    const-string v2, "DLG_FOLDER_DUPLICATE_CONFIRM"

    invoke-virtual {v1, v0, v2}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "PickerFolderCreateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[folderDuplicateConfirm] fm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    invoke-virtual {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCreateFolderDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-direct {p0, v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCheckFolderExist:Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;

    invoke-virtual {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mFolderDuplicateConfirmDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-direct {p0, v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendBackResult(ILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;

    invoke-interface {v1, p1, p2}, Lcom/htc/album/helper/PickerFolderCreateHelper$IPickerFolderCreateResultCallback;->onResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PickerFolderCreateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendBackResult] mCallback.onResult ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "PickerFolderCreateHelper"

    const-string v2, "[sendBackResult]mCallback null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCreateFolderDialog(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->cancelRunningTask()V

    invoke-direct {p0, p1, p2}, Lcom/htc/album/helper/PickerFolderCreateHelper;->setFileOperationType(ILjava/lang/String;)V

    new-instance v0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper;->mRequestNewFolderNameTask:Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
