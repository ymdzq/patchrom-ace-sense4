.class Lcom/htc/album/helper/DeleteManager$DeleteTask;
.super Landroid/os/AsyncTask;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDoDeleteAll:Z

.field private mFileCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addFileCacheItemToList(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateTaken()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;-><init>(Ljava/lang/String;JJJ)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private startToRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/album/helper/RemoveFileCacheTask;

    invoke-direct {v0, p1, p2}, Lcom/htc/album/helper/RemoveFileCacheTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/htc/album/helper/RemoveFileCacheTask;->start()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/RemoveFileCacheTask;->postTask(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteEmptyFolder(Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v8, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageRootBucketID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[DeleteManager][deleteEmptyFolder] storage mount point can not be deleted."

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DeleteManager][deleteEmptyFolder] directory["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] has been deleted"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DeleteManager][deleteEmptyFolder] Delete directory["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/4 v13, 0x1

    const/16 v26, 0x1

    const-string v27, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :goto_0
    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[DeleteTask][doInBK] origin count "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v17

    const-string v26, "com.htc.HTCAlbum.LOCAL_FOLDER"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v24

    const/16 v18, -0x1

    const/4 v14, 0x1

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v26

    if-eqz v26, :cond_9

    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v26

    const-string v27, "[DeleteTask][doInBK] cancelled 1"

    invoke-static/range {v26 .. v27}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v14, 0x0

    :cond_4
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_5

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_5

    if-lez v24, :cond_5

    const/16 v26, -0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyFolder(Ljava/lang/String;)Z

    :cond_5
    :goto_2
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyFolder(Ljava/lang/String;)Z

    :cond_6
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$500()Lcom/htc/album/modules/collection/Collection;

    move-result-object v26

    if-eqz v26, :cond_23

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$500()Lcom/htc/album/modules/collection/Collection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Lcom/htc/album/helper/DeleteManager;->access$502(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/modules/collection/Collection;

    :goto_3
    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[DeleteTask][doInBK] result count "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->updateLastestInformation(Landroid/content/Context;)V

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    return-object v26

    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v10, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->addFileCacheItemToList(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;)V

    if-eqz v10, :cond_11

    if-nez v13, :cond_11

    const/16 v26, 0x1

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/FavoritesCollection;

    move/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    :cond_a
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    :cond_b
    new-instance v5, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v27

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->getPhotoCount()I

    move-result v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v26

    if-eqz v26, :cond_f

    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v26

    const-string v27, "[DeleteTask][doInBK] cancelled 2"

    invoke-static/range {v26 .. v27}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v14, 0x0

    :cond_d
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_e

    const/16 v26, -0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_e

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyFolder(Ljava/lang/String;)Z

    :cond_e
    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->release()V

    goto/16 :goto_4

    :cond_f
    invoke-virtual {v4, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v26

    if-eqz v26, :cond_10

    move/from16 v18, v8

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_10
    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v8}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto :goto_6

    :cond_11
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_12

    if-eqz v10, :cond_12

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    move/from16 v18, v21

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    if-nez v13, :cond_a

    if-eqz v10, :cond_a

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyFolder(Ljava/lang/String;)Z

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/16 v20, -0x1

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x1

    const-string v27, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    if-eqz v10, :cond_14

    const/16 v26, 0x1

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v20

    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    :cond_16
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_17
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v26

    if-eqz v26, :cond_19

    :cond_18
    const/16 v26, 0x1

    const-string v27, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    if-eqz v10, :cond_22

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->getCount()I

    move-result v26

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v27

    sub-int v26, v26, v27

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->startRequery()Z

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->expand()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v7

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[doInBackground] expand burst fail: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_19
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v10, v1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->addFileCacheItemToList(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/ArrayList;)V

    if-eqz v10, :cond_20

    if-nez v13, :cond_20

    const/16 v26, 0x1

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/FavoritesCollection;

    move/from16 v26, v0

    if-eqz v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto/16 :goto_8

    :cond_1a
    new-instance v5, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getBucketName()Ljava/lang/String;

    move-result-object v27

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->getPhotoCount()I

    move-result v6

    const/16 v18, 0x0

    const/4 v14, 0x1

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v26

    if-eqz v26, :cond_1e

    sget-boolean v26, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v26

    const-string v27, "[DeleteTask][doInBK] cancelled 3"

    invoke-static/range {v26 .. v27}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const/4 v14, 0x0

    :cond_1c
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_1d

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyFolder(Ljava/lang/String;)Z

    :cond_1d
    invoke-virtual {v5}, Lcom/htc/album/modules/collection/Collection;->release()V

    goto/16 :goto_8

    :cond_1e
    invoke-virtual {v4, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v26

    if-eqz v26, :cond_1f

    move/from16 v18, v8

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_1f
    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v8}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto :goto_a

    :cond_20
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    if-eqz v10, :cond_21

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    if-eqz v4, :cond_21

    if-eqz v16, :cond_21

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v11

    if-eqz v11, :cond_21

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v4, v11, v0}, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;->setBestShot(Lcom/htc/opensense2/album/util/ImageManager$IImage;Z)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    if-eqz v10, :cond_17

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isBurstFolder(Ljava/lang/String;)Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->deleteEmptyFolder(Ljava/lang/String;)Z

    goto/16 :goto_8

    :cond_22
    :try_start_1
    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v26

    const-string v27, "[doInBackground] image is null"

    invoke-static/range {v26 .. v27}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isBurstFolder(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v0, ".*/DCIM/[0-9]+BURST/.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 5

    const/high16 v4, 0x12

    const/4 v3, 0x1

    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DeleteTask][onCancelled] cancelled+"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->cancelDeleting()V

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v1, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteCancel()V

    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->startToRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_2
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/htc/album/helper/DeleteManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DeleteTask][onCancelled] cancelled-"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x12

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteEnd()V

    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    invoke-interface {v1, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    :goto_0
    iput-object v4, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFileCacheList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->startToRemoveFileCache(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    const/high16 v3, 0x12

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteStart()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
