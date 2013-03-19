.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIndexMax:I

.field private mIndex_Headset:I

.field private mLastAudibleIndex:I

.field private mLastAudibleIndex_Headset:I

.field private mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

.field private mLastAudibleVolumeIndexSettingName_Headset:Ljava/lang/String;

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field private mVolumeIndexSettingName_Headset:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "settingName"
    .parameter "streamType"

    .prologue
    .line 3067
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3069
    invoke-virtual {p0, p2}, Landroid/media/AudioService$VolumeStreamState;->setVolumeIndexSettingName(Ljava/lang/String;)V

    .line 3071
    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    .line 3073
    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 3074
    .local v0, cr:Landroid/content/ContentResolver;
    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {p1}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)[I

    move-result-object v1

    aget v1, v1, p3

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 3075
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 3078
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 3081
    const/4 v1, 0x0

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {p3, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 3082
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 3083
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 3084
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 3087
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName_Headset:Ljava/lang/String;

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    .line 3090
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName_Headset:Ljava/lang/String;

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    .line 3094
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    .line 3095
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    .line 3096
    invoke-virtual {p1}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3097
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {p1, p3, v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;II)V

    .line 3102
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    .line 3103
    return-void

    .line 3078
    :cond_0
    sget-object v1, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v1, p3

    goto :goto_0

    .line 3090
    :cond_1
    sget-object v1, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v1, p3

    goto :goto_1

    .line 3099
    :cond_2
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {p1, p3, v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;II)V

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3050
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    return v0
.end method

.method static synthetic access$1002(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3050
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    return p1
.end method

.method static synthetic access$1100(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/media/AudioService$VolumeStreamState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->fixCount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$4200(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$500(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    return v0
.end method

.method static synthetic access$502(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3050
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    return p1
.end method

.method static synthetic access$5100(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName_Headset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName_Headset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return v0
.end method

.method static synthetic access$602(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3050
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return p1
.end method

.method static synthetic access$800(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3050
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3050
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return v0
.end method

.method static synthetic access$902(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3050
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return p1
.end method

.method private fixCount()Z
    .locals 1

    .prologue
    .line 3411
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->applyOutdoorMode()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->maxCount()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .locals 7
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 3433
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3435
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3436
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3437
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .line 3438
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$4900(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 3439
    monitor-exit v5

    move-object v1, v0

    .line 3450
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_1
    return-object v1

    .line 3436
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3444
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_1
    if-eqz p2, :cond_2

    .line 3445
    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .line 3450
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_1

    .line 3447
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_2
    const-string v4, "AudioService"

    const-string/jumbo v6, "stream was not muted by this client"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    const/4 v0, 0x0

    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_2

    .line 3451
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getValidIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 3242
    if-gez p1, :cond_1

    .line 3243
    const/4 p1, 0x0

    .line 3248
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 3244
    .restart local p1
    :cond_1
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_0

    .line 3245
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0
.end method

.method private maxCount()I
    .locals 4

    .prologue
    .line 3424
    const/4 v0, 0x0

    .line 3425
    .local v0, count:I
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3426
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3427
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMaxCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$4800(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I

    move-result v3

    add-int/2addr v0, v3

    .line 3426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3429
    :cond_0
    return v0
.end method

.method private muteCount()I
    .locals 4

    .prologue
    .line 3415
    const/4 v0, 0x0

    .line 3416
    .local v0, count:I
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3417
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3418
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1400(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I

    move-result v3

    add-int/2addr v0, v3

    .line 3417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3420
    :cond_0
    return v0
.end method


# virtual methods
.method public adjustIndex(I)Z
    .locals 3
    .parameter "deltaIndex"

    .prologue
    const/4 v2, 0x1

    .line 3118
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    move-result v0

    .line 3121
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public adjustLastAudibleIndex(I)V
    .locals 2
    .parameter "deltaIndex"

    .prologue
    .line 3207
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 3208
    return-void
.end method

.method public getHeadsetIndex()I
    .locals 1

    .prologue
    .line 3238
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 3234
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return v0
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 3211
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public mute(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 3215
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 3216
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_0

    .line 3217
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    :goto_0
    return-void

    .line 3220
    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    goto :goto_0
.end method

.method public mute(Landroid/os/IBinder;ZI)V
    .locals 4
    .parameter "cb"
    .parameter "state"
    .parameter "index"

    .prologue
    .line 3224
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 3225
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_0

    .line 3226
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    :goto_0
    return-void

    .line 3229
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(ZI)V

    goto :goto_0
.end method

.method public setHSIndex(IZ)Z
    .locals 7
    .parameter "index"
    .parameter "lastAudible"

    .prologue
    .line 3151
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHSIndex(), mIndex_Headset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastAudible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    .line 3154
    .local v1, oldIndex:I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v3

    iput v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    .line 3155
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    if-eq v1, v3, :cond_3

    .line 3156
    if-eqz p2, :cond_0

    .line 3157
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    iput v3, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    .line 3160
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3161
    .local v0, numStreamTypes:I
    add-int/lit8 v2, v0, -0x1

    .local v2, streamType:I
    :goto_0
    if-ltz v2, :cond_2

    .line 3162
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v3}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v3

    aget v3, v3, v2

    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v4, :cond_1

    .line 3163
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v3}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v4, v5, v6, v2}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;III)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    .line 3161
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3166
    :cond_2
    const/4 v3, 0x1

    .line 3168
    .end local v0           #numStreamTypes:I
    .end local v2           #streamType:I
    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setIndex(IZ)Z
    .locals 7
    .parameter "index"
    .parameter "lastAudible"

    .prologue
    .line 3128
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIndex(), mIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastAudible = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 3131
    .local v1, oldIndex:I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v3

    iput v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 3133
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-eq v1, v3, :cond_3

    .line 3134
    if-eqz p2, :cond_0

    .line 3135
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iput v3, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 3138
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3139
    .local v0, numStreamTypes:I
    add-int/lit8 v2, v0, -0x1

    .local v2, streamType:I
    :goto_0
    if-ltz v2, :cond_2

    .line 3140
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v3}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v3

    aget v3, v3, v2

    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v4, :cond_1

    .line 3141
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v3}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v4, v5, v6, v2}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;III)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 3139
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3144
    :cond_2
    const/4 v3, 0x1

    .line 3146
    .end local v0           #numStreamTypes:I
    .end local v2           #streamType:I
    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setIndex(IZZ)Z
    .locals 7
    .parameter "index"
    .parameter "lastAudible"
    .parameter "applyHeadsetProfile"

    .prologue
    .line 3173
    if-eqz p3, :cond_2

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    .line 3175
    .local v2, oldIndex:I
    :goto_0
    if-eqz p3, :cond_3

    .line 3176
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    .line 3180
    :goto_1
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-eq v2, v4, :cond_8

    .line 3181
    if-eqz p2, :cond_0

    .line 3182
    if-eqz p3, :cond_4

    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    :goto_2
    iput v4, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 3184
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 3185
    .local v1, numStreamTypes:I
    add-int/lit8 v3, v1, -0x1

    .local v3, streamType:I
    :goto_3
    if-ltz v3, :cond_7

    .line 3186
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v4}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[I

    move-result-object v4

    aget v4, v4, v3

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v4, v5, :cond_1

    .line 3187
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    if-eqz p3, :cond_5

    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    :goto_4
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v5, v4, v6, v3}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;III)I

    move-result v0

    .line 3190
    .local v0, newIndex:I
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3191
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4, v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 3185
    .end local v0           #newIndex:I
    :cond_1
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 3173
    .end local v1           #numStreamTypes:I
    .end local v2           #oldIndex:I
    .end local v3           #streamType:I
    :cond_2
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    goto :goto_0

    .line 3178
    .restart local v2       #oldIndex:I
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    goto :goto_1

    .line 3182
    :cond_4
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    goto :goto_2

    .line 3187
    .restart local v1       #numStreamTypes:I
    .restart local v3       #streamType:I
    :cond_5
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    goto :goto_4

    .line 3193
    .restart local v0       #newIndex:I
    :cond_6
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4, v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    goto :goto_5

    .line 3196
    .end local v0           #newIndex:I
    :cond_7
    const/4 v4, 0x1

    .line 3198
    .end local v1           #numStreamTypes:I
    .end local v3           #streamType:I
    :goto_6
    return v4

    :cond_8
    const/4 v4, 0x0

    goto :goto_6
.end method

.method public setLastAudibleIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3203
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 3204
    return-void
.end method

.method public setVolumeIndexSettingName(Ljava/lang/String;)V
    .locals 2
    .parameter "settingName"

    .prologue
    .line 3106
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 3107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_last_audible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    .line 3109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_headset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName_Headset:Ljava/lang/String;

    .line 3110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_last_audible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_headset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName_Headset:Ljava/lang/String;

    .line 3113
    return-void
.end method
