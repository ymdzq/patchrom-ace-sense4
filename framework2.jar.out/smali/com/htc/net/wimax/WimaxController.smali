.class public Lcom/htc/net/wimax/WimaxController;
.super Ljava/lang/Object;
.source "WimaxController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/WimaxController$1;,
        Lcom/htc/net/wimax/WimaxController$WimaxLock;
    }
.end annotation


# static fields
.field public static final AUTH_NAI_REJECTED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.AUTH_NAI_REJECTED_ACTION"

.field public static final AUTH_STATE_FAIL_ACTION:Ljava/lang/String; = "com.htc.net.wimax.AUTH_STATE_FAIL_ACTION"

.field public static final CURRENT_WIMAX_ENABLED_STATE:Ljava/lang/String; = "curWimaxEnabledState"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_NAPID:Ljava/lang/String; = "napId"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI_LEVEL:Ljava/lang/String; = "newRssiLevel"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_NSPID:Ljava/lang/String; = "nspId"

.field public static final EXTRA_WXCM_CONNECTED:Ljava/lang/String; = "connected"

.field private static LOCAL_LOGD:Z = false

.field private static final MAX_RSSI:I = 0x20

.field private static final MIN_RSSI:I = 0x5

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.STATE_CHANGE"

.field public static final ON_BACKOFF_STATE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.ON_BACKOFF_STATE_ACTION"

.field public static final PICK_WIMAX_NETWORK_ACTION:Ljava/lang/String; = "com.htc.net.wimax.PICK_WIMAX_NETWORK"

.field public static final PREVIOUS_WIMAX_ENABLED_STATE:Ljava/lang/String; = "preWimaxEnabledState"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.RSSI_CHANGED"

.field public static final RSSI_LEVEL:I = 0x4

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.SCAN_RESULTS_AVAILABLE"

.field private static final TAG:Ljava/lang/String; = "WimaxController"

.field public static final WIMAX_ENABLED_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

.field public static final WIMAX_ENABLED_STATE_DISABLED:I = 0x1

.field public static final WIMAX_ENABLED_STATE_DISABLING:I = 0x0

.field public static final WIMAX_ENABLED_STATE_ENABLED:I = 0x3

.field public static final WIMAX_ENABLED_STATE_ENABLING:I = 0x2

.field public static final WIMAX_ENABLED_STATE_UNKNOWN:I = 0x4

.field public static final WXCM_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wimax.wxcm.CONNECTION_CHANGE"

.field public static final WXCM_ERROR_ACTION:Ljava/lang/String; = "com.htc.net.wimax.wxcmError"

.field public static final WXCM_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.wxcm.STATE_CHANGED"

.field public static mProfile:I


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Lcom/htc/net/wimax/IWimaxController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 52
    sput-boolean v0, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    .line 287
    sput v0, Lcom/htc/net/wimax/WimaxController;->mProfile:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/IWimaxController;Landroid/os/Handler;)V
    .locals 2
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    .line 296
    iput-object p2, p0, Lcom/htc/net/wimax/WimaxController;->mHandler:Landroid/os/Handler;

    .line 297
    sget-boolean v0, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxController"

    const-string v1, "WimaxController init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    return-void
.end method

.method public static calculateSignalLevel(II)I
    .locals 13
    .parameter "rssi100x"
    .parameter "cinr100x"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/16 v12, 0x8

    const/4 v11, 0x6

    const/4 v6, 0x0

    .line 312
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x50

    if-ne v9, v10, :cond_f

    .line 316
    div-int/lit8 v4, p0, 0x64

    .line 317
    .local v4, rssi:I
    div-int/lit8 v2, p1, 0x64

    .line 323
    .local v2, cinr:I
    const/4 v9, 0x5

    new-array v1, v9, [[B

    new-array v9, v11, [B

    fill-array-data v9, :array_0

    aput-object v9, v1, v6

    new-array v9, v11, [B

    fill-array-data v9, :array_1

    aput-object v9, v1, v7

    const/4 v7, 0x2

    new-array v9, v11, [B

    fill-array-data v9, :array_2

    aput-object v9, v1, v7

    new-array v7, v11, [B

    fill-array-data v7, :array_3

    aput-object v7, v1, v8

    const/4 v7, 0x4

    new-array v9, v11, [B

    fill-array-data v9, :array_4

    aput-object v9, v1, v7

    .line 333
    .local v1, antennaBarMatrix_KT:[[B
    const/4 v5, 0x0

    .local v5, rssiIdx:I
    const/4 v3, 0x0

    .line 334
    .local v3, cinrIdx:I
    const/16 v7, 0xf

    if-le v2, v7, :cond_2

    const/4 v3, 0x0

    .line 342
    :goto_0
    const/16 v7, -0x37

    if-le v4, v7, :cond_8

    const/4 v5, 0x0

    .line 348
    :goto_1
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    const/4 v7, -0x1

    if-ne v4, v7, :cond_d

    .line 349
    :cond_0
    const-string v7, "WimaxController"

    const-string v8, "antennaBarMatrixIndex(-1) is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 457
    .end local v1           #antennaBarMatrix_KT:[[B
    .end local v2           #cinr:I
    .end local v3           #cinrIdx:I
    .end local v5           #rssiIdx:I
    :cond_1
    :goto_2
    return v3

    .line 335
    .restart local v1       #antennaBarMatrix_KT:[[B
    .restart local v2       #cinr:I
    .restart local v3       #cinrIdx:I
    .restart local v5       #rssiIdx:I
    :cond_2
    const/16 v7, 0xf

    if-lt v7, v2, :cond_3

    const/16 v7, 0xa

    if-le v2, v7, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .line 336
    :cond_3
    const/16 v7, 0xa

    if-lt v7, v2, :cond_4

    if-le v2, v8, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    .line 337
    :cond_4
    if-lt v8, v2, :cond_5

    if-lez v2, :cond_5

    const/4 v3, 0x3

    goto :goto_0

    .line 338
    :cond_5
    if-gtz v2, :cond_6

    const/4 v7, -0x3

    if-le v2, v7, :cond_6

    const/4 v3, 0x4

    goto :goto_0

    .line 339
    :cond_6
    const/4 v7, -0x3

    if-le v7, v2, :cond_7

    const/4 v3, 0x5

    goto :goto_0

    .line 340
    :cond_7
    const/4 v3, -0x1

    goto :goto_0

    .line 343
    :cond_8
    const/16 v7, -0x37

    if-lt v7, v4, :cond_9

    const/16 v7, -0x41

    if-le v4, v7, :cond_9

    const/4 v5, 0x1

    goto :goto_1

    .line 344
    :cond_9
    const/16 v7, -0x41

    if-lt v7, v4, :cond_a

    const/16 v7, -0x4b

    if-le v4, v7, :cond_a

    const/4 v5, 0x2

    goto :goto_1

    .line 345
    :cond_a
    const/16 v7, -0x4b

    if-lt v7, v4, :cond_b

    const/16 v7, -0x50

    if-le v4, v7, :cond_b

    const/4 v5, 0x3

    goto :goto_1

    .line 346
    :cond_b
    const/16 v7, -0x50

    if-lt v7, v4, :cond_c

    const/4 v5, 0x4

    goto :goto_1

    .line 347
    :cond_c
    const/4 v5, -0x1

    goto :goto_1

    .line 352
    :cond_d
    sget-boolean v6, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v6, :cond_e

    const-string v6, "WimaxController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[KT]antennaBarMatrix_KT["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v5

    aget-byte v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_e
    aget-object v6, v1, v5

    aget-byte v3, v6, v3

    goto/16 :goto_2

    .line 360
    .end local v1           #antennaBarMatrix_KT:[[B
    .end local v2           #cinr:I
    .end local v3           #cinrIdx:I
    .end local v4           #rssi:I
    .end local v5           #rssiIdx:I
    :cond_f
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x51

    if-eq v9, v10, :cond_10

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v7, :cond_23

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_23

    .line 369
    :cond_10
    div-int/lit8 v4, p0, 0x64

    .line 370
    .restart local v4       #rssi:I
    div-int/lit8 v9, p1, 0xa

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float v2, v9, v10

    .line 376
    .local v2, cinr:F
    new-array v0, v11, [[B

    new-array v9, v12, [B

    fill-array-data v9, :array_5

    aput-object v9, v0, v6

    new-array v9, v12, [B

    fill-array-data v9, :array_6

    aput-object v9, v0, v7

    const/4 v9, 0x2

    new-array v10, v12, [B

    fill-array-data v10, :array_7

    aput-object v10, v0, v9

    new-array v9, v12, [B

    fill-array-data v9, :array_8

    aput-object v9, v0, v8

    const/4 v8, 0x4

    new-array v9, v12, [B

    fill-array-data v9, :array_9

    aput-object v9, v0, v8

    const/4 v8, 0x5

    new-array v9, v12, [B

    fill-array-data v9, :array_a

    aput-object v9, v0, v8

    .line 386
    .local v0, antennaBarMatrix_KDDI:[[B
    const/4 v5, 0x0

    .restart local v5       #rssiIdx:I
    const/4 v3, 0x0

    .line 387
    .restart local v3       #cinrIdx:I
    const/16 v8, -0x5d

    if-lt v8, v4, :cond_12

    const/4 v5, 0x0

    .line 397
    :goto_3
    const/4 v8, 0x0

    cmpl-float v8, v8, v2

    if-ltz v8, :cond_1a

    const/4 v3, 0x0

    .line 404
    :goto_4
    const/4 v8, -0x1

    if-eq v3, v8, :cond_11

    const/4 v8, -0x1

    if-ne v4, v8, :cond_20

    .line 405
    :cond_11
    const-string v7, "WimaxController"

    const-string v8, "antennaBarMatrixIndex(-1) is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 406
    goto/16 :goto_2

    .line 388
    :cond_12
    const/16 v8, -0x5c

    if-gt v8, v4, :cond_13

    const/16 v8, -0x5a

    if-gt v4, v8, :cond_13

    const/4 v5, 0x1

    goto :goto_3

    .line 389
    :cond_13
    const/16 v8, -0x59

    if-gt v8, v4, :cond_14

    const/16 v8, -0x56

    if-gt v4, v8, :cond_14

    const/4 v5, 0x2

    goto :goto_3

    .line 390
    :cond_14
    const/16 v8, -0x55

    if-gt v8, v4, :cond_15

    const/16 v8, -0x4c

    if-gt v4, v8, :cond_15

    const/4 v5, 0x3

    goto :goto_3

    .line 391
    :cond_15
    const/16 v8, -0x4b

    if-gt v8, v4, :cond_16

    const/16 v8, -0x42

    if-gt v4, v8, :cond_16

    const/4 v5, 0x4

    goto :goto_3

    .line 392
    :cond_16
    const/16 v8, -0x41

    if-gt v8, v4, :cond_17

    const/16 v8, -0x38

    if-gt v4, v8, :cond_17

    const/4 v5, 0x5

    goto :goto_3

    .line 393
    :cond_17
    const/16 v8, -0x37

    if-gt v8, v4, :cond_18

    const/16 v8, -0x2e

    if-gt v4, v8, :cond_18

    const/4 v5, 0x6

    goto :goto_3

    .line 394
    :cond_18
    const/16 v8, -0x2d

    if-gt v8, v4, :cond_19

    const/4 v5, 0x7

    goto :goto_3

    .line 395
    :cond_19
    const/4 v5, -0x1

    goto :goto_3

    .line 398
    :cond_1a
    const v8, 0x3dcccccd

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_1b

    const/high16 v8, 0x4080

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_1b

    const/4 v3, 0x1

    goto :goto_4

    .line 399
    :cond_1b
    const v8, 0x40833333

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_1c

    const/high16 v8, 0x4120

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_1c

    const/4 v3, 0x2

    goto :goto_4

    .line 400
    :cond_1c
    const v8, 0x4121999a

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_1d

    const/high16 v8, 0x4170

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_1d

    const/4 v3, 0x3

    goto :goto_4

    .line 401
    :cond_1d
    const v8, 0x4171999a

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_1e

    const/high16 v8, 0x41a0

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_1e

    const/4 v3, 0x4

    goto/16 :goto_4

    .line 402
    :cond_1e
    const v8, 0x41a0cccd

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_1f

    const/4 v3, 0x5

    goto/16 :goto_4

    .line 403
    :cond_1f
    const/4 v3, -0x1

    goto/16 :goto_4

    .line 409
    :cond_20
    sget v6, Lcom/htc/net/wimax/WimaxController;->mProfile:I

    if-ne v6, v7, :cond_21

    .line 410
    sget-boolean v6, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v6, :cond_1

    const-string v6, "WimaxController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[VEE] signal bar return level= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 414
    :cond_21
    sget-boolean v6, Lcom/htc/net/wimax/WimaxController;->LOCAL_LOGD:Z

    if-eqz v6, :cond_22

    const-string v6, "WimaxController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(Default)[KDDI]antennaBarMatrix_KDDI["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    aget-byte v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_22
    aget-object v6, v0, v3

    aget-byte v3, v6, v5

    goto/16 :goto_2

    .line 447
    .end local v0           #antennaBarMatrix_KDDI:[[B
    .end local v2           #cinr:F
    .end local v3           #cinrIdx:I
    .end local v4           #rssi:I
    .end local v5           #rssiIdx:I
    :cond_23
    div-int/lit8 v4, p0, 0x64

    .line 448
    .restart local v4       #rssi:I
    const/16 v9, -0x5d

    if-ge v4, v9, :cond_24

    move v3, v6

    .line 449
    goto/16 :goto_2

    .line 450
    :cond_24
    const/16 v9, -0x4b

    if-ge v4, v9, :cond_25

    move v3, v7

    .line 451
    goto/16 :goto_2

    .line 452
    :cond_25
    const/16 v7, -0x3c

    if-ge v4, v7, :cond_26

    .line 453
    const/4 v3, 0x2

    goto/16 :goto_2

    .line 454
    :cond_26
    const/16 v7, -0x3c

    if-gt v7, v4, :cond_27

    if-gtz v4, :cond_27

    move v3, v8

    .line 455
    goto/16 :goto_2

    :cond_27
    move v3, v6

    .line 457
    goto/16 :goto_2

    .line 323
    nop

    :array_0
    .array-data 0x1
        0x4t
        0x4t
        0x3t
        0x2t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x4t
        0x3t
        0x2t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x3t
        0x2t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 376
    nop

    :array_5
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
    .end array-data

    :array_8
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x3t
        0x3t
    .end array-data

    :array_9
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x4t
    .end array-data

    :array_a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data
.end method

.method private debugChange()V
    .locals 3

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, wimax_debug:Ljava/lang/String;
    const-string v1, "wimax.debug"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/net/wimax/IWimaxController;->debugChange(Z)V

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/net/wimax/IWimaxController;->debugChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public cancelAlarmDhcpRenew()V
    .locals 1

    .prologue
    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->cancelAlarmDhcpRenew()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancelAlarmScanRetry()V
    .locals 1

    .prologue
    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->cancelAlarmScanRetry()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connectToDcs()Z
    .locals 2

    .prologue
    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->connectToDcs()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 582
    :goto_0
    return v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createWimaxLock(Ljava/lang/String;)Lcom/htc/net/wimax/WimaxController$WimaxLock;
    .locals 2
    .parameter "tag"

    .prologue
    .line 902
    new-instance v0, Lcom/htc/net/wimax/WimaxController$WimaxLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/net/wimax/WimaxController$WimaxLock;-><init>(Lcom/htc/net/wimax/WimaxController;Ljava/lang/String;Lcom/htc/net/wimax/WimaxController$1;)V

    return-object v0
.end method

.method public dcIsConnected()Z
    .locals 2

    .prologue
    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->dcIsConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 745
    :goto_0
    return v1

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnectFromDcs()Z
    .locals 2

    .prologue
    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->disconnectFromDcs()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 590
    :goto_0
    return v1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBoardName(Ljava/lang/String;)Z
    .locals 2
    .parameter "boardName"

    .prologue
    .line 779
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getBoardName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 781
    :goto_0
    return v1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRfChipName(Ljava/lang/String;)Z
    .locals 2
    .parameter "rfChipName"

    .prologue
    .line 787
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getRfChipName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 789
    :goto_0
    return v1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWimaxState()I
    .locals 2

    .prologue
    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 527
    :goto_0
    return v1

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public isBackoffState()Z
    .locals 2

    .prologue
    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isBackoffState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 512
    :goto_0
    return v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceReady()Z
    .locals 2

    .prologue
    .line 751
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isDeviceReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 753
    :goto_0
    return v1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWimaxEnabled()Z
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mgtSetSsStarted(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->mgtSetSsStarted(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 633
    :goto_0
    return v1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlarmDhcpRenew(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setAlarmDhcpRenew(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAlarmScanRetry(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setAlarmScanRetry(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWimaxDunMode(Z)V
    .locals 1
    .parameter "isDunMode"

    .prologue
    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/IWimaxController;->setWimaxDunMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWimaxEnabled(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 469
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxController;->debugChange()V

    .line 474
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 476
    :goto_0
    return v1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWimaxEnabledPersist(ZZ)Z
    .locals 2
    .parameter "enabled"
    .parameter "persist"

    .prologue
    .line 481
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 482
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxController;->debugChange()V

    .line 486
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabledPersist(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 488
    :goto_0
    return v1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wimaxRescan()I
    .locals 2

    .prologue
    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->wimaxRescan()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 497
    :goto_0
    return v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Landroid/os/RemoteException;
    const/16 v1, -0x9

    goto :goto_0
.end method
