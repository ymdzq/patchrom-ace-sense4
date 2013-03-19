.class Lcom/android/camera/component/BurstController$7;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;

.field final synthetic val$cameraController:Lcom/android/camera/CameraController;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/CameraThread;Lcom/android/camera/CameraController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    iput-object p2, p0, Lcom/android/camera/component/BurstController$7;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/component/BurstController$7;->val$cameraController:Lcom/android/camera/CameraController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$1400(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JPEG Callback["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v6}, Lcom/android/camera/component/BurstController;->access$1300(Lcom/android/camera/component/BurstController;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "], JPEG-data size = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_2

    array-length v2, p1

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v5, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v5}, Lcom/android/camera/component/BurstController;->access$1300(Lcom/android/camera/component/BurstController;)I

    move-result v5

    #calls: Lcom/android/camera/component/BurstController;->createPostviewImage(ILandroid/hardware/Camera;)V
    invoke-static {v2, v5, p2}, Lcom/android/camera/component/BurstController;->access$1500(Lcom/android/camera/component/BurstController;ILandroid/hardware/Camera;)V

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$1304(Lcom/android/camera/component/BurstController;)I

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$1300(Lcom/android/camera/component/BurstController;)I

    move-result v2

    iget-object v5, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CaptureCount:I
    invoke-static {v5}, Lcom/android/camera/component/BurstController;->access$200(Lcom/android/camera/component/BurstController;)I

    move-result v5

    if-lt v2, v5, :cond_3

    move v0, v4

    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$1300(Lcom/android/camera/component/BurstController;)I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->setCanStartPreview()V

    :cond_0
    new-instance v1, Lcom/android/camera/component/BurstController$SaveBurstImageTask;

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    invoke-direct {v1, v2, p1}, Lcom/android/camera/component/BurstController$SaveBurstImageTask;-><init>(Lcom/android/camera/component/BurstController;[B)V

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/component/BurstController;->access$1600()Lcom/android/camera/io/DCFInfo;

    move-result-object v2

    :goto_2
    iput-object v2, v1, Lcom/android/camera/imaging/SaveImageTask;->dcfInfo:Lcom/android/camera/io/DCFInfo;

    iput-boolean v0, v1, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/imaging/SaveImageTask;)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->val$cameraController:Lcom/android/camera/CameraController;

    const-string v3, "picture-count"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->val$cameraController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->endTakePicture()V

    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v3, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;
    invoke-static {v3}, Lcom/android/camera/component/BurstController;->access$000(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    iget-object v3, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    const/4 v2, 0x0

    check-cast v2, [[B

    #setter for: Lcom/android/camera/component/BurstController;->m_postviewData:[[B
    invoke-static {v3, v2}, Lcom/android/camera/component/BurstController;->access$1202(Lcom/android/camera/component/BurstController;[[B)[[B

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/BurstController$7;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$1700(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JPEG Callback end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move v2, v3

    goto/16 :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    goto :goto_2
.end method
