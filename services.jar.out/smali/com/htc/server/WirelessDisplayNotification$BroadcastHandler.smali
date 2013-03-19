.class final Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayNotification;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayNotification;Lcom/htc/server/WirelessDisplayNotification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;-><init>(Lcom/htc/server/WirelessDisplayNotification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v9, 0x0

    const v8, 0x4020031

    const/4 v7, 0x0

    .line 409
    if-nez p2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 414
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #calls: Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z
    invoke-static {v5, p1}, Lcom/htc/server/WirelessDisplayNotification;->access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z

    move-result v5

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v4, v5}, Lcom/htc/server/WirelessDisplayNotification;->access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z

    .line 415
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2

    const-string v4, "WirelessDisplayNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preference="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 418
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 420
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 421
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I
    invoke-static {v4, v7}, Lcom/htc/server/WirelessDisplayNotification;->access$302(Lcom/htc/server/WirelessDisplayNotification;I)I

    .line 422
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J
    invoke-static {v4, v9, v10}, Lcom/htc/server/WirelessDisplayNotification;->access$402(Lcom/htc/server/WirelessDisplayNotification;J)J

    goto :goto_0

    .line 427
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_3
    const-string v4, "com.htc.wifidisplay.NOTIFICATION_STATUS_UPDATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 428
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #calls: Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z
    invoke-static {v5, p1}, Lcom/htc/server/WirelessDisplayNotification;->access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z

    move-result v5

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v4, v5}, Lcom/htc/server/WirelessDisplayNotification;->access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z

    .line 429
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_4

    const-string v4, "WirelessDisplayNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preference="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v6}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_4
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 432
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 434
    .restart local v2       #nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 435
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I
    invoke-static {v4, v7}, Lcom/htc/server/WirelessDisplayNotification;->access$302(Lcom/htc/server/WirelessDisplayNotification;I)I

    .line 436
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J
    invoke-static {v4, v9, v10}, Lcom/htc/server/WirelessDisplayNotification;->access$402(Lcom/htc/server/WirelessDisplayNotification;J)J

    goto/16 :goto_0

    .line 441
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_5
    const-string v4, "com.htc.wifidisplay.NOTIFICATION_BTN_CLICK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    const-string v4, "statusbar"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 443
    .local v3, statusbar:Landroid/app/StatusBarManager;
    if-eqz v3, :cond_6

    .line 444
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 447
    :cond_6
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mHandler:Lcom/htc/server/WirelessDisplayNotification$H;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayNotification;->access$500(Lcom/htc/server/WirelessDisplayNotification;)Lcom/htc/server/WirelessDisplayNotification$H;

    move-result-object v4

    const/16 v5, 0x1f5

    invoke-virtual {v4, v5}, Lcom/htc/server/WirelessDisplayNotification$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 448
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mHandler:Lcom/htc/server/WirelessDisplayNotification$H;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayNotification;->access$500(Lcom/htc/server/WirelessDisplayNotification;)Lcom/htc/server/WirelessDisplayNotification$H;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/server/WirelessDisplayNotification$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
