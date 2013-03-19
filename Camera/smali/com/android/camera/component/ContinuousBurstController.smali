.class public final Lcom/android/camera/component/ContinuousBurstController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ContinuousBurstController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ContinuousBurstController$3;,
        Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;,
        Lcom/android/camera/component/ContinuousBurstController$DropState;,
        Lcom/android/camera/component/ContinuousBurstController$CaptureState;
    }
.end annotation


# static fields
.field static final BURST_MODE_1_SHOT:I = 0x1

.field static final BURST_MODE_5_SHOTS:I = 0x2

.field static final BURST_MODE_CONTINUOUS:I = 0x3

.field static final BURST_MODE_UNDEFINED:I = 0x0

.field static final DEFAULT_MAX_PICTURE_COUNT:I = 0x14

#the value of this static final field might be set in the static constructor
.field static final DEFAULT_UNLIMITED_PICTURE_COUNT:I = 0x0

.field private static final MAX_CONTINUOUS_DROPPED_PHOTO:I = 0x8

.field static final MSG_ENTER:I = 0x2710

.field static final MSG_EXIT:I = 0x2711

.field private static final MSG_IMAGE_SAVED:I = 0x2719

.field private static final MSG_JPEG_CALLBACK_TIMEOUT:I = 0x271b

.field private static final MSG_PHOTO_SAVE_COMPLETED:I = 0x2717

.field private static final MSG_PLAY_SHUTTER_SOUND:I = 0x2712

.field static final MSG_SET_BURST_MODE:I = 0x2714

.field static final MSG_SET_PICTURE_COUNT:I = 0x2715

.field private static final MSG_SHUTTER_CALLBACK_TIMEOUT:I = 0x271a

.field static final MSG_STOP_PLAYING_SHUTTER_SOUND:I = 0x2716

.field private static final MSG_STOP_SHUTTER_SOUND:I = 0x2713

.field private static final MSG_THUMBNAIL_IMAGE_CREATED:I = 0x2718

.field static final NAME:Ljava/lang/String; = "Continuous Burst Controller"

.field private static final PREF_MAX_PICTURE_COUNT:Ljava/lang/String; = "pref_max_conti_burst_picture_count"

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_SOUND_LENGTH:I = 0x0

.field private static final SHUTTER_SOUND_TIMER_INTERVAL:I = 0x190

.field private static final SIZE_RATIO_DROP_CONSECUTIVE:F = 0.95f

.field private static final SIZE_RATIO_DROP_ONE_OF_CONSECUTIVE:F = 0.8f

.field private static final m_DcfInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private mAudioManager:Lcom/android/camera/IAudioManager;

.field private m_BurstMode:I

.field private m_CaptureId:J

.field private m_CaptureInterval:I

.field private m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

.field private m_ContDroppingCounter:I

.field private m_ContinuousBurstImageCounter:I

.field private m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

.field private m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

.field private m_FirstJpegRawData:[B

.field private m_GotFirstPicture:Z

.field private m_HasImageSavingError:Z

.field private m_ImageDirectoryCounter:Lcom/android/camera/io/FileCounter;

.field private m_IsCaptureModeChanged:Z

.field private m_IsEntered:Z

.field private m_IsFirstPicture:Z

.field private m_IsFocusingBeforeCapture:Z

.field private m_IsFocusingBeforeCaptureNeeded:Z

.field private m_IsSavingPhotos:Z

.field private m_IsSecondPictureTaken:Z

.field private m_IsShutterSoundPlayed:Z

.field private m_JpegIndex:I

.field private m_MaxPictureCount:I

.field private m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

.field private m_OriginalFlashMode:Lcom/android/camera/FlashMode;

.field private m_OuterDirectoryCounter:Lcom/android/camera/io/FileCounter;

.field private m_PendingTakePictureIndex:I

.field private m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

.field private m_ShutterIndex:I

.field private m_ShutterSoundHandle:Lcom/android/camera/Handle;

.field private m_ShutterSoundStartTime:Ljava/lang/Long;

.field private m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

.field private m_StartTime:J

.field private m_TakePictureIndex:I

.field private m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

.field private m_TotalCaptureInterval:J

.field private m_UI:Lcom/android/camera/component/ContinuousBurstUI;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/android/camera/component/ContinuousBurstController;->SHUTTER_SOUND_LENGTH:I

    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "BURST"

    const-string v2, ""

    const-string v3, "burst_dir_counter"

    const-string v4, "burst_file_counter"

    const/16 v5, 0x3e7

    const/16 v6, 0x1f4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x12c

    goto :goto_0

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-ne v0, v1, :cond_3

    :cond_2
    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x63

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Continuous Burst Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    iput v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    iput-boolean v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCaptureNeeded:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/io/DCFInfo;
    .locals 1

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OuterDirectoryCounter:Lcom/android/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/ContinuousBurstController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ImageDirectoryCounter:Lcom/android/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/ContinuousBurstController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_HasImageSavingError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCaptureNeeded:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCapture:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/component/ContinuousBurstController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCapture:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/component/ContinuousBurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PendingTakePictureIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ContinuousBurstController;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/ContinuousBurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findNextDirectoryCounters()Z
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/io/StorageSlot;

    new-instance v4, Lcom/android/camera/Reference;

    invoke-direct {v4}, Lcom/android/camera/Reference;-><init>()V

    new-instance v5, Lcom/android/camera/Reference;

    invoke-direct {v5}, Lcom/android/camera/Reference;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-static {v7}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/android/camera/io/FileCounter;

    iget-object v0, v4, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OuterDirectoryCounter:Lcom/android/camera/io/FileCounter;

    new-instance v1, Lcom/android/camera/io/FileCounter;

    iget-object v0, v5, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ImageDirectoryCounter:Lcom/android/camera/io/FileCounter;

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OuterDirectoryCounter:Lcom/android/camera/io/FileCounter;

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ImageDirectoryCounter:Lcom/android/camera/io/FileCounter;

    invoke-static {v0, v7, v1, v2, v3}, Lcom/android/camera/io/DCFUtility;->getFilePath(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/StorageSlot;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findNextDirectoryCounters() - Cannot create directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findNextDirectoryCounters() - Directory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private linkToUI()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-string v3, "Continuous Burst UI"

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/ContinuousBurstUI;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private onBurstModeChanged(I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v2, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Handle JPEG data again"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    move-object v0, p0

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;ZLcom/android/camera/TakingPictureFailedReason;)V

    iput-object v5, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    if-ne v0, v6, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged() - Start taking burst shots for nVidia platform"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged() - Cannot take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    if-ne v0, v6, :cond_3

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v6}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onEntered()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExited()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    iput v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - Set capture mode to normal"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :goto_2
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - No camera controller to reset capture mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onImageSaved(Lcom/android/camera/io/Path;)V
    .locals 9

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onImageSaved(\'"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "\')"

    invoke-static {v1, v2, v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v7, Lcom/android/camera/MediaInfo;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-direct {v7, v0, p1, v1}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;)V

    const/16 v2, 0x2718

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v7, v5, v0

    const/4 v0, 0x1

    aput-object v8, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private onJpegTimeout(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onJpegTimeout() - Invalid capture ID"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$3;->$SwitchMap$com$android$camera$component$ContinuousBurstController$CaptureState:[I

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegTimeout() - Invalid capture state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x271a

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    const/16 v0, 0x271b

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/camera/TakingPictureFailedReason;->DriverFail:Lcom/android/camera/TakingPictureFailedReason;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;ZLcom/android/camera/TakingPictureFailedReason;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onPhotoSaveCompleted(ILjava/lang/String;Lcom/android/camera/io/Path;)V
    .locals 7

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const-string v0, "onPhotoSaveCompleted("

    aput-object v0, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    const-string v0, ", "

    aput-object v0, v2, v5

    const/4 v0, 0x3

    aput-object p2, v2, v0

    const/4 v0, 0x4

    const-string v3, ", \'"

    aput-object v3, v2, v0

    const/4 v3, 0x5

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x6

    const-string v3, "\')"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/IThumbnailImageManager;->enableAutoUpdate(Lcom/android/camera/Handle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    :cond_0
    if-le p1, v6, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v2, 0x2711

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v4

    aput-object p3, v5, v6

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted() - No UI to notify"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onPictureTaken(I[BLandroid/hardware/Camera;ZLcom/android/camera/TakingPictureFailedReason;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "JPEG call-back ["

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "]"

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x271b

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureInterval:I

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureInterval:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Average capture interval = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    add-int/lit8 v7, p1, 0x1

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v3}, Lcom/android/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v13

    :goto_0
    if-eqz v13, :cond_18

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_15

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->findNextDirectoryCounters()Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Cannot find available directory counters, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_6
    if-eqz p2, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    if-nez p1, :cond_1e

    if-nez v13, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_1e

    :cond_7
    new-instance v19, Lcom/android/camera/imaging/SaveImageTask;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/camera/imaging/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;[B)V

    :goto_3
    invoke-virtual {v11}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v3

    move-object/from16 v0, v19

    iput-wide v3, v0, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    :goto_4
    const/4 v14, 0x0

    if-eqz v13, :cond_9

    new-instance v12, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v12}, Lcom/android/camera/QueryEventArgs;-><init>()V

    iget-object v3, v11, Lcom/android/camera/CameraThread;->queryImageQueueCapacityEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v12}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_21

    const-wide/16 v4, 0x0

    invoke-virtual {v12}, Lcom/android/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    :goto_5
    const-wide/16 v3, 0x0

    invoke-virtual {v11}, Lcom/android/camera/CameraThread;->getImageQueueSize()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v3, v0

    move-wide/from16 v0, v16

    long-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - File buffer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x3fee666660000000L

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_22

    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->ContinuousDropping:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Drop previous save task, DropState: Continuous("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Reach maximum continuous dropping limitation(8), stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    if-eqz v14, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/camera/imaging/SaveImageTask;->getJpegRawData(Z)[B

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    :cond_9
    if-eqz v13, :cond_b

    if-nez p1, :cond_b

    const-class v3, Lcom/android/camera/component/ImageFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/component/ImageFileWriter;

    if-eqz v18, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/camera/component/ImageFileWriter;->resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V

    :cond_a
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/component/ImageFileWriter;->suspendUpdatingMediaStore()Lcom/android/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    if-eqz v3, :cond_d

    if-nez v19, :cond_c

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    :cond_c
    if-nez v14, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    invoke-virtual {v11, v3}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/imaging/SaveImageTask;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Continuous Burst ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_8
    if-eqz v19, :cond_28

    if-eqz v13, :cond_27

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    :cond_e
    :goto_9
    monitor-enter p0

    if-eqz v13, :cond_10

    :try_start_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v3, :cond_10

    :cond_f
    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Cannot take next picture, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_10
    if-nez v13, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v3, :cond_2a

    if-nez p1, :cond_2a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_2a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v3, v4, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_2d

    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Waiting for pending pictures"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_b
    return-void

    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_HasImageSavingError:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Cannot save image, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_16
    invoke-virtual {v11}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v3, v3, v5

    if-gez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Storage is full, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - This is the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " picture, stop capturing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_18
    if-eqz p2, :cond_19

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_3

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 1-shot, stop taking picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 1-shot, but this is not the first picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_2

    :pswitch_1
    if-eqz v13, :cond_4

    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 5-shots, stop taking picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_1b
    const/4 v3, 0x4

    move/from16 v0, p1

    if-le v0, v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is 5-shots, but we have taken more than 5 pictures."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Start preview again"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is undefined, handle JPEG raw data later."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    goto/16 :goto_b

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is undefined, but this is not the first picture."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Disable GC"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    goto/16 :goto_2

    :cond_1e
    if-nez v13, :cond_1f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_1f

    const/4 v15, 0x1

    :goto_c
    new-instance v19, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v3, v2, v15}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;-><init>(Lcom/android/camera/component/ContinuousBurstController;I[BZ)V

    goto/16 :goto_3

    :cond_1f
    const/4 v15, 0x0

    goto :goto_c

    :cond_20
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_21
    const-wide v16, 0x7fffffffffffffffL

    goto/16 :goto_5

    :cond_22
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x3fe99999a0000000L

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$DropState;->Dropped:Lcom/android/camera/component/ContinuousBurstController$DropState;

    if-eq v3, v4, :cond_23

    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->Dropped:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Drop current save task"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_23
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->Dropping:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Save current save task due to previous was dropped"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_24
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    goto/16 :goto_6

    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No IMediaFileWriter interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_26
    if-nez v13, :cond_d

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    invoke-virtual {v11, v3}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/imaging/SaveImageTask;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Continuous Burst ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_27
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/imaging/SaveImageTask;)V

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_29

    if-nez p1, :cond_e

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    iget-object v0, v3, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v23, v0

    new-instance v3, Lcom/android/camera/MediaEventArgs;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    const/4 v9, 0x1

    sget-object v10, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    invoke-direct/range {v3 .. v10}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaSaveFailedReason;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_9

    :cond_2a
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-eqz v3, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound()V

    goto/16 :goto_a

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v4, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v3, v4, :cond_2c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Waiting for pending pictures"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_b

    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Unexpected capture state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_b

    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    if-eqz v3, :cond_2e

    const-class v3, Lcom/android/camera/component/ImageFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/component/ImageFileWriter;

    if-eqz v18, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/camera/component/ImageFileWriter;->resumeUpdatingMediaStore(Lcom/android/camera/Handle;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandle:Lcom/android/camera/Handle;

    :cond_2e
    :goto_d
    if-nez p1, :cond_2f

    if-eqz v19, :cond_34

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(ILjava/lang/String;Lcom/android/camera/io/Path;)V

    :cond_2f
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Enable GC"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    if-nez p5, :cond_35

    invoke-virtual {v11}, Lcom/android/camera/CameraThread;->endTakePicture()V

    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    if-eqz v3, :cond_30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    invoke-virtual {v11, v3}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    :cond_30
    invoke-virtual {v11}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v3}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    :cond_31
    sget-object v3, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v5, 0x2710

    add-int/lit8 v6, p1, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_32
    monitor-exit p0

    goto/16 :goto_b

    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No IMediaFileWriter interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No photo to save"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(ILjava/lang/String;Lcom/android/camera/io/Path;)V

    goto :goto_e

    :cond_35
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/android/camera/CameraThread;->interruptTakingPicture(Lcom/android/camera/TakingPictureFailedReason;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onShutter(I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Shutter call-back ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "]"

    invoke-static {v0, v1, v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x271a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(ILjava/lang/Object;)V

    const/16 v2, 0x271b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-wide/16 v6, 0x4e20

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode()V

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Trying to take next picture for nVidia platform"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutter() - Burst mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", no need to take next picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v8}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - canCapture() = false, no need to take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Max picture count reached, no need to take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Cannot take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onShutterTimeout(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutterTimeout() - Invalid capture ID"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$3;->$SwitchMap$com$android$camera$component$ContinuousBurstController$CaptureState:[I

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterTimeout() - Invalid capture state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x271a

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    const/16 v0, 0x271b

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/camera/TakingPictureFailedReason;->DriverFail:Lcom/android/camera/TakingPictureFailedReason;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;ZLcom/android/camera/TakingPictureFailedReason;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onThumbnailImageCreated(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IThumbnailImageManager;->updateThumbnailImageDirectly(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated() - No IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    throw v0
.end method

.method private playShutterSound(Z)V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "playShutterSound("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    :cond_1
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private setCaptureMode()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Set capture mode to contiburst"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - No camera controller to set capture mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureState("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    return-void
.end method

.method private stopShutterSound()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound(JLcom/android/camera/Handle;)V

    iput-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    iput-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private stopShutterSound(JLcom/android/camera/Handle;)V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopShutterSound("

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ", "

    if-eqz p3, :cond_2

    iget-object v4, p3, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    const/4 v10, 0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/HeadsetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, p1

    sget v0, Lcom/android/camera/component/ContinuousBurstController;->SHUTTER_SOUND_LENGTH:I

    mul-int/2addr v0, v10

    int-to-long v0, v0

    sub-long v6, v0, v8

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopShutterSound() - Stop shutter sound after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    aput-object p3, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v4, "null"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, p3}, Lcom/android/camera/IAudioManager;->stopInMemorySound(Lcom/android/camera/Handle;)V

    goto :goto_1
.end method

.method private takeNextPicture(I)Z
    .locals 13

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "takeNextPicture() - Surface is unavailable"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v12

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    if-ne p1, v11, :cond_1

    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode()V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v0, v3, :cond_1

    iget-object v0, v9, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v9, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    :cond_1
    if-ne p1, v11, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "takeNextPicture() - Start preview"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCaptureNeeded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCapture:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Focusing before taking picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "]"

    invoke-static {v0, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCapture:Z

    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PendingTakePictureIndex:I

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f00

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v0, v2

    sget-object v2, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v9, v0, v2}, Lcom/android/camera/CameraThread;->autoFocus([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V

    monitor-exit v12

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v0, v3, :cond_5

    if-ne p1, v11, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$DropState;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v10

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Set continuous burst type to limit-20"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contiburst-type"

    const-string v1, "limit-20"

    invoke-virtual {v10, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v10}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_5
    if-ne p1, v11, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v2, 0x271a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-wide/16 v6, 0x4e20

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Take picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J

    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    monitor-exit v12

    move v0, v11

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    if-ne p1, v11, :cond_4

    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Set continuous burst type to unlimited"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contiburst-type"

    const-string v1, "unlimited"

    invoke-virtual {v10, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->requestAudioFocus()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/camera/IThumbnailImageManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IThumbnailImageManager;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Cannot find IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v0}, Lcom/android/camera/IThumbnailImageManager;->disableAutoUpdate()Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_HasImageSavingError:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$DropState;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DropState:Lcom/android/camera/component/ContinuousBurstController$DropState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode()V

    iget-object v0, p1, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v2, 0x271a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-wide/16 v6, 0x4e20

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Take picture [0]"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void

    :cond_6
    const/16 v2, 0x2712

    const-wide/16 v3, 0x190

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x2719

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->removeAsyncMessages(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/Path;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->onImageSaved(Lcom/android/camera/io/Path;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2719
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->onEntered()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->onExited()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->onJpegTimeout(I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    aget-object v2, v0, v4

    check-cast v2, Lcom/android/camera/io/Path;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(ILjava/lang/String;Lcom/android/camera/io/Path;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v1, :pswitch_data_1

    :pswitch_6
    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Timeout, play burst shutter sound"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    :pswitch_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->onBurstModeChanged(I)V

    goto :goto_0

    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-gtz v1, :cond_1

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_max_conti_burst_picture_count"

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->onShutterTimeout(I)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound()V

    goto :goto_0

    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v1, v0, v4

    check-cast v1, Lcom/android/camera/Handle;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound(JLcom/android/camera/Handle;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v2

    check-cast v1, Lcom/android/camera/MediaInfo;

    aget-object v2, v0, v4

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->onThumbnailImageCreated(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_d
        :pswitch_0
        :pswitch_a
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    const/16 v3, 0x14

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_max_conti_burst_picture_count"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-gtz v1, :cond_0

    iput v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    :cond_0
    const-class v1, Lcom/android/camera/IAudioManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IAudioManager;

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v2, 0x7f060001

    invoke-interface {v1, v2}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstController$1;-><init>(Lcom/android/camera/component/ContinuousBurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestTakingPictureEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstController$2;-><init>(Lcom/android/camera/component/ContinuousBurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v2, 0x7f060002

    invoke-interface {v1, v2}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    goto :goto_0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6

    iget-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() - Invalid capture ID, drop picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$3;->$SwitchMap$com$android$camera$component$ContinuousBurstController$CaptureState:[I

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;ZLcom/android/camera/TakingPictureFailedReason;)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onShutter()V
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Invalid capture ID, drop picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->onShutter(I)V

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    goto :goto_0
.end method
