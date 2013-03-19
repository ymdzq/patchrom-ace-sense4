.class Lcom/htc/album/helper/ImageProcessManager$ProcessThread;
.super Ljava/lang/Thread;
.source "ImageProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ImageProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;
    }
.end annotation


# instance fields
.field private cancelProcess:Z

.field private currentProcessedBMP:Landroid/graphics/Bitmap;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mIsSDCardFull:Z

.field final synthetic this$0:Lcom/htc/album/helper/ImageProcessManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setPriority(I)V

    const-string v0, "ImageProcessor"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/ObserverAdapter;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    iput-boolean v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    iput-object p2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setPriority(I)V

    const-string v0, "ImageProcessor"

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setName(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_0
.end method

.method private DoRun(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1100(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][ImageProcessManager][ProcessThread][DoRun][Single]"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][ImageProcessManager][ProcessThread][DoRun][Single]cancelProcess"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v11, 0x0

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSaveToTheSameFolder:Z
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$2300(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v2, 0x0

    const-string v3, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]rootFolder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v19

    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image.getDataPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v10, p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v1, "/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    const-string v1, "."

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v16, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$902(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    :goto_2
    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    if-lt v15, v0, :cond_12

    move/from16 v0, v17

    invoke-virtual {v10, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    move-object/from16 v9, v22

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1402(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_13

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1602(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    :goto_4
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]resultDataPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1600(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]originalFolderOutputPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1600(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    :cond_b
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {v1, v2, v3, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v12

    goto/16 :goto_0

    :cond_c
    if-eqz p1, :cond_f

    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v13

    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v14

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const-string v2, "/mnt/sdcard/3DFlatten"

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    :goto_5
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v19

    goto/16 :goto_1

    :cond_d
    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const-string v2, "/mnt/sdcard/InkMerge"

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v7

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const/4 v2, 0x0

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1902(Lcom/htc/album/helper/ImageProcessManager;Z)Z

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]exception occured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_e
    :try_start_3
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][ImageProcessManager][ProcessThread]no image info to set saving root folder."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][ImageProcessManager][ProcessThread]image is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$902(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]can\'t get original folder, use default root folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]tempFileName trimmed length is 0, use default file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]can\'t get file name, use default file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p6

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1602(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_1
    move-exception v7

    move-object v11, v12

    goto/16 :goto_6
.end method

.method private DoRun(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->DoRun(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread]Cancel processing now..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->setPriority(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;->onProcessCancel()V

    :cond_1
    return-void
.end method

.method public checkFileExist(Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][checkFileExist]: fileCheck.exists()+"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][checkFileExist]: fileCheck.exists()-"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkSDCardFull()Z
    .locals 2

    const-wide/32 v0, 0x500000

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][checkSDCardFull]: Storage Size small than 5242880 byte, skip save to 2D."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    return v0
.end method

.method public clearCache(Ljava/lang/String;JJ)Z
    .locals 24

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][clearCache]: clearcache parameter NG !"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ImageProcessManager][clearCache]: Start, CurTime: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    sub-long v10, v6, p2

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v16, 0x0

    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_data"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "date_modified"

    aput-object v7, v4, v6

    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data like \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "date_modified"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "date_modified"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-nez v6, :cond_3

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "_data"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v6, "_id"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v6, "date_modified"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    new-instance v6, Ljava/lang/Long;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ImageProcessManager][clearCache]: Delete - ID: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Data: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", URI: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", ModifyTime: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v16, v16, 0x1

    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v6, v14

    cmp-long v6, v6, p4

    if-ltz v6, :cond_2

    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][ImageProcessManager][clearCache]: End, Delete "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " temp files, Use Time: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][clearCache]: delete cache NG !"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
.end method

.method public doProcessImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HTCAlbum][ImageProcessManager][doProcessImage IImage]"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    instance-of v0, p1, Lcom/htc/sunnyCore/IMediaData;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/htc/sunnyCore/IMediaData;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Lcom/htc/sunnyCore/IMediaData;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public doProcessImage(Lcom/htc/sunnyCore/IMediaData;)Landroid/graphics/Bitmap;
    .locals 18

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v15, :cond_3

    move-object/from16 v15, p1

    check-cast v15, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v8

    move-object/from16 v15, p1

    check-cast v15, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v15}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v9

    :goto_0
    if-eqz v8, :cond_14

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]is3D + "

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v14, -0x1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageSourceType()I

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mediaSourceType == IMediaData.SOURCE_FILE_PATH"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v11, :cond_2

    const-string v15, "image/jps"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v14

    :cond_2
    :goto_1
    if-nez v14, :cond_11

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const-wide/16 v16, 0x7d0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v14

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]image not instance of IImage"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v15, "image/mpo"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v14

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v12

    if-lez v12, :cond_5

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mpo file contains no photos!"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]FilePath is empty"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v15, 0x1

    if-ne v10, v15, :cond_d

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mediaSourceType == IMediaData.SOURCE_PARCEL_FILE_DESCRIPTOR"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    if-eqz v13, :cond_c

    if-eqz v11, :cond_b

    const-string v15, "image/jps"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v15, "image/mpo"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I

    move-result v14

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v12

    if-lez v12, :cond_a

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    :try_start_2
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mpo file contains no photos!"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_b
    :try_start_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result v14

    goto/16 :goto_1

    :catch_2
    move-exception v2

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]MediaData ParcelFileDescriptor is null"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const/4 v15, 0x2

    if-ne v10, v15, :cond_10

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]mediaSourceType == IMediaData.SOURCE_INPUT_STREAM"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/htc/sunnyCore/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_f

    :try_start_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v7, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromInputStream(ILjava/io/InputStream;Z)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    move-result v14

    goto/16 :goto_1

    :catch_3
    move-exception v2

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]MediaData InputStream is null"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]Unknown source type"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]is3D - "

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-nez v15, :cond_13

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HtcAlbum][ImageProcessManager][doProcessImage IMediaData]ScaladoLib2 FINISH bmp == null"

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    return-object v15

    :cond_14
    if-eqz v9, :cond_12

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]inInked + "

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[InkMergeManager][MergeThread]Call htcPaintMergeTool, image = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 v6, 0x0

    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v15, :cond_17

    move-object/from16 v6, p1

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    :cond_17
    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;
    invoke-static {v15}, Lcom/htc/album/helper/ImageProcessManager;->access$700(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    move-result-object v15

    new-instance v16, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$MergeListener;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->setMergeInfo(Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/PaintManager/Interface/IPaintMergeProgressListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;
    invoke-static {v15}, Lcom/htc/album/helper/ImageProcessManager;->access$700(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->asyncMerge()Z

    monitor-enter p0

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_18
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[HTCAlbum][ImageProcessManager][doProcessImage IMediaData]inInked - "

    invoke-static/range {v15 .. v16}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_4
    move-exception v3

    :try_start_7
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v15
.end method

.method public doProcessImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][doProcessImage] + "

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v5

    const/4 v3, -0x1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v8, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    move-object v0, p1

    move-object v1, p2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_1

    const-string v6, "image/jps"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    :cond_1
    :goto_0
    if-nez v3, :cond_5

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v5, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v3

    goto :goto_0

    :cond_2
    const-string v6, "image/mpo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][doProcessImage]mpo file contains no photos!"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][doProcessImage]FilePath is empty"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HtcAlbum][ImageProcessManager][doProcessImage]ScaladoLib2 FINISH bmp == null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HTCAlbum][ImageProcessManager][doProcessImage] - "

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v4
.end method

.method public finished()V
    .locals 13

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1900(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$2;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$2;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1100(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]mActivity is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v1, 0x440001

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v1, 0x44

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1600(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]resultDataPath is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1600(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/album/helper/ImageProcessManager;->access$2502(Lcom/htc/album/helper/ImageProcessManager;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]resultUri is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-ne v0, v5, :cond_a

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "orientation"

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2600(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]update = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-eq v0, v6, :cond_7

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-eq v0, v5, :cond_7

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2600(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$3;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$3;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_8
    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    :cond_9
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2600(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$2200(Lcom/htc/album/helper/ImageProcessManager;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/album/helper/ImageProcessManager;->access$1600(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v6

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/helper/ImageProcessManager;->handleRoutes(ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZI)V

    :goto_3
    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v0

    if-ne v0, v6, :cond_6

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "orientation"

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$2600(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/album/helper/ImageProcessManager;->access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]update = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ImageProcessManager][ProcessThread][finished]mActivity is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    instance-of v0, v10, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    if-eqz v0, :cond_d

    move-object v0, v10

    check-cast v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_d

    move-object v0, v10

    check-cast v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_d

    move-object v0, v10

    check-cast v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    iget-object v2, v10, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #calls: Lcom/htc/album/helper/ImageProcessManager;->shareMultiProcessedMedia()V
    invoke-static {v0}, Lcom/htc/album/helper/ImageProcessManager;->access$3000(Lcom/htc/album/helper/ImageProcessManager;)V

    goto/16 :goto_3
.end method

.method public generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProcessManager]candidate2 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%08X-%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$4;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    #calls: Lcom/htc/album/helper/ImageProcessManager;->setKeepScreenOn(Landroid/app/Activity;Z)V
    invoke-static {v0, v1, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$3100(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->isShareCancel:Z
    invoke-static {v0, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$002(Lcom/htc/album/helper/ImageProcessManager;Z)Z

    iput-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public run()V
    .locals 32

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][HTCAlbum][ImageProcessManager][ProcessThread]Start processing now..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;->onProcessStart()V

    :cond_1
    const-string v3, "/mnt/sdcard/3DFlatten"

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x5dc

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    const-string v3, "/mnt/sdcard/InkMerge"

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x5dc

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkSDCardFull()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v3, "/mnt/sdcard/3DFlatten"

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    const-string v3, "/mnt/sdcard/InkMerge"

    const-wide/32 v4, 0x15180

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->clearCache(Ljava/lang/String;JJ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkSDCardFull()Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1100(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread][Single]"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->position:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1200(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v17

    if-nez v17, :cond_4

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v19

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v21

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const-string v3, "/mnt/sdcard/3DFlatten"

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkFileExist(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]: File exist.. - strFullPath"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$902(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1402(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->featureID:I
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1500(Lcom/htc/album/helper/ImageProcessManager;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1400(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1602(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->isShareCancel:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$000(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-nez v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->finished()V

    goto/16 :goto_0

    :cond_8
    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    const-string v3, "/mnt/sdcard/InkMerge"

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image not 3D or image not inked"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, v29

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/album/helper/ImageProcessManager;->access$1602(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]: File not exist.. - strFullPath"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v8

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    invoke-direct/range {v2 .. v9}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->DoRun(Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread][Multi]"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->pickerResult:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1700(Lcom/htc/album/helper/ImageProcessManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "picker_index_list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1802(Lcom/htc/album/helper/ImageProcessManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_f
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkSDCardFull()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancelProcess:Z

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]cancelled"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    new-instance v24, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;-><init>(Lcom/htc/album/helper/ImageProcessManager;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v17

    if-nez v17, :cond_12

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_14
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image !is3D or isVideo"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v13, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]add image = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_16
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]image is3D or isInked"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v4

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->makeHashFileName(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->checkFileExist(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1a

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]: File exist... - strFullPath"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$902(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->generateFileNameInTheSameFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/helper/ImageProcessManager;->access$900(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/helper/ImageProcessManager;->access$1402(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    :cond_19
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager]add processedIImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1a
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ImageProcessManager][ProcessThread]: File not exist... - strFullPath"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->doProcessImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    :try_start_0
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdir()Z

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]image = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]image.getDataPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const/16 v31, 0x0

    new-instance v2, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProcessManager][ProcessThread]resultDataPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    :cond_20
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {v2, v3, v4, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->currentProcessedBMP:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v14, v15

    goto/16 :goto_4

    :catch_0
    move-exception v10

    :goto_5
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    :catch_1
    move-exception v10

    :goto_6
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mIsSDCardFull:Z

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$1900(Lcom/htc/album/helper/ImageProcessManager;)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v3, 0x440001

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->this$0:Lcom/htc/album/helper/ImageProcessManager;

    #getter for: Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/ImageProcessManager;->access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/high16 v3, 0x44

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->dismissFragmentDialog(I)Z

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread$1;-><init>(Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_0

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->release()V

    goto/16 :goto_0

    :catch_2
    move-exception v10

    move-object v14, v15

    goto :goto_6

    :catch_3
    move-exception v10

    move-object v14, v15

    goto :goto_5
.end method

.method public updateModifyTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-static {v8, p1, p2}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return v7

    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v1, v8, v10

    const-string v8, "date_modified"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v8, p0, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][ImageProcessManager][updateModifyTime]: UpdateTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/htc/album/helper/ImageProcessManager;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[HTCAlbum][ImageProcessManager][updateModifyTime]: updateModifyTime NG !"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
