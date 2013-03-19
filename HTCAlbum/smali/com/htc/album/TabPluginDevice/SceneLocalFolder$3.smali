.class Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;
.super Ljava/lang/Object;
.source "SceneLocalFolder.java"

# interfaces
.implements Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->initFileOperationManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

.field final synthetic val$dialogListener:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->val$dialogListener:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileOperationBegin()V
    .locals 9

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$000(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v6}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v5

    const/4 v4, 0x0

    sget-object v6, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$7;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {v5}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    :goto_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "SceneLocalFolder"

    invoke-virtual {v6, v7, v8}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    const v6, 0x7f0a014c

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->val$dialogListener:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    invoke-static {v6, v4}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v6

    check-cast v6, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v6, v8, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v6, v7}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->setCancelable(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v6}, Lcom/htc/album/helper/FileOperationManager;->getAlbumCollection()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v6, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    const v6, 0x7f0a006b

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->val$dialogListener:Lcom/htc/album/helper/HtcDialogManager$IDialogListener;

    invoke-static {v6, v4}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v6

    check-cast v6, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v6, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_1

    :cond_3
    const v6, 0x7f0a006a

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFileOperationEnd(I)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v7}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    :cond_1
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$100(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$200(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    :cond_2
    const/4 v2, 0x0

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v7}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v6

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRefreshAdapter()V

    goto :goto_0

    :pswitch_1
    const-string v7, "SceneLocalFolder"

    const-string v8, "[HTCAlbum][SceneLocalFolder][onFileOPEnd] File operation success."

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$7;->$SwitchMap$com$htc$album$helper$FileOperationManager$PROCESS_TYPE:[I

    invoke-virtual {v6}, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v7}, Lcom/htc/album/helper/FileOperationManager;->getTargetFiles()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcom/htc/album/helper/FileOperationHelper;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$600(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-direct {v2, v7, v8, v1, v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$700(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget v8, v8, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationIndex:I

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->removeItem(I)V

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$800(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget v9, v8, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationIndex:I

    move-object v8, v2

    check-cast v8, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    invoke-virtual {v7, v9, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->addItem(ILcom/htc/album/TabPluginDevice/AlbumCollection;)V

    goto :goto_1

    :pswitch_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$300(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget v8, v8, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationIndex:I

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/collection/Collection;

    if-eqz v2, :cond_4

    const-string v7, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$400(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget v8, v8, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOperationIndex:I

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->removeItem(I)V

    :cond_4
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$3;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->access$500(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->notifyDataSetChanged()V

    goto/16 :goto_1

    :pswitch_4
    const-string v7, "SceneLocalFolder"

    const-string v8, "[HTCAlbum][SceneLocalFolder][onFileOPEnd] File operation failed."

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_RENAME_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v6, v7, :cond_3

    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager;->scanExternalStorage(Landroid/app/Activity;)V

    goto/16 :goto_1

    :pswitch_5
    const-string v7, "SceneLocalFolder"

    const-string v8, "[HTCAlbum][SceneLocalFolder][onFileOPEnd] File operation cancelled."

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_RENAME_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v6, v7, :cond_3

    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager;->scanExternalStorage(Landroid/app/Activity;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x68560
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
