.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DefaultPhoneNotifier$1;,
        Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "DATA"


# instance fields
.field private latest_any_DCState:I

.field private latest_apnType:Ljava/lang/String;

.field private latest_each_DCState:I

.field private latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

.field private latest_ipv_DCState:I

.field private latest_isDCPossible:Z

.field private latest_tech:I

.field private latest_techIcon:I

.field private mCombineServiceState:Landroid/telephony/ServiceState;

.field private mDataServiceState:Landroid/telephony/ServiceState;

.field private mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mVoiceServiceState:Landroid/telephony/ServiceState;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x12

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    .line 57
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    .line 58
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;

    .line 61
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_apnType:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_any_DCState:I

    .line 64
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_each_DCState:I

    .line 67
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_ipv_DCState:I

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_isDCPossible:Z

    .line 69
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_techIcon:I

    .line 74
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_tech:I

    .line 1069
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    .line 79
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 82
    new-array v1, v4, [Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    iput-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    new-instance v2, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;-><init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;Lcom/android/internal/telephony/DefaultPhoneNotifier$1;)V

    aput-object v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method private HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/Phone$IPVersion;IIII)Z
    .locals 12
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"
    .parameter "possible"
    .parameter "tech"
    .parameter "roaming"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "ipv"
    .parameter "converDataResultAll"
    .parameter "converApnTypeState"
    .parameter "converRealIpApnTypeState"
    .parameter "errorCause"

    .prologue
    .line 914
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v11

    .line 916
    .local v11, apnId:I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_0

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcDupNotifyDcParam get invalid id from type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 918
    const/4 v0, 0x1

    .line 942
    :goto_0
    return v0

    .line 921
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v0, :cond_2

    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->HtcDupNotifyDcParam(ZILcom/android/internal/telephony/Phone$IPVersion;III)Z
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$100(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;ZILcom/android/internal/telephony/Phone$IPVersion;III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    const-string v0, "MM HtcDupNotifyDcParam: the same notification, ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 925
    const/4 v0, 0x1

    goto :goto_0

    .line 927
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MM update DcParam of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->configNotifyDcParam(ZILcom/android/internal/telephony/Phone$IPVersion;III)V
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$200(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;ZILcom/android/internal/telephony/Phone$IPVersion;III)V

    .line 930
    const/4 v0, 0x0

    goto :goto_0

    .line 934
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p14

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z
    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$300(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 936
    const-string v0, "HtcDupNotifyDcParam: the same notification, ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 937
    const/4 v0, 0x1

    goto :goto_0

    .line 939
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update DcParam of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p6

    move/from16 v7, p14

    move-object v9, p2

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->configNotifyDcParam(Lcom/android/internal/telephony/Phone$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$400(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;Lcom/android/internal/telephony/Phone$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V

    .line 942
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/DefaultPhoneNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_isDCPossible:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/DefaultPhoneNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_techIcon:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/DefaultPhoneNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static convertCallState(Lcom/android/internal/telephony/Phone$State;)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 455
    if-nez p0, :cond_0

    .line 456
    const-string v1, "DATA"

    const-string v2, "Incorrect parameter for convertCallState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_0
    return v0

    .line 460
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 462
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 464
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertCallState(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "state"

    .prologue
    .line 475
    packed-switch p0, :pswitch_data_0

    .line 481
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    :goto_0
    return-object v0

    .line 477
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 479
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 531
    if-nez p0, :cond_0

    .line 532
    const-string v1, "DATA"

    const-string v2, "Incorrect parameter for convertDataActivityState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :goto_0
    return v0

    .line 536
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataActivityState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 538
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 540
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 542
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 544
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataActivityState(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter "state"

    .prologue
    .line 555
    packed-switch p0, :pswitch_data_0

    .line 565
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    :goto_0
    return-object v0

    .line 557
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 559
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 561
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 563
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 491
    if-nez p0, :cond_0

    .line 492
    const-string v1, "DATA"

    const-string v2, "Incorrect parameter for convertDataState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :goto_0
    return v0

    .line 496
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 498
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 500
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 502
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "state"

    .prologue
    .line 513
    packed-switch p0, :pswitch_data_0

    .line 521
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v0

    .line 515
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 517
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 519
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 831
    if-nez p0, :cond_0

    .line 832
    const-string v1, "DATA"

    const-string v2, "Incorrect parameter for convertDataStateLTE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :goto_0
    return v0

    .line 836
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 838
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 840
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 842
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 836
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "state"

    .prologue
    .line 852
    packed-switch p0, :pswitch_data_0

    .line 860
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v0

    .line 854
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 856
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 858
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 32
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 331
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v31

    .line 332
    .local v31, telephony:Landroid/telephony/TelephonyManager;
    const/4 v10, 0x0

    .line 333
    .local v10, linkProperties:Landroid/net/LinkProperties;
    const/4 v11, 0x0

    .line 334
    .local v11, linkCapabilities:Landroid/net/LinkCapabilities;
    const/4 v9, 0x0

    .line 336
    .local v9, roaming:Z
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 337
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v10

    .line 338
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v11

    .line 340
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v30

    .line 341
    .local v30, ss:Landroid/telephony/ServiceState;
    if-eqz v30, :cond_1

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    .line 343
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->HtcisDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v7

    .line 344
    .local v7, possible:Z
    if-eqz v31, :cond_4

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 347
    .local v8, tech:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getEntitleErrorCause()I

    move-result v16

    .line 350
    .local v16, errorCause:I
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 353
    .local v28, apnCarrier:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DPN] state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " possible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lp=<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " roaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " carrier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 362
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe5

    if-ne v2, v3, :cond_3

    .line 363
    const-string v29, "/sys/android_touch/phonecall"

    .line 364
    .local v29, HTC_ACCESSORY_TOUCH:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_2

    .line 365
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_tech:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_6

    const/4 v2, 0x3

    if-lt v8, v2, :cond_6

    .line 366
    const-string v2, "/sys/android_touch/phonecall"

    const-string v3, "0\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_tech:I

    .line 376
    .end local v29           #HTC_ACCESSORY_TOUCH:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/Phone$IPVersion;IIII)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 417
    :goto_3
    return-void

    .line 344
    .end local v8           #tech:I
    .end local v16           #errorCause:I
    .end local v28           #apnCarrier:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 353
    .restart local v8       #tech:I
    .restart local v16       #errorCause:I
    .restart local v28       #apnCarrier:Ljava/lang/String;
    :cond_5
    const-string v2, "null"

    goto :goto_1

    .line 367
    .restart local v29       #HTC_ACCESSORY_TOUCH:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_tech:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    const/4 v2, 0x3

    if-ge v8, v2, :cond_2

    .line 368
    const-string v2, "/sys/android_touch/phonecall"

    const-string v3, "1\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 401
    .end local v29           #HTC_ACCESSORY_TOUCH:Ljava/lang/String;
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    move-object/from16 v17, v0

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move/from16 v19, v7

    move-object/from16 v20, p2

    move-object/from16 v22, p3

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v16

    invoke-interface/range {v17 .. v28}, Lcom/android/internal/telephony/ITelephonyRegistry;->HtcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 413
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 446
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneNotifier] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method


# virtual methods
.method UpdateVoiceCallAttrFileForDrivers(Lcom/android/internal/telephony/Phone$State;)V
    .locals 14
    .parameter "state"

    .prologue
    const/16 v13, 0x2d7

    const/16 v12, 0xe5

    .line 649
    const-string v2, "/sys/camera_led_status/led_ril_status"

    .line 650
    .local v2, FLASH_LIGHT_AP:Ljava/lang/String;
    const-string v3, "/sys/module/msm_flashlight/parameters/phone_status"

    .line 651
    .local v3, FLASH_LIGHT_DRV:Ljava/lang/String;
    const-string v4, "/sys/module/gpio_event/parameters/phone_call_status"

    .line 652
    .local v4, GPIO_EVENT:Ljava/lang/String;
    const-string v7, "/sys/class/power_supply/battery/charger_control"

    .line 653
    .local v7, SLOW_CHARGE:Ljava/lang/String;
    const-string v0, "/sys/module/htc_battery_8x60/parameters/phone_call"

    .line 654
    .local v0, BATTERY_CALCULATION:Ljava/lang/String;
    const-string v1, "/sys/class/power_supply/battery/phone_call"

    .line 655
    .local v1, BATTERY_CALCULATION_NEW:Ljava/lang/String;
    const-string v5, "/sys/class/htc_accessory/phonein/flag"

    .line 657
    .local v5, HTC_ACCESSORY_PHONEIN:Ljava/lang/String;
    const-string v6, "/sys/android_touch/phonecall"

    .line 660
    .local v6, HTC_ACCESSORY_TOUCH:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v10, :cond_3

    .line 662
    const-string v10, "/sys/camera_led_status/led_ril_status"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v10, "/sys/module/msm_flashlight/parameters/phone_status"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v10, "/sys/module/gpio_event/parameters/phone_call_status"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v10, v12, :cond_1

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v10, v13, :cond_1

    .line 670
    const-string v10, "/sys/class/power_supply/battery/charger_control"

    const-string v11, "2\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_0
    :goto_0
    const-string v10, "/sys/module/htc_battery_8x60/parameters/phone_call"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v10, "/sys/class/power_supply/battery/phone_call"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v10, "/sys/class/htc_accessory/phonein/flag"

    const-string v11, "phonein\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :goto_1
    return-void

    .line 674
    :cond_1
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v10, v12, :cond_0

    .line 676
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    .line 677
    .local v9, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 678
    .local v8, tech:I
    :goto_2
    const/4 v10, 0x3

    if-ge v8, v10, :cond_0

    .line 679
    const-string v10, "/sys/android_touch/phonecall"

    const-string v11, "1\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 677
    .end local v8           #tech:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 690
    .end local v9           #telephony:Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v10, "/sys/camera_led_status/led_ril_status"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v10, "/sys/module/msm_flashlight/parameters/phone_status"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v10, "/sys/module/gpio_event/parameters/phone_call_status"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v10, v12, :cond_5

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v10, v13, :cond_5

    .line 698
    const-string v10, "/sys/class/power_supply/battery/charger_control"

    const-string v11, "3\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_4
    :goto_3
    const-string v10, "/sys/module/htc_battery_8x60/parameters/phone_call"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v10, "/sys/class/power_supply/battery/phone_call"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v10, "/sys/class/htc_accessory/phonein/flag"

    const-string v11, "phoneoff\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 702
    :cond_5
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v10, v12, :cond_4

    .line 704
    const-string v10, "/sys/android_touch/phonecall"

    const-string v11, "0\n"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 615
    if-nez p1, :cond_0

    .line 616
    const-string v1, "DATA"

    const-string v2, "Incorrect parameter for convertPreciseCallState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_0
    :pswitch_0
    return v0

    .line 620
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 625
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 627
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 629
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 631
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 633
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 635
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 637
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 639
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method dataRadioTechMapToDataIcon(I)I
    .locals 4
    .parameter "getRadioDataTechnology"

    .prologue
    const/4 v0, 0x4

    .line 867
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM]dataRadioTechMapToDataIcon   getRadioDataTechnology= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    packed-switch p1, :pswitch_data_0

    .line 904
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 873
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 875
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 877
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 883
    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 885
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 887
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 889
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 891
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 893
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 895
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 897
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 899
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 901
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 871
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public notifyCallDisconnected(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "cn"

    .prologue
    .line 578
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, number:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->htcNotifyCallDisconnected(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 428
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 429
    .local v0, data:Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocation(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 1
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 318
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0
.end method

.method public notifyDataConnectionDisconnected(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;[Ljava/lang/String;)V
    .locals 0
    .parameter "sender"
    .parameter "reason"
    .parameter "dataConnectionState"
    .parameter "activeApnTypes"

    .prologue
    .line 255
    return-void
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnectionFailedLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 2
    .parameter "sender"
    .parameter "reason"

    .prologue
    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v0, "DATA"

    const-string v1, "[QCTMM] !!! Need Fix on AIDL notifyDataConnectionFailedLTE "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnectionLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V
    .locals 32
    .parameter "sender"
    .parameter "apnType"
    .parameter "ipv"
    .parameter "reason"

    .prologue
    .line 754
    if-nez p1, :cond_0

    .line 755
    const-string v2, "DATA"

    const-string v3, "notifyDataConnectionLTE: sender is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v31

    .line 760
    .local v31, telephony:Landroid/telephony/TelephonyManager;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v13

    .line 762
    .local v13, converDataResultAll:I
    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v14

    .line 764
    .local v14, converApnTypeState:I
    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v15

    .line 765
    .local v15, converRealIpApnTypeState:I
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v7

    .line 766
    .local v7, possible:Z
    const-string v2, "gsm.RadioDataTechnology"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 767
    .local v30, getRadioDataTechnology:I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->dataRadioTechMapToDataIcon(I)I

    move-result v8

    .line 780
    .local v8, tech:I
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DPN] type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " anyState(TM)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eachState(TM)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eachIPState(TM)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " if="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " possible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/Phone$IPVersion;IIII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 812
    :goto_0
    return-void

    .line 794
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    move-object/from16 v16, v0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v24

    move/from16 v17, v13

    move-object/from16 v18, p2

    move/from16 v20, v14

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v15

    move-object/from16 v28, p4

    invoke-interface/range {v16 .. v28}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionLTE(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    :catch_0
    move-exception v29

    .line 810
    .local v29, ex:Landroid/os/RemoteException;
    const-string v2, "DATA"

    const-string v3, "notifyDataConnectionLTE Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyDataConnectionVZWLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 4
    .parameter "sender"
    .parameter "reason"

    .prologue
    .line 260
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PhoneNotifier] OLD notifyDataConnection, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .local v0, telephony:Landroid/telephony/TelephonyManager;
    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicatorEnhanced()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1
    .parameter "sender"
    .parameter "otaspMode"

    .prologue
    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "sender"

    .prologue
    .line 90
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 91
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v0, ""

    .line 92
    .local v0, incomingNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifyPrecisePhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "sender"

    .prologue
    .line 586
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 587
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 588
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 589
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 591
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 593
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 605
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->htcNotifyPreciseCallStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_1
    return-void

    .line 595
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 597
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    .line 599
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    .line 606
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "sender"

    .prologue
    .line 181
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 182
    .local v0, ss:Landroid/telephony/ServiceState;
    if-nez v0, :cond_0

    .line 183
    new-instance v0, Landroid/telephony/ServiceState;

    .end local v0           #ss:Landroid/telephony/ServiceState;
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 184
    .restart local v0       #ss:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 187
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 198
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceStateVZWLTE(Lcom/android/internal/telephony/Phone;)V

    .line 215
    :goto_0
    return-void

    .line 204
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceStateVZWLTE(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    goto :goto_0

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public notifyServiceStateAndSeparate(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .parameter "sender"

    .prologue
    const/4 v6, 0x1

    .line 118
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 119
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    .line 121
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 122
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    .line 130
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->combineVoiceDataServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;

    .line 131
    const-string v3, "DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineServiceStates ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] => ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, vss:[Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    .line 139
    .local v1, dss:[Landroid/telephony/ServiceState;
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-nez v3, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xe0

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x2d8

    if-ne v3, v4, :cond_3

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_5

    .line 143
    const/4 v3, 0x1

    new-array v2, v3, [Landroid/telephony/ServiceState;

    .line 144
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    aput-object v4, v2, v3

    .line 157
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_3

    .line 158
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/telephony/ServiceState;

    .line 159
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    aput-object v4, v1, v3

    .line 166
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    :goto_1
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(Landroid/telephony/ServiceState;)V

    .line 170
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 171
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->htcNotifySeparateServiceState([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    .line 177
    .end local v1           #dss:[Landroid/telephony/ServiceState;
    .end local v2           #vss:[Landroid/telephony/ServiceState;
    :cond_4
    :goto_2
    return-void

    .line 148
    .restart local v1       #dss:[Landroid/telephony/ServiceState;
    .restart local v2       #vss:[Landroid/telephony/ServiceState;
    :cond_5
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    .line 149
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 152
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    goto :goto_0

    .line 174
    .end local v1           #dss:[Landroid/telephony/ServiceState;
    .end local v2           #vss:[Landroid/telephony/ServiceState;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 166
    .restart local v1       #dss:[Landroid/telephony/ServiceState;
    .restart local v2       #vss:[Landroid/telephony/ServiceState;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public notifyServiceStateVZWLTE(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceStateAndSeparate(Lcom/android/internal/telephony/Phone;)V

    .line 111
    return-void
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "filename"
    .parameter "value"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 716
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 718
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 723
    .local v0, bufferWriter:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v5, 0x80

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 724
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .local v1, bufferWriter:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 736
    if-eqz v1, :cond_0

    .line 740
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 749
    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 726
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 728
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "FileNotFoundException : %s "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 736
    if-eqz v0, :cond_0

    .line 740
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 742
    :catch_1
    move-exception v2

    .line 744
    .local v2, e:Ljava/io/IOException;
    const-string v4, "close file to cause IOException : %s "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 730
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v2

    .line 732
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v4, "IOException: %s "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 736
    if-eqz v0, :cond_0

    .line 740
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 742
    :catch_3
    move-exception v2

    .line 744
    const-string v4, "close file to cause IOException : %s "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 736
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v0, :cond_1

    .line 740
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 736
    :cond_1
    :goto_5
    throw v4

    .line 742
    :catch_4
    move-exception v2

    .line 744
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "close file to cause IOException : %s "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 742
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v2

    .line 744
    .restart local v2       #e:Ljava/io/IOException;
    const-string v4, "close file to cause IOException : %s "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 736
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 730
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 726
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    goto/16 :goto_1
.end method
