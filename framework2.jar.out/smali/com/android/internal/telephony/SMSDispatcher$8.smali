.class Lcom/android/internal/telephony/SMSDispatcher$8;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2887
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 2890
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OoO Intent Received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2895
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2896
    const-string v5, "SMS"

    const-string v6, "Receive intent ACTION_BOOT_COMPLETED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 2899
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 2900
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/internal/telephony/SMSDispatcher$8$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/SMSDispatcher$8$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher$8;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 2916
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    .line 2950
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-void

    .line 2920
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.ACTION_UPDATE_RADIO_TECH_VERIZON"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2922
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    goto :goto_0

    .line 2927
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2929
    const-string v5, "phoneinECMState"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2930
    .local v1, isECM:Z
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_EMERGENCY_CALLBACK_MODE_CHANGED> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v7, 0x16

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2935
    .end local v1           #isECM:Z
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->resetLastSmsFingerprintForCmas(Landroid/content/Intent;)Z
    invoke-static {v6, p2}, Lcom/android/internal/telephony/SMSDispatcher;->access$400(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Intent;)Z

    move-result v6

    if-eq v6, v5, :cond_1

    .line 2942
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$8;->getResultCode()I

    move-result v2

    .line 2943
    .local v2, rc:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_5

    if-ne v2, v5, :cond_6

    :cond_5
    move v3, v5

    .line 2948
    .local v3, success:Z
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v2, v6}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0
.end method
