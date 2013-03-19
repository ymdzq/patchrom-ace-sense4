.class Lcom/android/camera/component/IndicatorsUI$16;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter(Lcom/android/camera/CameraMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;

.field final synthetic val$mode:Lcom/android/camera/CameraMode;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/CameraMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$16;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iput-object p2, p0, Lcom/android/camera/component/IndicatorsUI$16;->val$mode:Lcom/android/camera/CameraMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/IndicatorsUI$16;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/IndicatorsUI$16;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    sget-object v2, Lcom/android/camera/component/IndicatorsUI$17;->$SwitchMap$com$android$camera$io$StorageState:[I

    iget-object v1, v8, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/IndicatorsUI$16;->this$0:Lcom/android/camera/component/IndicatorsUI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/IndicatorsUI$16;->this$0:Lcom/android/camera/component/IndicatorsUI;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI$16;->val$mode:Lcom/android/camera/CameraMode;

    move-object/from16 v16, v0

    aput-object v16, v6, v15

    const/4 v15, 0x1

    aput-object v12, v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/IndicatorsUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/IndicatorsUI$16;->val$mode:Lcom/android/camera/CameraMode;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_1

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v9

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-ltz v1, :cond_0

    const/16 v1, 0xa

    invoke-static {v9, v10, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v7, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/IndicatorsUI$16;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$2000(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request from MMS, not need to update free length"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v7, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/IndicatorsUI$16;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$2100(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request from Notes, not need to update free length"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v1, v8, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v11, v7, v1}, Lcom/android/camera/RecordLimitCheck;->setByteRate(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)V

    iget-object v1, v8, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v2, v3, v4}, Lcom/android/camera/RecordLimitCheck;->remainTime(Lcom/android/camera/io/StorageSlot;JZ)J

    move-result-wide v13

    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/IndicatorsUI$16;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->convertToRemainingTimeString(J)Ljava/lang/String;
    invoke-static {v1, v13, v14}, Lcom/android/camera/component/IndicatorsUI;->access$2200(Lcom/android/camera/component/IndicatorsUI;J)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
