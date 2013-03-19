.class public Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;
.super Landroid/os/AsyncTask;
.source "PickerFolderCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CheckFolderExist"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mTargetFolderDisplayName:Ljava/lang/String;

.field private mTargetFolderLocation:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->mTargetFolderLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->mTargetFolderDisplayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->mTargetFolderLocation:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->mTargetFolderDisplayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->mTargetFolderLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/album/helper/FileOperationHelper;->isFolderExists(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    invoke-static {}, Lcom/htc/album/helper/FileOperationHelper;->cancel()V

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    const-string v1, "CheckFolderExist"

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->doCancel(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    iget-object v1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->mTargetFolderLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->mTargetFolderDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/PickerFolderCreateHelper;->folderDuplicateConfirm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PickerFolderCreateHelper"

    const-string v1, "folderExists"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->mTargetFolderLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/PickerFolderCreateHelper;->sendBackResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper$CheckFolderExist;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
