.class public Lcom/htc/album/helper/ThreeDConvertFragment;
.super Landroid/app/Fragment;
.source "ThreeDConvertFragment.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/ThreeDConvertFragment$1;,
        Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

.field private mSelectSharedPkgName:Ljava/lang/String;

.field private mShareIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/helper/ThreeDConvert;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mSelectSharedPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/helper/ThreeDConvertFragment;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private checkShareIntent()Z
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    const-string v8, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    const-string v8, "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    const-string v8, "SharedAdapter.KEY_CLASS_NAME"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v7, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] Uri is null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v6

    :cond_0
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v7, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] MimeType is null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v2, :cond_2

    sget-object v7, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] ClassName is null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    iput-object v3, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mSelectSharedPkgName:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v6, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v6, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] Uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] MimeType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] PkgName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mSelectSharedPkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] ClassName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_3
    if-eqz v4, :cond_4

    iput-object v4, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mSelectSharedPkgName:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] PackageName is null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private selectConvert()V
    .locals 5

    new-instance v2, Lcom/htc/album/processor/ImageProcessorManager;

    new-instance v3, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;-><init>(Lcom/htc/album/helper/ThreeDConvertFragment;Lcom/htc/album/helper/ThreeDConvertFragment$1;)V

    invoke-direct {v2, p0, v3}, Lcom/htc/album/processor/ImageProcessorManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V

    iput-object v2, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mSelectSharedPkgName:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/album/helper/MenuManager;->support3DShare(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/16 v0, 0x68

    if-eqz v1, :cond_1

    const/16 v0, 0x69

    :goto_1
    iget-object v2, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0, v3}, Lcom/htc/album/processor/ImageProcessorManager;->startProcessing(ILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x68

    goto :goto_1
.end method


# virtual methods
.method public dismissFragmentDialog(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1, p1}, Lcom/htc/album/processor/ImageProcessorManager;->onDismissFragmentDialog(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[onCreate]"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/album/helper/ThreeDConvertFragment;->checkShareIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/album/helper/ThreeDConvertFragment;->selectConvert()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Lcom/htc/album/processor/ImageProcessorManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public showFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/album/processor/ImageProcessorManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    return v0
.end method
