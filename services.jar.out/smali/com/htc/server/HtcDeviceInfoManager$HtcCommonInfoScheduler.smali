.class Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"

# interfaces
.implements Lcom/htc/server/HtcDeviceInfoManager$IHtcInfoScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcCommonInfoScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;
    }
.end annotation


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected final mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

.field protected final mPowerManager:Landroid/os/PowerManager;

.field private final mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 473
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HtcCommonInfoScheduler"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    .line 475
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 476
    new-instance v2, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler$DeviceInfoManagerHandler;-><init>(Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    .line 478
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 479
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 480
    .local v1, service:Landroid/os/IPowerManager;
    new-instance v2, Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v1, v3}, Landroid/os/PowerManager;-><init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    .line 482
    invoke-virtual {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .line 484
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 485
    return-void
.end method


# virtual methods
.method public addANR(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    return-void
.end method

.method public addCrash(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    return-void
.end method

.method public addSysCrash()V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 576
    return-void
.end method

.method public appDied(I)V
    .locals 4
    .parameter "pid"

    .prologue
    .line 513
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 514
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "pid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 516
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 517
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    return-void
.end method

.method protected createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;
    .locals 3
    .parameter "context"

    .prologue
    .line 489
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/server/HtcInfoOperator;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/server/HtcReleaseInfoOperator;

    invoke-direct {v2}, Lcom/htc/server/HtcReleaseInfoOperator;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 547
    return-void
.end method

.method public killAllProcess()V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    return-void
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    return-void
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v11, 0x3

    const/4 v12, 0x1

    .line 587
    const/4 v2, 0x0

    .line 588
    .local v2, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 759
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->onHandleMessage(Landroid/os/Message;)V

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 591
    :pswitch_1
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "HtcDeviceInfoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FLUSH, Sense: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$600()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_1
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const-string v9, "HtcUBFlushWakeLock"

    invoke-virtual {v8, v12, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 594
    .local v7, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 596
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 597
    .local v5, op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->flush()V

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 598
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_2
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 603
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v7           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_2
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const-string v9, "HtcUBFlushWakeLock"

    invoke-virtual {v8, v12, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 605
    .restart local v7       #wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 606
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v5, v0, v1

    .line 607
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->flushUsageTime()V

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 608
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_3
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 613
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v7           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_3
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    const-string v9, "HtcUBFlushWakeLock"

    invoke-virtual {v8, v12, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 615
    .restart local v7       #wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 616
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_3
    if-ge v1, v4, :cond_4

    aget-object v5, v0, v1

    .line 617
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->flushClientStatistic()V

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 618
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_4
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 623
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v7           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 624
    .local v6, processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_4
    if-ge v1, v4, :cond_5

    aget-object v5, v0, v1

    .line 625
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v6}, Lcom/htc/server/HtcInfoOperator;->update(Ljava/lang/String;)V

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 626
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_5
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 627
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$700()J

    move-result-wide v9

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 632
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 633
    .restart local v6       #processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_5
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 634
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v6}, Lcom/htc/server/HtcInfoOperator;->setTop(Ljava/lang/String;)V

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 639
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 640
    .restart local v6       #processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_6
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 641
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v6}, Lcom/htc/server/HtcInfoOperator;->addCrash(Ljava/lang/String;)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 646
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 647
    .restart local v6       #processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_7
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 648
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v6}, Lcom/htc/server/HtcInfoOperator;->addANR(Ljava/lang/String;)V

    .line 647
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 653
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_8
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_8
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 654
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->addSystemCrash()V

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 659
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_9
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_9
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 660
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->addKernelCrash()V

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 665
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_a
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_a
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 666
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->addRadioCrash()V

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 671
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 672
    .restart local v6       #processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_b
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 673
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v8, v9, v6}, Lcom/htc/server/HtcInfoOperator;->startProc(IILjava/lang/String;)V

    .line 672
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 678
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 679
    .restart local v6       #processName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_c
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 680
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v6}, Lcom/htc/server/HtcInfoOperator;->killProc(Ljava/lang/String;)V

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 685
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    .end local v6           #processName:Ljava/lang/String;
    :pswitch_d
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_d
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 686
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->killAllProc()V

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 691
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_e
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_e
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 692
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->reset()V

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 697
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_f
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 698
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "STOP "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_6
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 700
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 702
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    monitor-enter p0

    .line 708
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 709
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 714
    :pswitch_10
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_f
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 715
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->screenOn()V

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 720
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_11
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_10
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 721
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->screenOff()V

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 726
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_12
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_11
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 727
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/server/HtcInfoOperator;->userActivity(Landroid/os/Bundle;)V

    .line 726
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 732
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_13
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_12
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 733
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/server/HtcInfoOperator;->appDied(Landroid/os/Bundle;)V

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 738
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_14
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_13
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 739
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->startPhoneCall()V

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 744
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_15
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_14
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 745
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->stopPhoneCall()V

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 750
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :pswitch_16
    const/4 v3, 0x0

    .line 751
    .local v3, intent:Landroid/content/Intent;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/content/Intent;

    if-eqz v8, :cond_7

    .line 752
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #intent:Landroid/content/Intent;
    check-cast v3, Landroid/content/Intent;

    .line 753
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_7
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_15
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 754
    .restart local v5       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5, v3}, Lcom/htc/server/HtcInfoOperator;->addSentErrorCount(Landroid/content/Intent;)V

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->access$300()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 539
    return-void
.end method

.method public setNewTopApp(Ljava/lang/String;)V
    .locals 3
    .parameter "topProcessName"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 551
    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 494
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$600()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerClientStatsReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 496
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerPhoneReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 497
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerMediaReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 498
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerSystemErrorReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 499
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-static {p1, v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerContentReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 500
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerErrorInfoReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 502
    :cond_0
    return-void
.end method

.method public startProcess(Ljava/lang/String;II)V
    .locals 3
    .parameter "processName"
    .parameter "pid"
    .parameter "group"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 555
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 525
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 526
    monitor-enter p0

    .line 528
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 533
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synchronizedFlush()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .parameter "processName"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 543
    return-void
.end method

.method public userActivity(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 505
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 506
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "time"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 508
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 509
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    return-void
.end method
