.class final Lcom/android/camera/component/UIRotationManager;
.super Lcom/android/camera/component/UIComponent;
.source "UIRotationManager.java"

# interfaces
.implements Lcom/android/camera/IUIRotationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/UIRotationManager$LockHandle;
    }
.end annotation


# static fields
.field private static final MIN_ROTATION_CHANGE_INTERVAL:J = 0x258L

.field private static final MSG_EXIT_SHAKE_PREVENTION:I = 0x2711

.field static final NAME:Ljava/lang/String; = "UI Rotation Manager"

.field private static final SHAKE_PREVENTION_INTERVAL:J = 0x12cL

.field private static final SHAKE_PREVENTION_THRESHOLD:I = 0x5


# instance fields
.field private final deviceOrientation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isOrientationListenerStarted:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isRotationLocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

.field private m_IsFirstOrientationChange:Z

.field private m_IsShakePreventionEntered:Z

.field private m_LastDeviceOrientation:I

.field private m_LastRotationChangeTime:J

.field private final m_LockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/UIRotationManager$LockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_OrientationDropCounter:I

.field private final m_OrientationListener:Landroid/view/OrientationEventListener;

.field private m_ShakePreventionCounter:I

.field private final rotation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    const-string v0, "UI Rotation Manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput v4, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    const-string v0, "IUIRotationManager.DeviceOrientation"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    const-string v0, "IUIRotationManager.IsOrientationListenerStarted"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    const-string v0, "IUIRotationManager.IsRotationLocked"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    const-string v0, "IUIRotationManager.Rotation"

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v5}, Lcom/android/camera/property/Property;->enableLogs(I)V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v5}, Lcom/android/camera/property/Property;->enableLogs(I)V

    new-instance v0, Lcom/android/camera/component/UIRotationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/component/UIRotationManager$1;-><init>(Lcom/android/camera/component/UIRotationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/UIRotationManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/UIRotationManager;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->startOrientationListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->stopOrientationListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/UIRotationManager;->updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/UIRotationManager;)Lcom/android/camera/property/Property;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method private enterShakePrevention()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterShakePrevention()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enterShakePrevention() - Orientation listener is not started"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    const/16 v2, 0x2711

    const-wide/16 v3, 0x12c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/UIRotationManager;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_0
.end method

.method private exitShakePrevention()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "exitShakePrevention()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    iput v3, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/UIRotationManager;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method private onOrientationChanged(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    iget v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    if-eq p1, v4, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;I)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-ne p1, v4, :cond_3

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onOrientationChanged() - Unknown orientation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iput p1, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    iget-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v2, :cond_5

    :goto_2
    invoke-static {v0, p1}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;I)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/UIRotation;

    move-object v0, v2

    goto :goto_2
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 10

    const/4 v9, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    if-ne v5, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager;->m_ActualRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/android/camera/component/UIRotationManager;->m_LastRotationChangeTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x258

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    move v2, v3

    :goto_1
    iput-wide v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastRotationChangeTime:J

    if-eqz v2, :cond_4

    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    if-ge v4, v9, :cond_2

    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    :cond_2
    iget v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    if-lt v4, v9, :cond_6

    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->enterShakePrevention()V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-boolean v5, p0, Lcom/android/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    if-eqz v5, :cond_5

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onRotationChanged() - Shake prevention"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iput v4, p0, Lcom/android/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    :cond_6
    iget-object v4, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v4, p0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/CameraThread;->setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/android/camera/component/UIRotationManager;->updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V

    goto :goto_0
.end method

.method private startOrientationListener()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startOrientationListener()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    iput v2, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    :cond_1
    return-void
.end method

.method private stopOrientationListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopOrientationListener()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->exitShakePrevention()V

    :cond_1
    return-void
.end method

.method private updateVirtualHwKeysOrientation(Lcom/android/camera/rotate/UIRotation;Z)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.content.intent.action.ORIENTATION_LIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package_name"

    const-string v3, "com.android.camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "manual"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    iget v3, p1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method public getAvailableDeviceOrientation()I
    .locals 2

    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Lcom/android/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/property/Property",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "IUIRotationManager.DeviceOrientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "IUIRotationManager.IsOrientationListenerStarted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/android/camera/property/Property;

    goto :goto_0

    :cond_1
    const-string v0, "IUIRotationManager.IsRotationLocked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    goto :goto_0

    :cond_2
    const-string v0, "IUIRotationManager.Rotation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->exitShakePrevention()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->deviceOrientation:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->deviceOrientation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    iget-object v1, p0, Lcom/android/camera/component/UIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->previewSurfaceCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/UIRotationManager$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIRotationManager$2;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/UIRotationManager$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIRotationManager$3;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/UIRotationManager$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIRotationManager$4;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/UIRotationManager$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/UIRotationManager$5;-><init>(Lcom/android/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/UIRotationManager$6;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/UIRotationManager$6;-><init>(Lcom/android/camera/component/UIRotationManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/component/UIRotationManager;->startOrientationListener()V

    return-void
.end method

.method public lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation(\'"

    const-string v3, "\', "

    const-string v5, ")"

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    new-instance v6, Lcom/android/camera/component/UIRotationManager$LockHandle;

    invoke-direct {v6, p1}, Lcom/android/camera/component/UIRotationManager$LockHandle;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - New handle : \'"

    const-string v3, "\' ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public unlockRotation(Lcom/android/camera/Handle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->threadAccessCheck()V

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/camera/component/UIRotationManager$LockHandle;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation(\'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "])"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager;->isRotationLocked:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/component/UIRotationManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    invoke-static {v0}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(I)Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIRotationManager;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_0
.end method
