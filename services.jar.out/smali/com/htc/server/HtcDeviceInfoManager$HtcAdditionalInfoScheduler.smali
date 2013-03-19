.class Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;
.super Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcAdditionalInfoScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;
    }
.end annotation


# instance fields
.field private mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;-><init>(Landroid/content/Context;)V

    .line 782
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    if-eqz v0, :cond_0

    .line 783
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;-><init>([Lcom/htc/server/HtcInfoOperator;)V

    iput-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    .line 786
    :goto_0
    return-void

    .line 785
    :cond_0
    const-string v0, "HtcDeviceInfoManager"

    const-string v1, "[HtcAdditionalInfoScheduler] no info operator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createInfoOperators(Landroid/content/Context;)[Lcom/htc/server/HtcInfoOperator;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 789
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$600()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 791
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/server/HtcInfoOperator;

    new-instance v1, Lcom/htc/server/HtcDebugInfoOperator;

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v1, v2, p1}, Lcom/htc/server/HtcDebugInfoOperator;-><init>(Landroid/os/PowerManager;Landroid/content/Context;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/htc/server/HtcReleaseInfoOperator;

    invoke-direct {v1}, Lcom/htc/server/HtcReleaseInfoOperator;-><init>()V

    aput-object v1, v0, v5

    .line 794
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Lcom/htc/server/HtcInfoOperator;

    new-instance v1, Lcom/htc/server/HtcDebugInfoOperator;

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v1, v2, p1}, Lcom/htc/server/HtcDebugInfoOperator;-><init>(Landroid/os/PowerManager;Landroid/content/Context;)V

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 799
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 838
    invoke-super {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->onHandleMessage(Landroid/os/Message;)V

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 802
    :sswitch_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "HtcDeviceInfoManager"

    const-string v5, "SENTINEL "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_1
    monitor-enter p0

    .line 804
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 805
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 810
    :sswitch_1
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "HtcDeviceInfoManager"

    const-string v5, "LOGINSTALLEDAPP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_2
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 812
    .local v3, op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v3}, Lcom/htc/server/HtcInfoOperator;->logInstalledApp()V

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 817
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #op:Lcom/htc/server/HtcInfoOperator;
    :sswitch_2
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "HtcDeviceInfoManager"

    const-string v5, "LOGSWINFOTIME"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 819
    .restart local v3       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v3}, Lcom/htc/server/HtcInfoOperator;->logSWInfoTime()V

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 824
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #op:Lcom/htc/server/HtcInfoOperator;
    :sswitch_3
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "HtcDeviceInfoManager"

    const-string v5, "LOGHWINFOTIME"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_4
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .restart local v0       #arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_3
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 826
    .restart local v3       #op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v3}, Lcom/htc/server/HtcInfoOperator;->logHWInfoTime()V

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 831
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #op:Lcom/htc/server/HtcInfoOperator;
    :sswitch_4
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "HtcDeviceInfoManager"

    const-string v5, "LOGLOCATIONINFO"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_5
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    if-eqz v4, :cond_0

    .line 833
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;->mLocationLogger:Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;

    invoke-virtual {v4}, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->log()V

    goto :goto_0

    .line 799
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
    .end sparse-switch
.end method

.method public setup(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 845
    invoke-super {p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->setup(Landroid/content/Context;)V

    .line 846
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerDebugInfoReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 847
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->registerExtraUsageReceiver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 848
    return-void
.end method

.method public synchronizedFlush()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 851
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 852
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcCommonInfoScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 856
    monitor-enter p0

    .line 858
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 863
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "synchronized flush exception "

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

    .line 862
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
