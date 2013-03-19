.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->initFileOperationManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field changedPosition:[I

.field isMoveFile:Z

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->changedPosition:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->isMoveFile:Z

    return-void
.end method


# virtual methods
.method public onFileOperationBegin()V
    .locals 8

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v7}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v6

    sget-object v7, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_MOVE:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->isMoveFile:Z

    :cond_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v7}, Lcom/htc/album/helper/FileOperationManager;->getSourceFiles()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [I

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->changedPosition:[I

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v7}, Lcom/htc/album/helper/FileOperationManager;->getSourceFiles()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->changedPosition:[I

    add-int/lit8 v2, v3, 0x1

    aput v1, v7, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public onFileOperationEnd(I)V
    .locals 7

    sget-boolean v4, Lcom/htc/album/helper/FileOperationManager;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SceneLocalPhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][onFileOPEnd] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$2500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    new-instance v3, Lcom/htc/album/helper/CollectionRequeryTask;

    const v4, 0x7f0a014c

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1;

    invoke-direct {v5, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;)V

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/htc/album/helper/CollectionRequeryTask;-><init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/htc/album/helper/CollectionRequeryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v4, "SceneLocalPhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneLocalPhotoThumbnail][onFileOPEnd] File operation success."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v4, v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOperationDialogMgr:Lcom/htc/album/helper/FileOperationDialogManager;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget-object v5, v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v5}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v5

    invoke-virtual {v4, v0, p1, v5}, Lcom/htc/album/helper/FileOperationDialogManager;->createFileOperationErrorDialog(Landroid/app/Activity;ILcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "SceneLocalPhotoThumbnail"

    invoke-virtual {v2, v4, v5}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v4, "SceneLocalPhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneLocalPhotoThumbnail][onFileOPEnd] File operation cancelled."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x68560
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
