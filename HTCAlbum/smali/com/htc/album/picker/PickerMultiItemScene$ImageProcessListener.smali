.class Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;
.super Ljava/lang/Object;
.source "PickerMultiItemScene.java"

# interfaces
.implements Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerMultiItemScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerMultiItemScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/picker/PickerMultiItemScene;Lcom/htc/album/picker/PickerMultiItemScene$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;-><init>(Lcom/htc/album/picker/PickerMultiItemScene;)V

    return-void
.end method

.method private sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener$1;-><init>(Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public OnCancelPirorProcess()V
    .locals 0

    return-void
.end method

.method public OnCancelProcessing()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/picker/PickerMultiItemScene;->access$600(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public OnProcessBegin()V
    .locals 0

    return-void
.end method

.method public OnProcessEnd(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 24

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$400(Lcom/htc/album/picker/PickerMultiItemScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResultCode()I

    move-result v19

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "picker_index_list"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "3d_image_index_list"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-eqz v10, :cond_3

    const-string v22, "request_htc_upload_list"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    :goto_1
    if-eqz v17, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.intent.extra.STREAM"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    const-string v22, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v21

    if-ge v11, v0, :cond_5

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v7, 0x0

    :goto_3
    move/from16 v0, v20

    if-ge v7, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_4

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v22, "com.htc.opensense.upload.URI"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "com.htc.opensense.upload.MIMETYPE"

    const-string v23, "image/jpeg"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "com.htc.opensense.upload.TITLE"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "com.htc.opensense.upload.DESCRIPTION"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v11, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual {v6}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v23 .. v23}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.intent.extra.STREAM"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    const-string v22, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v11, v0, :cond_9

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v7, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v7, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mGoStop:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$300(Lcom/htc/album/picker/PickerMultiItemScene;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_8

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v22 .. v22}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_4

    :cond_a
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    invoke-virtual {v6}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->this$0:Lcom/htc/album/picker/PickerMultiItemScene;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/album/picker/PickerMultiItemScene;->mPickerResult:Landroid/content/Intent;
    invoke-static/range {v23 .. v23}, Lcom/htc/album/picker/PickerMultiItemScene;->access$500(Lcom/htc/album/picker/PickerMultiItemScene;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/album/picker/PickerMultiItemScene$ImageProcessListener;->sendResultBack(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
