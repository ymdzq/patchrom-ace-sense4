.class public Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;
.super Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
.source "HtcDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/HtcDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLG_CUSTOM_VIEW"
.end annotation


# static fields
.field private static mFragment:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;


# instance fields
.field private mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

.field private mDlgCustomView:Landroid/view/View;

.field private mDlgTitle:Ljava/lang/String;

.field private mIsShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    invoke-direct {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;-><init>()V

    sput-object v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mFragment:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgCustomView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mIsShown:Z

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;)Lcom/htc/album/helper/HtcDialogManager$IDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mIsShown:Z

    return p1
.end method

.method public static instance()Landroid/app/DialogFragment;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mFragment:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    return-object v0
.end method


# virtual methods
.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mIsShown:Z

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    iget-object v1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgCustomView:Landroid/view/View;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mIsShown:Z

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040174

    new-instance v4, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW$1;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW$1;-><init>(Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setCallback(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mCallback:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgCustomView:Landroid/view/View;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->mDlgTitle:Ljava/lang/String;

    return-void
.end method
