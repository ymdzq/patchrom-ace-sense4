.class public Lcom/android/internal/telephony/HtcSequentialRadioPower;
.super Landroid/os/Handler;
.source "HtcSequentialRadioPower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_DETAIL:Z = false

.field private static final DEBUG_SECURITY:Z = false

.field private static final EVENT_CMD_CELLUAR:I = 0x5

.field private static final EVENT_CMD_CELLULAR:I = 0x6

.field private static final EVENT_CMD_COMPLETE:I = 0x7

.field private static final EVENT_CMD_MSG_TIMEOUT:I = 0x8

.field private static final EVENT_CMD_RADIO:I = 0x4

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_QUEUE_INSERT:I = 0x3

.field private static final EVENT_STOP:I = 0x2

.field private static final INTENT_COMMAND_ALARM:Ljava/lang/String; = "com.android.internal.telephony.seq-radio"

.field private static final INTENT_COMMAND_EXTEA:Ljava/lang/String; = "seqNo"

.field private static final LOG_PREFIX:Ljava/lang/String; = "SeqRdo-"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final TIMEOUT_COMMAND_MS:I = 0x9c40

.field private static mReflectDetectComplete:Z

.field private static mReflectInterface:Ljava/lang/Object;

.field private static mRilFuncPowerControlObj:Ljava/lang/reflect/Method;


# instance fields
.field private mBcaseReceiver:Landroid/content/BroadcastReceiver;

.field private mBlockingCommandQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockingCommandUntilQuickbootOn:Z

.field private mCommandAlarmIntent:Landroid/app/PendingIntent;

.field private mCommandRegistrants:Landroid/os/RegistrantList;

.field private mContext:Landroid/content/Context;

.field private mDenySimLockReported:Ljava/lang/Boolean;

.field private mLast_PartialControl_Radio:Ljava/lang/Boolean;

.field private mPartialControlQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mPartialControl_Radio:[Ljava/lang/Boolean;

.field private mPartialControl_Sim:[Ljava/lang/Boolean;

.field private mProcessingIndex:I

.field private mProcessingRadioPartCommand:Ljava/lang/Boolean;

.field private mProcessingSimPartCommand:Ljava/lang/Boolean;

.field private mRil:Lcom/android/internal/telephony/CommandsInterface;

.field private mRilFuncCelluarPower:Ljava/lang/reflect/Method;

.field private mRilFuncCellularPower:Ljava/lang/reflect/Method;

.field private mStateMonitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->DEBUG_DETAIL:Z

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 10
    .parameter "context"
    .parameter "ril"

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x1

    .line 229
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 223
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    .line 224
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    .line 295
    new-array v3, v4, [Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    .line 296
    new-array v3, v9, [Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    .line 297
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    .line 300
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    .line 231
    iput-object p2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v3, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    :goto_0
    if-eqz v0, :cond_1

    .line 240
    sget-object v4, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v4

    .line 242
    :try_start_1
    const-string v3, "htcSequentialRadioControl"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    :goto_1
    :try_start_2
    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 248
    :try_start_3
    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 253
    :cond_0
    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 256
    return-void

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeqRdo-CommandsInterface ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 244
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SeqRdo-htcSequentialRadioControl ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 253
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 249
    :catch_2
    move-exception v2

    .line 250
    .local v2, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SeqRdo-Unable to setup HTC power control : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)C
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/HtcSequentialRadioPower;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    return-object p1
.end method

.method private celluarPowerFailSuppliment(Ljava/lang/Boolean;I)V
    .locals 4
    .parameter "celluarState"
    .parameter "sequenceNo"

    .prologue
    .line 798
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    .line 799
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 801
    return-void
.end method

.method private cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V
    .locals 7
    .parameter "cellularState"
    .parameter "sequenceNo"

    .prologue
    .line 781
    const/4 v0, 0x1

    .line 782
    .local v0, cellularPowerFail:Z
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCelluarPower:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 784
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCelluarPower:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, p2, v6, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    const/4 v0, 0x0

    .line 789
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 793
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->celluarPowerFailSuppliment(Ljava/lang/Boolean;I)V

    .line 795
    :cond_1
    return-void

    .line 787
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private charLogBooleanValue(Ljava/lang/Boolean;)C
    .locals 1
    .parameter "value"

    .prologue
    .line 852
    if-eqz p1, :cond_1

    .line 853
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    .line 855
    :goto_0
    return v0

    .line 853
    :cond_0
    const/16 v0, 0x30

    goto :goto_0

    .line 855
    :cond_1
    const/16 v0, 0x2d

    goto :goto_0
.end method

.method private commandTimer(Ljava/lang/Integer;)V
    .locals 8
    .parameter "seqNo"

    .prologue
    const-wide/32 v6, 0x9c40

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 949
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->removeMessages(I)V

    .line 951
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 952
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 953
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 954
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 955
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    .line 959
    :cond_0
    if-eqz p1, :cond_1

    .line 960
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v5, v2, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 963
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.seq-radio"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 964
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "seqNo"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 965
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    .line 966
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v6

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 970
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .locals 3
    .parameter "context"
    .parameter "ril"

    .prologue
    .line 131
    invoke-static {p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .line 132
    .local v0, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;

    .end local v0           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 138
    .restart local v0       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const-string v1, "PHONE"

    const-string v2, "SeqRdo-This RIL has been registerred."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dispose(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .parameter "ril"

    .prologue
    const/4 v7, 0x2

    .line 145
    invoke-static {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v1

    .line 146
    .local v1, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v1, :cond_1

    .line 147
    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v3

    .line 148
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 150
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 158
    :cond_1
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeqRdo-Unable to clear HTC power control : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public static getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .locals 7
    .parameter "ril"

    .prologue
    const/4 v2, 0x0

    .line 164
    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v3

    .line 165
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, obj:Ljava/lang/Object;
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 170
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    .line 171
    :try_start_2
    check-cast v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;

    monitor-exit v3

    .line 175
    :goto_1
    return-object v0

    .line 174
    :cond_0
    monitor-exit v3

    move-object v0, v2

    .line 175
    goto :goto_1

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 169
    .restart local v0       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "givenPartialControl"
    .parameter "givenState"

    .prologue
    .line 866
    const/4 v1, 0x0

    aput-object p2, p1, v1

    .line 867
    const/4 v0, 0x1

    .local v0, index:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 868
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    :cond_0
    return-void
.end method

.method private lock_clearQueueAndSendBackNotifyAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 885
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 886
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 888
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    .line 890
    .local v0, cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    if-eqz v0, :cond_0

    .line 891
    iget-object v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 892
    iget-object v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 893
    iget-object v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 898
    .end local v0           #cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 899
    return-void
.end method

.method private lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5
    .parameter "partialControlStatus"

    .prologue
    .line 873
    const/4 v2, 0x0

    .line 874
    .local v2, latestState:Ljava/lang/Boolean;
    if-eqz p1, :cond_1

    .line 875
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Boolean;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 876
    .local v4, status:Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    .line 877
    move-object v2, v4

    .line 875
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 881
    .end local v0           #arr$:[Ljava/lang/Boolean;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #status:Ljava/lang/Boolean;
    :cond_1
    return-object v2
.end method

.method private lock_logPartialControlCommands()Ljava/lang/String;
    .locals 7

    .prologue
    .line 902
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 904
    .local v5, strBuf:Ljava/lang/StringBuffer;
    const-string v6, "Cmd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    .local v0, arr$:[Ljava/lang/Boolean;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 907
    .local v1, cmdRadio:Ljava/lang/Boolean;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 906
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 909
    .end local v1           #cmdRadio:Ljava/lang/Boolean;
    :cond_0
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 911
    .local v2, cmdSim:Ljava/lang/Boolean;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 910
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 914
    .end local v2           #cmdSim:Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private lock_logQueueCommands()V
    .locals 5

    .prologue
    .line 918
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 920
    .local v2, strBuf:Ljava/lang/StringBuffer;
    const-string v3, "SeqRdo-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 921
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 922
    const-string v3, " queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    const/4 v1, 0x0

    .line 925
    .local v1, index:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 926
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    .line 927
    .local v0, cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    if-eqz v0, :cond_0

    .line 928
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 929
    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 932
    goto :goto_0

    .line 934
    .end local v0           #cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    :cond_1
    const-string v3, " dny"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 935
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 937
    const-string v3, "PHONE"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void
.end method

.method private lock_removeFirstPartialControl([Ljava/lang/Boolean;)V
    .locals 3
    .parameter "givenPartialControl"

    .prologue
    const/4 v2, 0x1

    .line 859
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 860
    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 863
    return-void
.end method

.method public static needToMaintainSimWhenRadioOff()Z
    .locals 11

    .prologue
    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, hasSimCard:Z
    const/4 v3, 0x0

    .line 73
    .local v3, hasNVaccount:Z
    sget-object v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    .line 74
    .local v1, accounts:[I
    move-object v2, v1

    .local v2, arr$:[I
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_3

    aget v0, v2, v5

    .line 75
    .local v0, account:I
    and-int/lit8 v9, v0, 0x1

    if-nez v9, :cond_0

    and-int/lit8 v9, v0, 0x4

    if-nez v9, :cond_0

    and-int/lit8 v9, v0, 0x8

    if-nez v9, :cond_0

    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_1

    .line 80
    :cond_0
    const/4 v4, 0x1

    .line 82
    :cond_1
    and-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_2

    .line 83
    const/4 v3, 0x1

    .line 74
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 87
    .end local v0           #account:I
    :cond_3
    const/high16 v9, -0x8000

    sget v10, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v9, v10}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v6

    .line 92
    .local v6, isWorldPhone:Z
    const/4 v8, 0x0

    .line 93
    .local v8, needSimActive:Z
    if-eqz v4, :cond_4

    .line 94
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x51

    if-ne v9, v10, :cond_5

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_5

    .line 98
    const/4 v8, 0x1

    .line 122
    :cond_4
    :goto_1
    return v8

    .line 101
    :cond_5
    if-nez v3, :cond_4

    .line 112
    if-eqz v6, :cond_4

    goto :goto_1
.end method

.method private processQueueCommands(Z)V
    .locals 21
    .parameter "initialIssue"

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    if-eqz v13, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    const/4 v10, 0x0

    .line 624
    .local v10, queueBeforeDecision:Ljava/lang/String;
    const/4 v9, 0x0

    .line 625
    .local v9, queueAfterDecision:Ljava/lang/String;
    const/4 v11, 0x0

    .line 626
    .local v11, rilState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v14

    .line 627
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-nez v13, :cond_2

    .line 630
    monitor-exit v14

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 633
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v10

    .line 636
    if-eqz p1, :cond_e

    .line 637
    const/4 v6, 0x0

    .line 639
    .local v6, forceRadio:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    .line 640
    .local v8, lastSimCommand:Ljava/lang/Boolean;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_4

    .line 642
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 643
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 708
    :goto_1
    if-eqz v6, :cond_3

    .line 709
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 710
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    .line 722
    .end local v6           #forceRadio:Ljava/lang/Boolean;
    .end local v8           #lastSimCommand:Ljava/lang/Boolean;
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v9

    .line 723
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    .line 727
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 728
    .local v12, strBuf:Ljava/lang/StringBuffer;
    const-string v13, "SeqRdo-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    const-string v13, "Issue command "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 731
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 732
    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 733
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 734
    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 735
    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 736
    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 738
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 739
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 740
    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 741
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 742
    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 743
    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    const-string v13, "] dny"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 746
    const-string v13, "PHONE"

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    if-eqz v13, :cond_10

    .line 749
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 750
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    .line 751
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 753
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 647
    .end local v12           #strBuf:Ljava/lang/StringBuffer;
    .restart local v6       #forceRadio:Ljava/lang/Boolean;
    .restart local v8       #lastSimCommand:Ljava/lang/Boolean;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    .line 648
    .local v7, lastRadioCommand:Ljava/lang/Boolean;
    if-nez v8, :cond_5

    .line 649
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 652
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 655
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 656
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v13, v13

    const/4 v15, 0x1

    if-le v13, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x1

    aget-object v13, v13, v15

    if-eqz v13, :cond_6

    .line 657
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 658
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 662
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    array-length v13, v13

    const/4 v15, 0x1

    if-le v13, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x1

    aget-object v13, v13, v15

    if-eqz v13, :cond_7

    .line 663
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 664
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 666
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-nez v13, :cond_8

    .line 667
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 669
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 670
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 673
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    if-nez v13, :cond_a

    .line 674
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 676
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    .line 678
    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v11, v13, :cond_b

    .line 679
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 682
    :cond_b
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 683
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 688
    :cond_c
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 703
    :cond_d
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 714
    .end local v6           #forceRadio:Ljava/lang/Boolean;
    .end local v7           #lastRadioCommand:Ljava/lang/Boolean;
    .end local v8           #lastSimCommand:Ljava/lang/Boolean;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-eqz v13, :cond_f

    .line 715
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 718
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 755
    .restart local v12       #strBuf:Ljava/lang/StringBuffer;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    if-eqz v13, :cond_0

    .line 756
    const/4 v5, 0x1

    .line 757
    .local v5, cellularPowerFail:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    .line 758
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 759
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCellularPower:Ljava/lang/reflect/Method;

    if-eqz v13, :cond_11

    .line 761
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCellularPower:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 763
    const/4 v5, 0x0

    .line 766
    :cond_11
    :goto_3
    if-eqz v5, :cond_12

    .line 770
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V

    .line 776
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 774
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V

    goto :goto_4

    .line 764
    :catch_0
    move-exception v13

    goto :goto_3
.end method

.method private radioCommandComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 804
    const/4 v0, 0x0

    .line 806
    .local v0, tryToSubmitCommand:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_removeFirstPartialControl([Ljava/lang/Boolean;)V

    .line 816
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 818
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 819
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    array-length v1, v1

    if-le v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_3

    .line 821
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_removeFirstPartialControl([Ljava/lang/Boolean;)V

    .line 831
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_5

    .line 833
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeqRdo-Ends all commands - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dny"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearQueueAndSendBackNotifyAll()V

    .line 840
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    iput-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 843
    iput-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    .line 844
    if-eqz v0, :cond_4

    .line 845
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeqRdo-Check next "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dny"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->processQueueCommands(Z)V

    .line 849
    :cond_4
    return-void

    .line 838
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V
    .locals 12
    .parameter "radioPartOn"
    .parameter "simPartOn"
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 308
    new-instance v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    invoke-direct {v0, p0, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;-><init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;Lcom/android/internal/telephony/HtcSequentialRadioPower$1;)V

    .line 310
    .local v0, cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    iput-boolean p1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->radioOn:Z

    .line 311
    iput-object p2, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->simOn:Ljava/lang/Boolean;

    .line 312
    iput-object p3, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    .line 314
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->pid:I

    .line 315
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->uid:I

    .line 316
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->tid:I

    .line 317
    sget-boolean v6, Lcom/android/internal/telephony/HtcSequentialRadioPower;->DEBUG_DETAIL:Z

    if-eqz v6, :cond_0

    .line 318
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->callStack:[Ljava/lang/StackTraceElement;

    .line 321
    :cond_0
    const/4 v2, 0x0

    .line 322
    .local v2, cmd_RadioPart:Ljava/lang/Boolean;
    const/4 v3, 0x0

    .line 324
    .local v3, cmd_SimPart:Ljava/lang/Boolean;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 325
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 326
    move-object v3, p2

    .line 328
    :cond_1
    if-nez v3, :cond_2

    .line 329
    move-object v3, v2

    .line 333
    :cond_2
    const/4 v4, 0x0

    .line 334
    .local v4, commandUpdate:Z
    iget-object v8, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v8

    .line 335
    :try_start_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Z

    if-nez v6, :cond_11

    .line 336
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    if-nez v6, :cond_3

    .line 340
    const/4 v4, 0x1

    .line 343
    :cond_3
    const/4 v1, 0x0

    .line 344
    .local v1, cmdSimInQueue:I
    if-eqz v3, :cond_6

    .line 346
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v6, v6

    add-int/lit8 v1, v6, -0x1

    .line 348
    :goto_0
    if-ltz v1, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aget-object v6, v6, v1

    if-nez v6, :cond_4

    .line 349
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 351
    :cond_4
    if-gez v1, :cond_9

    .line 352
    add-int/lit8 v1, v1, 0x1

    .line 353
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aput-object v3, v6, v1

    .line 378
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 382
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    if-nez v6, :cond_e

    .line 383
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 387
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    .line 407
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v9, 0x0

    aput-object v2, v6, v9

    .line 409
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logQueueCommands()V

    .line 411
    if-eqz v4, :cond_8

    .line 412
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 418
    .end local v1           #cmdSimInQueue:I
    :cond_8
    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    const/4 v8, 0x3

    if-eqz v4, :cond_12

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {p0, v8, v6, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendMessage(Landroid/os/Message;)Z

    .line 421
    return-void

    .line 355
    .restart local v1       #cmdSimInQueue:I
    :cond_9
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aget-object v6, v6, v1

    invoke-virtual {v6, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 356
    if-lez v1, :cond_a

    .line 357
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v9, 0x0

    aput-object v9, v6, v1

    .line 358
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 361
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aget-object v6, v6, v1

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 372
    :cond_b
    :goto_5
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aput-object v3, v6, v1

    goto :goto_1

    .line 418
    .end local v1           #cmdSimInQueue:I
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 365
    .restart local v1       #cmdSimInQueue:I
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 366
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v6, v6

    if-lt v1, v6, :cond_b

    .line 367
    add-int/lit8 v6, v1, 0x1

    new-array v5, v6, [Ljava/lang/Boolean;

    .line 368
    .local v5, tmp:[Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v11, v11

    invoke-static {v6, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    iput-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    goto :goto_5

    .line 390
    .end local v5           #tmp:[Ljava/lang/Boolean;
    :cond_d
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    goto :goto_2

    .line 395
    :cond_e
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 397
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 398
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    goto :goto_2

    .line 400
    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    .line 401
    :cond_10
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 416
    .end local v1           #cmdSimInQueue:I
    :cond_11
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_12
    move v6, v7

    .line 420
    goto :goto_4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v9, 0x7

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 452
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 453
    .local v0, ar:Landroid/os/AsyncResult;
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 455
    :pswitch_0
    const/4 v1, 0x0

    .line 457
    .local v1, cls:Ljava/lang/Class;
    :try_start_0
    const-string v6, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 461
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v7

    .line 462
    const/4 v5, 0x0

    .line 463
    .local v5, setupSeqRadioCtl:Z
    if-eqz v1, :cond_2

    .line 464
    :try_start_1
    sget-object v6, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    .line 465
    const/4 v5, 0x1

    .line 467
    :try_start_2
    const-string v6, "htcSequentialRadioControl"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 473
    :cond_1
    :goto_2
    :try_start_3
    const-string v6, "setCelluarPower"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/Message;

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCelluarPower:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 478
    :goto_3
    :try_start_4
    const-string v6, "setCellularPower"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/Message;

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCellularPower:Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 483
    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    :try_start_5
    sget-object v6, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_3

    .line 484
    const-string v6, "PHONE"

    const-string v8, "SeqRdo-Late setup HTC power control"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 486
    :try_start_6
    sget-object v6, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p0, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 491
    :cond_3
    :goto_5
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 493
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 494
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v6, "com.android.internal.telephony.seq-radio"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    const-string v6, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v6, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    new-instance v6, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;-><init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;)V

    iput-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBcaseReceiver:Landroid/content/BroadcastReceiver;

    .line 546
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBcaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4, v12, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 458
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v5           #setupSeqRadioCtl:Z
    :catch_0
    move-exception v2

    .line 459
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeqRdo-CommandsInterface event ex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 468
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #setupSeqRadioCtl:Z
    :catch_1
    move-exception v2

    .line 469
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-htcSequentialRadioControl event ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 491
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v6

    .line 474
    :catch_2
    move-exception v2

    .line 475
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-setCellularPower ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 479
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 480
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-setCellularPower ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 487
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 488
    .local v3, ex:Ljava/lang/Exception;
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-Unable to setup HTC power control : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    .line 550
    .end local v1           #cls:Ljava/lang/Class;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #setupSeqRadioCtl:Z
    :pswitch_1
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    .line 551
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBcaseReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_0

    .line 552
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBcaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 553
    iput-object v12, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBcaseReceiver:Landroid/content/BroadcastReceiver;

    goto/16 :goto_0

    .line 557
    :pswitch_2
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_4

    :goto_6
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->processQueueCommands(Z)V

    goto/16 :goto_0

    :cond_4
    move v6, v7

    goto :goto_6

    .line 560
    :pswitch_3
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_0

    .line 561
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    .line 562
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 563
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 567
    :pswitch_4
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_0

    .line 568
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_5

    .line 569
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeqRdo-Execute cellular failure - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V

    goto/16 :goto_0

    .line 573
    :cond_5
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    .line 574
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 575
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 580
    :pswitch_5
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_0

    .line 581
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 582
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeqRdo-Execute celluar failure - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->celluarPowerFailSuppliment(Ljava/lang/Boolean;I)V

    goto/16 :goto_0

    .line 586
    :cond_6
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    .line 587
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 588
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 593
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->radioCommandComplete()V

    goto/16 :goto_0

    .line 596
    :pswitch_7
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_0

    .line 597
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    .line 598
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 599
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    .line 600
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeqRdo-Command timeout event - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hideSimLockFromUpperLayer()Z
    .locals 3

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, hide:Z
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mDenySimLockReported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 432
    :cond_0
    monitor-exit v2

    .line 433
    return v0

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public radioCommandExecuting()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerForCommandUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 202
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 206
    monitor-exit v2

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public simCommandExecuting()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCommandUpdate(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
