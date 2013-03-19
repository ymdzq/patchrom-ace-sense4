.class public Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "PickerFolderCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLG_FOLDER_CREATE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;
    }
.end annotation


# instance fields
.field mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;

.field mDialogMainView:Landroid/widget/LinearLayout;

.field mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

.field mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

.field mSupportStoragesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSupportStoragesList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;

    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSupportStoragesList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->popUpStorageSelector(Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V

    return-void
.end method

.method private popUpStorageSelector(Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    #calls: Lcom/htc/album/helper/PickerFolderCreateHelper;->isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$500(Lcom/htc/album/helper/PickerFolderCreateHelper;Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    iget-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_STORAGE_SELECTOR;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Landroid/content/Context;Ljava/util/ArrayList;Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;Lcom/htc/album/helper/PickerFolderCreateHelper$IStorageSelectorResultCallback;)V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    const-string v1, "DLG_STORAGE_SELECTOR"

    invoke-virtual {v0, v6, v1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "PickerFolderCreateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[popUpCreaetFolderDialog] fm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMainView()Landroid/widget/LinearLayout;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$200(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03003c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v4, 0x7f090067

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    iget-object v4, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->mAutoGenerateFileName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    iget-object v4, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->mAutoGenerateFileName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    new-array v4, v8, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xff

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSupportStoragesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v8, :cond_1

    const v4, 0x7f090068

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    const v4, 0x7f090069

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimButton;

    new-instance v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;)V

    iput-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mCallback:Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$StorageSelectorResultCallback;

    new-instance v4, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$1;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$1;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mSelectedStorage:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    invoke-virtual {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0193

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    const-string v1, "DLG_FOLDER_CREATE"

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->doCancel(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->getMainView()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f090067

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcAutoCompleteTextView;

    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20401ee

    new-instance v5, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$3;

    invoke-direct {v5, p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$3;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x2040174

    new-instance v5, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;

    invoke-direct {v5, p0, v2}, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE$2;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;Lcom/htc/widget/HtcAutoCompleteTextView;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    new-instance v3, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;

    iget-object v4, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mDialogMainView:Landroid/widget/LinearLayout;

    invoke-direct {v3, v4, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper$EditTextWatcher;-><init>(Landroid/view/View;Lcom/htc/dialog/HtcAlertDialog;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    #calls: Lcom/htc/album/helper/PickerFolderCreateHelper;->isDialogShowing(Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z
    invoke-static {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$500(Lcom/htc/album/helper/PickerFolderCreateHelper;Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$DLG_FOLDER_CREATE;->mStorageSelectorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->dismiss()V

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
