.class public Lcom/android/camera/menu/ImageAdjustmentMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "ImageAdjustmentMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;
    }
.end annotation


# static fields
.field private static final m_ImagePropertyPrefKeys:[Ljava/lang/String;


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_CameraThread:Lcom/android/camera/CameraThread;

.field private final m_Items:[Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_camera_brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_camera_contrast"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_camera_saturation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_camera_shaprness"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_ImagePropertyPrefKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    iput-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    iput-object p1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/menu/ImageAdjustmentMenuItem;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/menu/ImageAdjustmentMenuItem;)Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_ImagePropertyPrefKeys:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public updateContent()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    new-instance v3, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;-><init>(Lcom/android/camera/menu/ImageAdjustmentMenuItem;I)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    invoke-virtual {p0, v2}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    :cond_1
    const v1, 0x7f0a0072

    iget-object v2, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_Items:[Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->isDefaultLevel()Z

    move-result v2

    if-nez v2, :cond_3

    const v1, 0x7f0a0071

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->setSummary(I)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
