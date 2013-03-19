.class public Lcom/htc/album/picker/PickerMultiItemScene;
.super Lcom/htc/album/picker/PickerMultiItemBaseScene;
.source "PickerMultiItemScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerMultiItemScene$1;,
        Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;,
        Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;,
        Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;
    }
.end annotation


# static fields
.field private static final DIALOG_STYLE_LOADING:I = 0x2b11

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MSG_HIDE_LOADING:I = 0x2b12

.field private static final MSG_LOAD_COMPLETE:I = 0x2b10

.field private static final MSG_SHOW_LOADING:I = 0x2b11


# instance fields
.field private dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

.field private mGoStop:Z

.field private mHideMaxCount:Z

.field private mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

.field private mMaxPickCount:I

.field private mPickerResult:Landroid/content/Intent;

.field private mRequestWithFilePath:Z

.field private mTextConfirm:Ljava/lang/String;

.field private mTextTitle:Ljava/lang/String;

.field private mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;-><init>()V

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    iput-boolean v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mHideMaxCount:Z

    iput-boolean v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mRequestWithFilePath:Z

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextConfirm:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/picker/PickerMultiItemScene;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mRequestWithFilePath:Z

    return v0
.end method

.method private selectAll(Z)V
    .locals 9

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v8, v6, :cond_2

    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-le v1, v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "com.htc.HTCAlbum.LOCAL_FOLDER"

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    sub-int v4, v1, v6

    :cond_2
    move v3, v4

    :goto_1
    if-le v1, v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/htc/album/picker/PickerMultiItemScene;->isItemPicked(I)Z

    move-result v5

    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v8, v6, :cond_4

    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v6, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-ne v6, v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/htc/album/picker/PickerMultiItemScene;->isItemPicked(I)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][PickerMultiItemTemplateBase][selectAll]: max pick reached: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemScene;->invalidateControlBars()V

    goto :goto_0

    :cond_4
    xor-int v6, v5, p1

    if-eqz v6, :cond_5

    invoke-virtual {p0, v3}, Lcom/htc/album/picker/PickerMultiItemScene;->pickItem(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private sendBackResult(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[handleActivityMessage] Result OK"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_0
    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[handleActivityMessage] Result Failed"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleActivityMessage] Activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PickerResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected getConfirmText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextConfirm:Ljava/lang/String;

    return-object v0
.end method

.method protected getGridViewItemStyle()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/htc/album/picker/PickerMultiItemScene;->mIsTablet:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getSelectionCount()Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mHideMaxCount:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onConfirm()V
    .locals 3

    new-instance v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v0}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->start()V

    return-void
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/processor/ImageProcessorManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0x2b11

    if-ne p1, v1, :cond_1

    new-instance v1, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    invoke-direct {v1, p0, v2, v2}, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_LOADING"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1, p1}, Lcom/htc/album/processor/ImageProcessorManager;->onDismissFragmentDialog(I)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    const/16 v1, 0x2b11

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    invoke-virtual {v1}, Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;->dismiss()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->dlg_loading:Lcom/htc/album/picker/PickerMultiItemScene$DLG_LOADING;

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemScene;->onHandleActionBarBarLayoutChange()V

    const-string v0, "max_pick"

    const/16 v1, 0x3e7

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    const-string v0, "hide_max_pick_hint"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mHideMaxCount:Z

    const-string v0, "file_request_with_file_path"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mRequestWithFilePath:Z

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x204012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mTextConfirm:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onItemSelected(I)V
    .locals 4

    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/album/picker/PickerMultiItemScene;->isItemPicked(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mMaxPickCount:I

    if-ne v1, v0, :cond_0

    sget-object v1, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onItemSelected]: max pick reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onItemSelected(I)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v13, :cond_0

    invoke-super/range {p0 .. p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v13

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-super/range {p0 .. p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v13

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    invoke-super/range {p0 .. p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v13

    goto :goto_0

    :pswitch_0
    if-eqz v5, :cond_2

    instance-of v13, v5, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v13, :cond_2

    check-cast v5, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/16 v13, 0x2b11

    const/4 v14, 0x0

    invoke-interface {v5, v13, v14}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    :cond_2
    :goto_1
    const/4 v13, 0x0

    goto :goto_0

    :pswitch_1
    if-eqz v5, :cond_2

    instance-of v13, v5, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v13, :cond_2

    check-cast v5, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/16 v13, 0x2b11

    invoke-interface {v5, v13}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    iget-boolean v13, v13, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    if-eqz v13, :cond_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v12, :cond_5

    const-string v13, "3d_image_index_list"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v13, "disable_2d_conversion"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_7

    const-string v13, "video/*"

    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const/4 v10, 0x1

    :goto_2
    const-string v13, "ink_index_list"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    const-string v13, "video/*"

    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v11, 0x1

    :cond_5
    :goto_3
    if-eqz v10, :cond_6

    if-eqz v11, :cond_6

    sget-object v13, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    const-string v14, "[HTCAlbum][steven]Not defined yet!"

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v10, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v13}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->getConversionIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v13, Lcom/htc/album/processor/ImageProcessorManager;

    new-instance v14, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/picker/PickerMultiItemScene$1;)V

    invoke-direct {v13, v5, v14}, Lcom/htc/album/processor/ImageProcessorManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    const/16 v2, 0xcc

    const-string v13, "force_2d_result"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v13, "do_share"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v4, :cond_9

    const/16 v2, 0xcd

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v13, v2, v1}, Lcom/htc/album/processor/ImageProcessorManager;->startProcessing(ILandroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    const/16 v2, 0xcc

    goto :goto_4

    :cond_a
    if-eqz v4, :cond_b

    const/16 v2, 0xca

    :goto_5
    goto :goto_4

    :cond_b
    const/16 v2, 0xc9

    goto :goto_5

    :cond_c
    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v13}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->getConversionIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v13, Lcom/htc/album/processor/ImageProcessorManager;

    new-instance v14, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/picker/PickerMultiItemScene$1;)V

    invoke-direct {v13, v5, v14}, Lcom/htc/album/processor/ImageProcessorManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    const/16 v2, 0xce

    const-string v13, "do_share"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v2, 0xce

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v13, v2, v1}, Lcom/htc/album/processor/ImageProcessorManager;->startProcessing(ILandroid/content/Intent;)V

    goto/16 :goto_1

    :cond_d
    const/16 v2, 0xcb

    goto :goto_6

    :cond_e
    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/htc/album/picker/PickerMultiItemScene;->sendBackResult(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2b10
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :goto_0
    return v1

    :sswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x204014f

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/album/picker/PickerMultiItemScene;->selectAll(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x204014f -> :sswitch_0
        0x20401f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, -0x1

    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "max_pick"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    if-eq v6, v1, :cond_1

    if-le v1, v2, :cond_2

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/htc/album/picker/PickerItemBaseScene;->prepareSelectMenuItem(Landroid/view/Menu;II)Z

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v1}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->stopLoading()V

    :try_start_0
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    invoke-virtual {v1}, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_0
    iput-object v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mWorker:Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1}, Lcom/htc/album/processor/ImageProcessorManager;->release()V

    :cond_1
    iput-object v2, p0, Lcom/htc/album/picker/PickerMultiItemScene;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-super {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onStop()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/picker/PickerMultiItemScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method
