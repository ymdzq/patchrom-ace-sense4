.class public Lcom/htc/album/DetailDlgActivity;
.super Landroid/app/Activity;
.source "DetailDlgActivity.java"

# interfaces
.implements Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

.field private mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mbCreate:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-class v0, Lcom/htc/album/DetailDlgActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    iput-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    new-instance v0, Lcom/htc/album/DetailDlgParams;

    invoke-direct {v0}, Lcom/htc/album/DetailDlgParams;-><init>()V

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    return-void
.end method

.method private CreateDetailDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Lcom/htc/album/DetailDlgParams;->IsLocalFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/album/DetailDlgActivity;->CreateDetailDialog_LocalFile()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Lcom/htc/album/DetailDlgParams;->IsRemoteFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/album/DetailDlgActivity;->CreateDetailDialog_RemoteFile()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private CreateDetailDialog_LocalFile()Z
    .locals 10

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    if-nez v1, :cond_3

    :cond_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DetailDlgActivity:CreateDetailDialog()-2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mDetailsViewHelper = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v8, v0

    :cond_2
    :goto_0
    return v8

    :cond_3
    iget-boolean v1, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    if-ne v1, v2, :cond_5

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "DetailDlgActivity:CreateDetailDialog()-3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v8, v0

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    if-nez v3, :cond_6

    move v8, v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/helper/DetailsViewHelper;->showImageDetails_FromLocal(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    :cond_7
    :goto_1
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DetailDlgActivity:CreateDetailDialog()-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v9

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DetailDlgActivity:CreateDetailDialog():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private CreateDetailDialog_RemoteFile()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    if-ne v2, v1, :cond_1

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "DetailDlgActivity:CreateDetailDialog_RemoteFile()-1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    iget-object v3, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v2, p0, p0, v3, v0}, Lcom/htc/album/helper/DetailsViewHelper;->showImageDetails_FromDetailDlg(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Z

    iput-boolean v1, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public OnEndDlgCallBack()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "OnEndDlgCallBack trigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DetailDlgActivity:onCreate()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/DetailDlgParams;->GetExtraParam(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/album/DetailDlgActivity;->requestWindowFeature(I)Z

    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/DetailsViewHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Lcom/htc/album/DetailDlgParams;->IsLocalFile()Z

    move-result v0

    if-ne v5, v0, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v3}, Lcom/htc/album/DetailDlgParams;->GetDataLocation()Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v4}, Lcom/htc/album/DetailDlgParams;->GetIncludes()I

    move-result v4

    iget-object v6, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v6}, Lcom/htc/album/DetailDlgParams;->GetWhere()Ljava/lang/String;

    move-result-object v7

    move v6, v5

    move-object v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_2
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DetailDlgActivity:onCreate()-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DetailDlgActivity:onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-virtual {v0}, Lcom/htc/album/helper/DetailsViewHelper;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DetailDlgActivity::onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DetailDlgActivity:onResume()+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/htc/album/DetailDlgActivity;->CreateDetailDialog()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->finish()V

    :cond_1
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DetailDlgActivity:onResume()-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DetailDlgActivity:onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->finish()V

    return-void
.end method
