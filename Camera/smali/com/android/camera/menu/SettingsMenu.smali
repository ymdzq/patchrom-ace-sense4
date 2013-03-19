.class public Lcom/android/camera/menu/SettingsMenu;
.super Lcom/android/camera/menu/MenuListView;
.source "SettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/SettingsMenu$5;
    }
.end annotation


# static fields
.field public static final ITEM_ID_AUTO_FOCUS:I = 0x33

.field public static final ITEM_ID_AUTO_UPLOAD:I = 0x32

.field public static final ITEM_ID_CAMERA_EFFECTS:I = 0x1

.field public static final ITEM_ID_CAMERA_TYPE_FRONT:I = 0x15

.field public static final ITEM_ID_CAMERA_TYPE_MAIN:I = 0x14

.field public static final ITEM_ID_CAPTURE_MODE_GROUP:I = 0xd

.field public static final ITEM_ID_CAPTURE_MODE_HDR:I = 0xc

.field public static final ITEM_ID_CAPTURE_MODE_NORMAL:I = 0xa

.field public static final ITEM_ID_CAPTURE_MODE_PANORAMA:I = 0xb

.field public static final ITEM_ID_CONTINUOUS_AUTO_FOCUS:I = 0x21

.field public static final ITEM_ID_CONTINUOUS_CAPTURE:I = 0x2f

.field public static final ITEM_ID_FACE_DETECTION:I = 0x1f

.field public static final ITEM_ID_GEO_TAGGING:I = 0x24

.field public static final ITEM_ID_OBJECT_TRACKING:I = 0x1e

.field public static final ITEM_ID_RECORD_WITH_AUDIO:I = 0x2e

.field public static final ITEM_ID_RESET_TO_DEFAULT:I = 0x3c

.field public static final ITEM_ID_SHUTTER_SOUND:I = 0x28

.field public static final ITEM_ID_SLOW_MOTION:I = 0x2d

.field public static final ITEM_ID_SMILE_CAPTURE:I = 0x20

.field public static final ITEM_ID_WIDE_RATIO_PHOTO:I = 0x22

.field private static final TAG:Ljava/lang/String; = "SettingsMenu"


# instance fields
.field private m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

.field private m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

.field private m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

.field private m_CameraScenesItem:Lcom/android/camera/menu/SceneMenuItem;

.field private m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

.field private m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

.field private m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

.field private m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

.field private m_IsItemInitialized:Z

.field private m_IsoItem:Lcom/android/camera/menu/MenuItem;

.field private m_Items:[Lcom/android/camera/menu/MenuItem;

.field private m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

.field private m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

.field private m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

.field private m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

.field private m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

.field private m_Settings:Lcom/android/camera/Settings;

.field private m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

.field private m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

.field private m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

.field private m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

.field private m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

.field private m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

.field private m_WhiteBalanceItem:Lcom/android/camera/menu/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/menu/MenuItem;

    iput-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    instance-of v0, p1, Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/camera/HTCCamera;

    iput-object p1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/camera/menu/SettingsMenu;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method private checkLocationSettings()Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "SettingsMenu"

    const-string v4, "checkLocationSetting() has exception"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onPhotoRatioChanged()V
    .locals 15

    new-instance v9, Ljava/util/TreeSet;

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v12, v13, v11}, Lcom/android/camera/PhotoModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v11}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v11

    iget-object v11, v11, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v11}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ResolutionMenuItem;

    iget-object v11, v4, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v11}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v12, v13, v11}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    move-object v8, v7

    move-object v5, v10

    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ResolutionMenuItem;

    iget-object v11, v4, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v11}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_3

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ResolutionMenuItem;

    iget-object v6, v11, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    :cond_3
    if-nez v6, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ResolutionMenuItem;

    iget-object v6, v11, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    :cond_4
    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v11}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v12

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v13

    iget-object v14, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v13, v14, v11}, Lcom/android/camera/PhotoModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v11}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    :cond_5
    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    return-void

    :cond_6
    move-object v8, v10

    move-object v5, v7

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private resetToDefault()V
    .locals 5

    new-instance v2, Lcom/android/camera/menu/SettingsMenu$1;

    invoke-direct {v2, p0}, Lcom/android/camera/menu/SettingsMenu$1;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    new-instance v1, Lcom/android/camera/menu/SettingsMenu$2;

    invoke-direct {v1, p0}, Lcom/android/camera/menu/SettingsMenu$2;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    new-instance v3, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00b1

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0122

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x20401f2

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x20401f3

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->showDialog(Landroid/app/Dialog;)Z

    return-void
.end method

.method private showGpsDialog()V
    .locals 5

    new-instance v2, Lcom/android/camera/menu/SettingsMenu$3;

    invoke-direct {v2, p0}, Lcom/android/camera/menu/SettingsMenu$3;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    new-instance v1, Lcom/android/camera/menu/SettingsMenu$4;

    invoke-direct {v1, p0}, Lcom/android/camera/menu/SettingsMenu$4;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    new-instance v3, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a01a6

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a01a7

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x2040218

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->showDialog(Landroid/app/Dialog;)Z

    return-void
.end method

.method private updateAutoFocusRelatedItem()V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v3}, Lcom/android/camera/menu/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v1, Lcom/android/camera/effect/PanoramaScene;

    if-nez v3, :cond_4

    instance-of v3, v1, Lcom/android/camera/effect/SmartShotScene;

    if-nez v3, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v3, v0}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAutoUploadItem()V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v3, "pref_auto_upload"

    const-string v4, "Off"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const v3, 0x7f0a00b0

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v3, "pref_auto_upload_label"

    invoke-virtual {v2, v3}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCameraSceneItem()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraScenesItem:Lcom/android/camera/menu/SceneMenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraScenesItem:Lcom/android/camera/menu/SceneMenuItem;

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/SceneMenuItem;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method private final updateCameraTypeItem()V
    .locals 7

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v6, Lcom/android/camera/menu/SettingsMenu$5;->$SwitchMap$com$android$camera$CameraType:[I

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x14

    const v4, 0x7f0a00bf

    :goto_1
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v5}, Lcom/android/camera/menu/MenuItem;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v3

    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_2

    aget-object v2, v3, v0

    invoke-virtual {v2}, Lcom/android/camera/menu/MenuItem;->getId()I

    move-result v5

    if-ne v5, v1, :cond_1

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x15

    const v4, 0x7f0a00c0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateContinuousCaptureItem()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    instance-of v4, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v4, :cond_3

    move v2, v5

    :goto_0
    if-eqz v1, :cond_4

    instance-of v4, v1, Lcom/android/camera/effect/AutoScene;

    if-nez v4, :cond_4

    move v3, v5

    :goto_1
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v4}, Lcom/android/camera/SelfTimerValue;->isOff()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v7, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraType;

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f0a0064

    :goto_3
    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    move v2, v6

    goto/16 :goto_0

    :cond_4
    move v3, v6

    goto/16 :goto_1

    :cond_5
    move v5, v6

    goto :goto_2

    :cond_6
    const v4, 0x7f0a0065

    goto :goto_3
.end method

.method private updateDisabledItems()V
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    move-object v2, v1

    if-eqz v2, :cond_0

    instance-of v5, v2, Lcom/android/camera/effect/AutoScene;

    if-eqz v5, :cond_1

    :cond_0
    move-object v2, v0

    :cond_1
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v3

    :goto_0
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_2

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_2
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_4

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_3
    move v5, v7

    :goto_1
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_4
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_11

    move v5, v7

    :goto_2
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_5
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_6

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_12

    move v5, v7

    :goto_3
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_6
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_7

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v7

    :goto_4
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_7
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_8

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_14

    move v5, v7

    :goto_5
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_8
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    sget-object v8, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v8}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_9
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_WhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_a

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_WhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    and-int/lit8 v5, v3, 0x20

    if-nez v5, :cond_15

    move v5, v7

    :goto_6
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_a
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_b

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    sget v5, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    and-int/2addr v5, v3

    if-nez v5, :cond_16

    move v5, v7

    :goto_7
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_b
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_c

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_c
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    if-eqz v5, :cond_d

    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v5}, Lcom/android/camera/SelfTimerValue;->isDisabled()Z

    move-result v5

    if-nez v5, :cond_17

    :goto_8
    invoke-virtual {v8, v7}, Lcom/android/camera/menu/SelfTimerMenuItem;->setEnabled(Z)V

    :cond_d
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    iget-object v6, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->isActionScreenEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    :cond_e
    return-void

    :cond_f
    move v3, v6

    goto/16 :goto_0

    :cond_10
    move v5, v6

    goto/16 :goto_1

    :cond_11
    move v5, v6

    goto/16 :goto_2

    :cond_12
    move v5, v6

    goto/16 :goto_3

    :cond_13
    move v5, v6

    goto/16 :goto_4

    :cond_14
    move v5, v6

    goto/16 :goto_5

    :cond_15
    move v5, v6

    goto :goto_6

    :cond_16
    move v5, v6

    goto :goto_7

    :cond_17
    move v7, v6

    goto :goto_8
.end method


# virtual methods
.method public initializeMenuItems()V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsItemInitialized:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsItemInitialized:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/menu/SettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00be

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    new-instance v13, Lcom/android/camera/menu/RadioButtonMenuItem;

    const v1, 0x7f0a00bf

    invoke-direct {v13, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    const/16 v1, 0x14

    invoke-virtual {v13, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/android/camera/menu/RadioButtonMenuItem;

    const v1, 0x7f0a00c0

    invoke-direct {v13, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    const/16 v1, 0x15

    invoke-virtual {v13, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1, v15}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    :cond_1
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/camera/menu/SelfTimerMenuItem;

    const v4, 0x7f0a00b7

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/SelfTimerMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/camera/menu/ResolutionMenuItem;

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    const v5, 0x7f0a00c5

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/ResolutionMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/camera/menu/ResolutionMenuItem;

    sget-object v4, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    const v5, 0x7f0a00c4

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/ResolutionMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/camera/menu/ListPreferenceMenuItem;

    const-string v4, "pref_camera_review_duration"

    const v5, 0x7f0a0088

    const v6, 0x7f070001

    const/high16 v7, 0x7f07

    const-string v8, "no_review"

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v1, Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    const v4, 0x7f0a00c1

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CameraIsoMenuItem;

    const v4, 0x7f0a00c6

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraIsoMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/WhiteBalanceMenuItem;

    const v4, 0x7f0a00c2

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/WhiteBalanceMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_WhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_WhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lcom/android/camera/menu/CameraStorageLocationMenuItem;

    const v4, 0x7f0a009b

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraStorageLocationMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v1, Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00cc

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    new-instance v13, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v1, "pref_continuous_burst"

    const v4, 0x7f0a00cc

    const/4 v5, 0x1

    invoke-direct {v13, v3, v1, v4, v5}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    const/16 v1, 0x2f

    invoke-virtual {v13, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_continuous_burst_limit"

    const v5, 0x7f0a00cd

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_continuous_burst_auto_review"

    const v5, 0x7f0a00ce

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1, v15}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    :cond_7
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_b

    new-instance v12, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00c7

    const/4 v4, 0x0

    invoke-direct {v12, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_auto_focus"

    const v5, 0x7f0a00a3

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x33

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v1, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v4, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-eq v1, v4, :cond_9

    sget-object v1, Lcom/android/camera/menu/SettingsMenu$5;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v4, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v4}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    const v8, 0x7f0a00d4

    :goto_1
    new-instance v4, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v6, "pref_camera_image_ratio"

    const v7, 0x7f0a00d0

    const v9, 0x7f0a00d4

    const/4 v10, 0x1

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/menu/SettingsMenu;->m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v13, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v1, "pref_camera_geo_tagging"

    const v4, 0x7f0a00d5

    const/4 v5, 0x1

    invoke-direct {v13, v3, v1, v4, v5}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    const/16 v1, 0x24

    invoke-virtual {v13, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_post_processing"

    const v5, 0x7f0a00d6

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v12, v15}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    :cond_b
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_e

    new-instance v12, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00d7

    const/4 v4, 0x0

    invoke-direct {v12, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_video_stabilization"

    const v5, 0x7f0a00d8

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_record_with_audio"

    const v5, 0x7f0a00da

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_stereo_recording"

    const v5, 0x7f0a00db

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v12, v15}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    :cond_e
    new-instance v12, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00dc

    const/4 v4, 0x0

    invoke-direct {v12, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_f

    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_f

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_grid"

    const v5, 0x7f0a00de

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_play_shutter_sound"

    const v5, 0x7f0a00dd

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v12, v15}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    invoke-virtual {v12}, Lcom/android/camera/menu/MenuItem;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_11

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00df

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x32

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "pref_auto_upload"

    const-string v4, "Off"

    invoke-virtual {v3, v1, v4}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_12

    const-string v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "null"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "Off"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00b0

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    :cond_13
    :goto_2
    new-instance v12, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00e0

    const/4 v4, 0x0

    invoke-direct {v12, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    const/16 v1, 0x3c

    invoke-virtual {v12, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/SettingsMenu;->setItems([Lcom/android/camera/menu/MenuItem;)V

    goto/16 :goto_0

    :pswitch_0
    const v8, 0x7f0a00d1

    goto/16 :goto_1

    :pswitch_1
    const v8, 0x7f0a00d2

    goto/16 :goto_1

    :pswitch_2
    const v8, 0x7f0a00d3

    goto/16 :goto_1

    :cond_14
    const-string v1, "pref_auto_upload_label"

    invoke-virtual {v3, v1}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/android/camera/menu/MenuItem;->setSummary(Ljava/lang/String;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    sparse-switch p3, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/menu/MenuListView;->onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V

    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v1}, Lcom/android/camera/AutoUploader;->ShowAutoUploadSetting()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    goto :goto_0

    :sswitch_4
    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->checkLocationSettings()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->showGpsDialog()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v3}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    const v2, 0x7f0a0121

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->showToast(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->resetToDefault()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->onPhotoRatioChanged()V

    goto/16 :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateContinuousCaptureItem()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_5
        0x1f -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_a
        0x24 -> :sswitch_4
        0x28 -> :sswitch_8
        0x2d -> :sswitch_9
        0x2e -> :sswitch_6
        0x2f -> :sswitch_b
        0x32 -> :sswitch_1
        0x33 -> :sswitch_0
        0x3c -> :sswitch_7
    .end sparse-switch
.end method

.method public final setCaptureModeItemVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final setGroupShotItemVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraScenesItem:Lcom/android/camera/menu/SceneMenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraScenesItem:Lcom/android/camera/menu/SceneMenuItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/menu/SceneMenuItem;->setGroupShotItemVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final setSlowMotionItemVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public updateItemContents()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/menu/SettingsMenu;->beginUpdate()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateCameraSceneItem()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateCameraTypeItem()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateContinuousCaptureItem()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoUploadItem()V

    invoke-super {p0}, Lcom/android/camera/menu/MenuListView;->updateItemContents()V

    invoke-virtual {p0}, Lcom/android/camera/menu/SettingsMenu;->endUpdate()V

    return-void
.end method
