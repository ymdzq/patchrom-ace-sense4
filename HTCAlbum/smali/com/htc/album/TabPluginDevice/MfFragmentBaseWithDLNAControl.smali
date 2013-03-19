.class public Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;
.super Lcom/htc/app/mf/MfFragment;
.source "MfFragmentBaseWithDLNAControl.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Landroid/widget/BaseAdapter;",
        ">",
        "Lcom/htc/app/mf/MfFragment;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;"
    }
.end annotation


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

.field private mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

.field private mEnableDLNAControl:Z

.field protected mLoadingText:Ljava/lang/String;

.field private mParentActivity:Landroid/app/Activity;

.field private mPassLaunchCheckInResume:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/app/mf/MfFragment;-><init>()V

    const-string v0, "MfFragmentBaseWithDLNAControl"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mEnableDLNAControl:Z

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mParentActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mLoadingText:Ljava/lang/String;

    new-instance v0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$1;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismissFragmentDialog(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->hideProgressDialog()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x2728 -> :sswitch_0
    .end sparse-switch
.end method

.method public enable2Pane()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected enableDLNAControl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mEnableDLNAControl:Z

    return-void
.end method

.method public enableDropList()V
    .locals 0

    return-void
.end method

.method protected hideProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    return-void
.end method

.method public onBackPressedOverride()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->enableActionBarUpdate()Z

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onEnableActionBarBackButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onEnableActionBarAppButton()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onUpdateActionBarTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->onUpdateActionBarSecondaryTitle()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-static/range {v0 .. v8}, Lcom/htc/sunny2/common/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;Landroid/view/View$OnClickListener;ZZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public paneRight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showDialogErrorCommunication()V
    .locals 3

    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CONNECTION_ERROR;->instance()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected showDialogNoAuthorization()V
    .locals 0

    return-void
.end method

.method protected showDialogNoConnection()V
    .locals 3

    new-instance v0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl$2;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;)V

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_NO_CONNECTION;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->showProgressDialog()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->showDialogErrorCommunication()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->showDialogNoConnection()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->showDialogNoAuthorization()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40a -> :sswitch_3
        0x2724 -> :sswitch_0
        0x272b -> :sswitch_1
        0x272c -> :sswitch_2
    .end sparse-switch
.end method

.method protected showProgressDialog()V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mLoadingText:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->mDialogProgressLoading:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentBaseWithDLNAControl;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
