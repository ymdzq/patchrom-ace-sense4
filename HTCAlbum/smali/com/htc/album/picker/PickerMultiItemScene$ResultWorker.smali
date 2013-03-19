.class Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;
.super Ljava/lang/Thread;
.source "PickerMultiItemScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerMultiItemScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultWorker"
.end annotation


# instance fields
.field mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field mCallerIntent:Landroid/content/Intent;

.field mConversionIntent:Landroid/content/Intent;

.field mStop:Z

.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemScene;


# direct methods
.method public constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iput-object p3, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    return-void
.end method


# virtual methods
.method public getConversionIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public run()V
    .locals 28

    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "[ResultWorker][run] ++"

    invoke-static/range {v24 .. v25}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    const/16 v25, 0x2b11

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v24, 0x14

    move/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v14, Ljava/util/ArrayList;

    const/16 v24, 0x14

    move/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v15, Ljava/util/ArrayList;

    const/16 v24, 0x14

    move/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mCallerIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "request_htc_upload_list"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    :goto_0
    if-eqz v19, :cond_6

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v23

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    const/16 v24, 0x14

    move/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    move/from16 v24, v0

    if-nez v24, :cond_11

    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "[ResultWorker][run] Load completed!!"

    invoke-static/range {v24 .. v25}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    #setter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v25}, Lcom/htc/album/picker/PickerMultiItemScene;->access$502(Lcom/htc/album/picker/PickerMultiItemScene;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    const-string v25, "3d_image_index_list"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    const-string v25, "ink_index_list"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mConversionIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "android.intent.extra.STREAM"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_4
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    const-string v25, "picker_index_list"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mRequestWithFilePath:Z
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$700(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v24

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    const-string v25, "android.intent.extra.STREAM"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_4
    if-ne v8, v3, :cond_f

    const-string v22, "image/*"

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    const/16 v25, 0x2b12

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    const/16 v25, 0x2b10

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Lcom/htc/album/picker/PickerMultiItemScene;->onPostMessage(ILjava/lang/Object;I)V

    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "[ResultWorker][run] --"

    invoke-static/range {v24 .. v25}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v20

    check-cast v20, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v20, :cond_0

    :try_start_0
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v21

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v24

    if-nez v24, :cond_b

    new-instance v24, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_7
    if-eqz v19, :cond_9

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v24, "com.htc.opensense.upload.URI"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "com.htc.opensense.upload.TITLE"

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "com.htc.opensense.upload.DESCRIPTION"

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mRequestWithFilePath:Z
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$700(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v24

    if-eqz v24, :cond_c

    move/from16 v24, v4

    :goto_8
    or-int v8, v8, v24

    goto/16 :goto_2

    :cond_b
    invoke-interface/range {v20 .. v20}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v24

    if-eqz v24, :cond_8

    new-instance v24, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v16

    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[ResultWorker][run] Error: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    goto/16 :goto_3

    :cond_c
    move/from16 v24, v3

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v24 .. v24}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v24

    const-string v25, "android.intent.extra.STREAM"

    if-eqz v19, :cond_e

    :goto_9
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_4

    :cond_e
    move-object v13, v12

    goto :goto_9

    :cond_f
    if-ne v8, v4, :cond_10

    const-string v22, "video/*"

    goto/16 :goto_5

    :cond_10
    const-string v22, "*/*"

    goto/16 :goto_5

    :cond_11
    invoke-static {}, Lcom/htc/album/picker/PickerMultiItemScene;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "[ResultWorker][run] Loading canceled!!"

    invoke-static/range {v24 .. v25}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemScene$ResultWorker;->mStop:Z

    return-void
.end method
