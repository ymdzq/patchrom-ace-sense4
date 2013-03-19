.class public Lcom/htc/album/processor/ImageProcessorManager;
.super Ljava/lang/Object;
.source "ImageProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;,
        Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;,
        Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;,
        Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;,
        Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;,
        Lcom/htc/album/processor/ImageProcessorManager$ProcessDialogListener;,
        Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    }
.end annotation


# static fields
.field public static final DLG_STYLE_MULTIPLE_BASE:I = 0xc8

.field public static final DLG_STYLE_MULTIPLE_PICKER_3D2D_SELECTIONS:I = 0xc9

.field public static final DLG_STYLE_MULTIPLE_PICKER_FORCE_2D_ONLY:I = 0xca

.field public static final DLG_STYLE_MULTIPLE_PICKER_INK_SELECTIONS:I = 0xcb

.field public static final DLG_STYLE_MULTIPLE_SHARE_3D2D_SELECTIONS:I = 0xcc

.field public static final DLG_STYLE_MULTIPLE_SHARE_FORCE_2D_ONLY:I = 0xcd

.field public static final DLG_STYLE_MULTIPLE_SHARE_INK_SELECTIONS:I = 0xce

.field static final DLG_STYLE_PROCESSING:I = 0x12e

.field public static final DLG_STYLE_SINGLE_PICKER_3D2D_SELECTIONS:I = 0x65

.field public static final DLG_STYLE_SINGLE_PICKER_FORCE_2D_ONLY:I = 0x66

.field public static final DLG_STYLE_SINGLE_PICKER_INK_SELECTIONS:I = 0x67

.field public static final DLG_STYLE_SINGLE_SHARE_3D2D_SELECTIONS:I = 0x68

.field public static final DLG_STYLE_SINGLE_SHARE_FORCE_2D_ONLY:I = 0x69

.field public static final DLG_STYLE_SINGLE_SHARE_INK_SELECTIONS:I = 0x6a

.field static final DLG_STYLE_STORAGE_FULL:I = 0x12d

.field private static final DLG_STYLE_UNKNOWN:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

.field private dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

.field private mFragment:Landroid/app/Fragment;

.field private mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

.field private mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

.field private mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

.field private mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

.field private mRunningDlg:Landroid/app/DialogFragment;

.field private mRunningDlgId:I

.field private mSourceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    iput-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    iput-object p2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    new-instance v0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Lcom/htc/album/processor/ImageProcessorManager$1;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    new-instance v0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Lcom/htc/album/processor/ImageProcessorManager$1;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/DialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/processor/ImageProcessorManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/album/processor/ImageProcessorManager;I)I
    .locals 0

    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/processor/ImageProcessorManager;)Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    return-object v0
.end method

.method private getDlgStringIds(I)[I
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const v4, 0x7f0a00fb

    const v1, 0x7f0a00fc

    const v3, 0x7f0a00fe

    const v2, 0x7f0a00ff

    :goto_1
    const/4 v5, 0x4

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v5, 0x1

    aput v1, v0, v5

    const/4 v5, 0x2

    aput v3, v0, v5

    const/4 v5, 0x3

    aput v2, v0, v5

    goto :goto_0

    :sswitch_1
    const v4, 0x7f0a00ea

    const v1, 0x7f0a00eb

    const v3, 0x7f0a00ee

    const v2, 0x7f0a00ed

    goto :goto_1

    :sswitch_2
    const v4, 0x7f0a00fb

    const v1, 0x7f0a00fd

    const v3, 0x7f0a00fe

    const v2, 0x7f0a00ff

    goto :goto_1

    :sswitch_3
    const v4, 0x7f0a00ea

    const v1, 0x7f0a00ec

    const v3, 0x7f0a00ee

    const v2, 0x7f0a00ed

    goto :goto_1

    :sswitch_4
    const v4, 0x7f0a00f2

    const/16 v5, 0x94

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v6, :cond_0

    const v1, 0x7f0a00f4

    :goto_2
    const v3, 0x2040151

    const v2, 0x2040152

    goto :goto_1

    :cond_0
    const v1, 0x7f0a00f3

    goto :goto_2

    :sswitch_5
    const v4, 0x7f0a00f2

    const v1, 0x7f0a00f5

    const v3, 0x2040151

    const v2, 0x2040152

    goto :goto_1

    :sswitch_6
    const v4, 0x7f0a0100

    const v1, 0x7f0a0101

    const v3, 0x7f0a0106

    const v2, 0x7f0a0107

    goto :goto_1

    :sswitch_7
    const v4, 0x7f0a0100

    const v1, 0x7f0a0102

    const v3, 0x7f0a0106

    const v2, 0x7f0a0107

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_4
        0x67 -> :sswitch_6
        0x68 -> :sswitch_1
        0x69 -> :sswitch_4
        0x6a -> :sswitch_6
        0xc9 -> :sswitch_2
        0xca -> :sswitch_5
        0xcb -> :sswitch_7
        0xcc -> :sswitch_3
        0xcd -> :sswitch_5
        0xce -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method protected OnCancelPirorProcess(Landroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnCancelPirorProcess()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method protected OnCancelProcessing(Landroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnCancelProcessing()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method protected OnProcessEnd(Landroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnProcessEnd(Lcom/htc/album/processor/ImageProcessorManager;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public getFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/processor/FileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getFileList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResult()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public getResultCode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getResultCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSource()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected handleProcessedResult()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->getResultCode()I

    move-result v2

    sget-object v3, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleProcessedResult] Result Code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    instance-of v3, v3, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/16 v4, 0x12d

    invoke-interface {v3, v4, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/htc/album/processor/ImageProcessorManager;->OnCancelPirorProcess(Landroid/app/Dialog;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v6}, Lcom/htc/album/processor/ImageProcessorManager;->OnCancelProcessing(Landroid/app/Dialog;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v9, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v9, 0xc8

    if-ge p1, v9, :cond_1

    move v6, v7

    :goto_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->getDlgStringIds(I)[I

    move-result-object v4

    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    aget v8, v4, v8

    invoke-virtual {v9, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    aget v9, v4, v7

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    aget v8, v4, v10

    new-instance v9, Lcom/htc/album/processor/ImageProcessorManager$6;

    invoke-direct {v9, p0}, Lcom/htc/album/processor/ImageProcessorManager$6;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    aget v8, v4, v11

    new-instance v9, Lcom/htc/album/processor/ImageProcessorManager$5;

    invoke-direct {v9, p0, v6}, Lcom/htc/album/processor/ImageProcessorManager$5;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/album/processor/ImageProcessorManager$4;

    invoke-direct {v8, p0}, Lcom/htc/album/processor/ImageProcessorManager$4;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    move-object v2, v1

    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->getDlgStringIds(I)[I

    move-result-object v4

    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    aget v8, v4, v8

    invoke-virtual {v9, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    aget v9, v4, v7

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    aget v8, v4, v10

    new-instance v9, Lcom/htc/album/processor/ImageProcessorManager$9;

    invoke-direct {v9, p0, v6}, Lcom/htc/album/processor/ImageProcessorManager$9;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    aget v8, v4, v11

    new-instance v9, Lcom/htc/album/processor/ImageProcessorManager$8;

    invoke-direct {v9, p0}, Lcom/htc/album/processor/ImageProcessorManager$8;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/htc/album/processor/ImageProcessorManager$7;

    invoke-direct {v8, p0}, Lcom/htc/album/processor/ImageProcessorManager$7;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    move-object v2, v1

    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto/16 :goto_0

    :sswitch_2
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a0044

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v9, 0x7f0a0045

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x2040151

    new-instance v9, Lcom/htc/album/processor/ImageProcessorManager$10;

    invoke-direct {v9, p0}, Lcom/htc/album/processor/ImageProcessorManager$10;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    move-object v2, v1

    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto/16 :goto_0

    :sswitch_3
    new-instance v5, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v5, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00f6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v7}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    new-instance v7, Lcom/htc/album/processor/ImageProcessorManager$11;

    invoke-direct {v7, p0}, Lcom/htc/album/processor/ImageProcessorManager$11;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v5, v7}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v7, Lcom/htc/album/processor/ImageProcessorManager$12;

    invoke-direct {v7, p0}, Lcom/htc/album/processor/ImageProcessorManager$12;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    invoke-virtual {v5, v7}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v2, v5

    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x68 -> :sswitch_0
        0x69 -> :sswitch_1
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcc -> :sswitch_0
        0xcd -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    if-nez v2, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    const/4 v1, 0x0

    const/16 v6, 0xc8

    if-ge p1, v6, :cond_1

    move v3, v4

    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "ID"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "IDS"

    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->getDlgStringIds(I)[I

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v6, "RUNSINGLE"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sparse-switch p1, :sswitch_data_0

    move v4, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :sswitch_0
    new-instance v5, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;

    new-instance v6, Lcom/htc/album/processor/ImageProcessorManager$1;

    invoke-direct {v6, p0, v3}, Lcom/htc/album/processor/ImageProcessorManager$1;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-direct {v5, v0, v6}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;-><init>(Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    iget-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    iget-object v6, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DIALOG_3D_2D"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    :sswitch_1
    new-instance v5, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;

    new-instance v6, Lcom/htc/album/processor/ImageProcessorManager$2;

    invoke-direct {v6, p0, v3}, Lcom/htc/album/processor/ImageProcessorManager$2;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-direct {v5, v0, v6}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;-><init>(Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    iget-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    iget-object v6, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DLG_FORCE_2D"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    :sswitch_2
    new-instance v5, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;

    new-instance v6, Lcom/htc/album/processor/ImageProcessorManager$3;

    invoke-direct {v6, p0, v3}, Lcom/htc/album/processor/ImageProcessorManager$3;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V

    invoke-direct {v5, v0, v6}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorDialog;-><init>(Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    iget-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    iget-object v6, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DLG_YES_NO"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iput p1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    :sswitch_3
    const-string v5, "STORAGE_FULL"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v5, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    invoke-direct {v5, p0, v0, v8}, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    iget-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    iget-object v6, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DLG_STYLE_STORAGE_FULL"

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "PROCESSING"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v5, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    invoke-direct {v5, p0, v0, v8}, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;-><init>(Lcom/htc/album/processor/ImageProcessorManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    iget-object v5, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    iget-object v6, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DLG_PROCESSING"

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6a -> :sswitch_2
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_0
        0xcd -> :sswitch_1
        0xce -> :sswitch_2
        0x12d -> :sswitch_3
        0x12e -> :sswitch_4
    .end sparse-switch
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlg:Landroid/app/DialogFragment;

    const/16 v1, 0x64

    iput v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    invoke-virtual {v1}, Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;->dismiss()V

    :cond_1
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_storage_full:Lcom/htc/album/processor/ImageProcessorManager$DLG_STORAGE_FULL;

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    invoke-virtual {v1}, Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;->dismiss()V

    :cond_2
    iput-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->dlg_processing:Lcom/htc/album/processor/ImageProcessorManager$DLG_PROCESSING;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0xce -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_2
    .end sparse-switch
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[release] +++"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/processor/ImageProcessorManager;->stopProcessing()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    iget v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    :cond_0
    iput-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    iput-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    iput-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    const/16 v1, 0x64

    iput v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I

    sget-object v1, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[release] ---"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected runMultipleProcessor()V
    .locals 4

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->cancel()V

    :cond_0
    new-instance v0, Lcom/htc/album/processor/MultipleFlattenProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/processor/MultipleFlattenProcessor;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->setOnProcessListener(Lcom/htc/album/processor/BaseProcessor$OnProcessListener;)V

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->start()V

    return-void
.end method

.method protected runSingleProcessor()V
    .locals 4

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->cancel()V

    :cond_0
    new-instance v0, Lcom/htc/album/processor/SingleFlattenProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorHandler:Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/processor/SingleFlattenProcessor;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessorListener:Lcom/htc/album/processor/BaseProcessor$OnProcessListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->setOnProcessListener(Lcom/htc/album/processor/BaseProcessor$OnProcessListener;)V

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->start()V

    return-void
.end method

.method public startProcessing(ILandroid/content/Intent;)V
    .locals 4

    iput-object p2, p0, Lcom/htc/album/processor/ImageProcessorManager;->mSourceIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    sget-object v1, Lcom/htc/album/processor/ImageProcessorManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessorManager][startProcessing]mFragment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/processor/ImageProcessorManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hasDlg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopProcessing()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->cancel()V

    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager;->mProcessor:Lcom/htc/album/processor/FlattenBaseProcessor;

    return-void
.end method
