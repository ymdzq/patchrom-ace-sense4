.class Lcom/android/camera/CameraThread$MainHandler;
.super Landroid/os/Handler;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 32

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - SET_RESOLUTION start mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mCameraDevice is null in SET_RESOLUTION message"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Resolution: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/camera/CameraThread$21;->$SwitchMap$com$android$camera$CameraMode:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraMode;

    invoke-virtual {v2}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->stopPreview()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1002(Lcom/android/camera/CameraThread;Z)Z

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - SET_RESOLUTION end mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :sswitch_2
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - START_PREVIEW start mode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCanStartPreview:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_image_ratio"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$502(Lcom/android/camera/CameraThread;I)I

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v31

    #setter for: Lcom/android/camera/CameraThread;->Camera_Mode_Width:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$602(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v19

    #setter for: Lcom/android/camera/CameraThread;->Camera_Mode_Height:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$702(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$502(Lcom/android/camera/CameraThread;I)I

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v31

    #setter for: Lcom/android/camera/CameraThread;->Video_Mode_Width:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$802(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v19

    #setter for: Lcom/android/camera/CameraThread;->Video_Mode_Height:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState != CAPTURE_STATE_IDLE, waiting for camera close"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/CameraType;

    #calls: Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/CameraType;I)I
    invoke-static {v3, v2, v4}, Lcom/android/camera/CameraThread;->access$1300(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraType;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlock3DSwitch(Z)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x49

    const-wide/16 v5, 0x6a4

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x48

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    :cond_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW_DIRECTLY start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal()I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1400(Lcom/android/camera/CameraThread;)I

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW_DIRECTLY end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - OPEN_CAMERA start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/CameraType;

    #calls: Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/CameraType;)I
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraType;)I

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - OPEN_CAMERA end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - WAIT_SELFTIMER start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkCanTakePicture()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const-string v2, "CameraThread"

    const-string v3, "mTaking_picture == true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/TakingPictureFailedReason;->InvalidState:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "CameraThread"

    const-string v3, "WAIT_SELFTIMER"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const-string v2, "CameraThread"

    const-string v3, "take picture, video snapshot is not supported"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/TakingPictureFailedReason;->InvalidState:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkInternalDataSpace()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "CameraThread"

    const-string v3, "Low internal data space"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/TakingPictureFailedReason;->LowInternalDataSpace:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v2}, Lcom/android/camera/SelfTimerValue;->getIntergerValue()I

    move-result v28

    :goto_3
    if-lez v28, :cond_c

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start SelfTimer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v5, 0x0

    move/from16 v0, v28

    move/from16 v1, v28

    invoke-static {v2, v3, v0, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_4
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - WAIT_SELFTIMER end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v28, 0x0

    goto :goto_3

    :cond_c
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - no self timer, take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_4

    :sswitch_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_ERROR, can\'t take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v18, Lcom/android/camera/TakingPictureFailedReason;->StorageError:Lcom/android/camera/TakingPictureFailedReason;

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkImageQueueState()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1900(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v18, Lcom/android/camera/TakingPictureFailedReason;->ImageQueueIsFull:Lcom/android/camera/TakingPictureFailedReason;

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE end, mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "Really take picture - mCaptureState = CAPTURE_STATE_TAKING_PICTURE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->capture()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2000(Lcom/android/camera/CameraThread;)V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA_DELAYED start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA_DELAYED end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :sswitch_8
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - CLOSE_CAMERA start mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->closeCamera()V

    :goto_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v17

    const-string v2, "CameraThread"

    const-string v3, "Exception"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :pswitch_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "CameraThread"

    const-string v3, "Waiting for auto-focus before capture, cancel capture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2102(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2206(Lcom/android/camera/CameraThread;)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    sget-object v5, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v3, v5}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "CameraThread"

    const-string v3, "Taking picture, close camera later"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState == CAPTURE_STATE_TAKING_PICTURE, not close camera, waiting ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x2

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_WAITING_CLOSE_CAMERA"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "CameraThread"

    const-string v3, "Recording video, close camera later"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto/16 :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_6

    :sswitch_9
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - QUIT_CAMERA_THREAD start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_14

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState != CAPTURE_STATE_IDLE, not quit camera thread, waiting ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x3

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_WAITING_QUIT_THREAD"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1202(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->closeCamera()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Looper;->quit()V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - QUIT_CAMERA_THREAD end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkInternalDataSpace()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "CameraThread"

    const-string v3, "Low internal data space"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/RecordingFailedReason;->LowInternalDataSpace:Lcom/android/camera/RecordingFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/RecordingFailedReason;->Unknown:Lcom/android/camera/RecordingFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "CameraThread"

    const-string v3, "Play start record sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2600(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v3

    const v5, 0x7f06000b

    invoke-interface {v3, v5}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v3

    #setter for: Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2602(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2600(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x36

    const-wide/16 v5, 0x12c

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->startVideoRecording()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_1a
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING_DELAY start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->startVideoRecording()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_1b
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING_DELAY end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_MESSAGE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v2, v3, :cond_1c

    const-string v2, "CameraThread"

    const-string v3, "record, but mMode != VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - record, but mMode != VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/RecordingFailedReason;->Unknown:Lcom/android/camera/RecordingFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkCanTakeRecorder()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2700(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_1d
    :goto_7
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_MESSAGE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const-string v2, "CameraThread"

    const-string v3, "Recording Message - Stop Recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mStartCountTime:J
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2800(Lcom/android/camera/CameraThread;)J

    move-result-wide v5

    sub-long v15, v2, v5

    const-wide/16 v2, 0x3e8

    cmp-long v2, v15, v2

    if-gez v2, :cond_1f

    const-string v2, "CameraThread"

    const-string v3, "Recording Message - currentRecordTime < 1s - delay stop"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const-wide/16 v5, 0x64

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->stopVideoRecording()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2900(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$3002(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "CameraThread"

    const-string v3, "Play end record sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v2

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v3

    const v5, 0x7f06000a

    invoke-interface {v3, v5}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v3

    #setter for: Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$3102(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    goto/16 :goto_7

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v2, "incandescent"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[choose_Incandescent]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "exposure-compensation"

    const/4 v5, 0x5

    move/from16 v0, v22

    invoke-virtual {v2, v3, v0, v5}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_exposure]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "iso"

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const/4 v3, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v2, "contrast"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_contract]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    const-string v2, "saturation"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_saturation]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    const-string v2, "sharpness"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_sharpness]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/FlashMode;

    #calls: Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$3300(Lcom/android/camera/CameraThread;Lcom/android/camera/FlashMode;)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_RECORD_SIZE_LIMIT end - isRecording = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v23

    if-nez v23, :cond_24

    const-string v2, "CameraThread"

    const-string v3, "mRecordLimitCheck = null !!! - CHECK_RECORD_SIZE_LIMIT end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/camera/RecordLimitCheck;->checkSizeLimit(Lcom/android/camera/io/StorageSlot;J)V

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v27

    packed-switch v27, :pswitch_data_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a0045

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v2, "CameraThread"

    const-string v3, "reach FATA32 file \'system file size limitation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_6
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - FILE_SIZE_LIMIT stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - DISK_SPACE_LIMIT stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a003a

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v2, "CameraThread"

    const-string v3, "reach time out - not to check file size limit"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - LOAD_SETTINGS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->loadSettings()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3400(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - LOAD_SETTINGS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    const-string v2, "contrast"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "saturation"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "sharpness"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :cond_26
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_27
    const-string v2, "exposure-compensation"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    goto :goto_8

    :sswitch_16
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v25, v2

    check-cast v25, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v2, 0x0

    aget-object v2, v25, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v2, 0x1

    aget-object v2, v25, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    #calls: Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V
    invoke-static {v3, v5, v6, v7, v8}, Lcom/android/camera/CameraThread;->access$3500(Lcom/android/camera/CameraThread;JJ)V

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #calls: Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;Z)V

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SCENE_MODE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_SCENE_MODE - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_28
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SCENE_MODE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_BLINK_DETECTION start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_blink detection"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v13, :cond_29

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "103"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraThread"

    const-string v3, "SET_BLINK_DETECTION, enable blink"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_smile_capture"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "120"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraThread"

    const-string v3, "SET_BLINK_DETECTION, enable smile"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "100"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraThread"

    const-string v3, "SET_BLINK_DETECTION, none"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_8
        0x3 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_c
        0xf -> :sswitch_1
        0x10 -> :sswitch_d
        0x11 -> :sswitch_e
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x14 -> :sswitch_11
        0x15 -> :sswitch_12
        0x16 -> :sswitch_13
        0x18 -> :sswitch_7
        0x1c -> :sswitch_14
        0x2c -> :sswitch_15
        0x2f -> :sswitch_16
        0x30 -> :sswitch_17
        0x36 -> :sswitch_b
        0x3a -> :sswitch_18
        0x3b -> :sswitch_0
        0x3c -> :sswitch_19
        0x46 -> :sswitch_1a
        0x3e8 -> :sswitch_4
        0x276a -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
