.class public Lcom/android/camera/component/BIController;
.super Lcom/android/camera/component/UIComponent;
.source "BIController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "BI Controller"


# instance fields
.field private mActionBurst_taken:I

.field private mPhoto_taken:I

.field private mSnapbooth_taken:I

.field private mVideo_taken:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "BIController"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/BIController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BIController;->mPhoto_taken:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/component/BIController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/BIController;->mPhoto_taken:I

    return p1
.end method

.method static synthetic access$004(Lcom/android/camera/component/BIController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BIController;->mPhoto_taken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/BIController;->mPhoto_taken:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/BIController;Lcom/android/camera/HTCCamera;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/BIController;->getMediaCount(Lcom/android/camera/HTCCamera;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/BIController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BIController;->mActionBurst_taken:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/BIController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/BIController;->mActionBurst_taken:I

    return p1
.end method

.method static synthetic access$204(Lcom/android/camera/component/BIController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BIController;->mActionBurst_taken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/BIController;->mActionBurst_taken:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/BIController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BIController;->mVideo_taken:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/BIController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/BIController;->mVideo_taken:I

    return p1
.end method

.method static synthetic access$304(Lcom/android/camera/component/BIController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BIController;->mVideo_taken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/BIController;->mVideo_taken:I

    return v0
.end method

.method private getMediaCount(Lcom/android/camera/HTCCamera;Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAlarm()V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BIController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    const-string v3, "alarm"

    invoke-virtual {v9, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.camera.ulog.MEDIACOUNT"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v9, v3, v14, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v3, 0xb

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v3, 0xc

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v3, 0xd

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v19

    const/16 v3, 0xe

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v6, 0x5265c00

    mul-int/lit16 v3, v13, 0xe10

    mul-int/lit8 v4, v15, 0x3c

    add-int/2addr v3, v4

    add-int v3, v3, v19

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    sub-long v3, v6, v3

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v3, v3, v20

    const-wide/32 v20, 0x497c8

    sub-long v17, v3, v20

    const/4 v3, 0x1

    add-long v4, v11, v17

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "set alarm"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 6

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/BIController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/component/BIController$1;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v5, Lcom/android/camera/TakingPictureState;->TakingPicture:Lcom/android/camera/TakingPictureState;

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/android/camera/component/BIController$1;-><init>(Lcom/android/camera/component/BIController;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/component/BIController$2;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/camera/component/BIController$2;-><init>(Lcom/android/camera/component/BIController;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/HTCCamera;)V

    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/component/BIController;->setAlarm()V

    return-void
.end method
