.class final Lcom/htc/server/WirelessDisplayService$H;
.super Landroid/os/Handler;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 641
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 71
    .parameter "msg"

    .prologue
    .line 645
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v62, v0

    .line 646
    .local v62, type:I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 647
    .local v9, arg1:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 648
    .local v10, arg2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v47

    .line 650
    .local v47, previousState:I
    sparse-switch v62, :sswitch_data_0

    .line 1553
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 652
    :sswitch_0
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_CHANGE_STATE state="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " err="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/16 v66, 0x8

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_1

    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v9, v0, :cond_1

    .line 655
    const-string v66, "WirelessDisplayService"

    const-string v67, "[WFDERR][2] Wait 90000 secs and dongle not found."

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    :cond_1
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v9, v0, :cond_2

    .line 660
    const/16 v66, 0x33

    const/16 v67, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2, v10}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .line 661
    .local v31, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 666
    .end local v31           #msg2:Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v9, v10}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto :goto_0

    .line 669
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v66

    if-lez v66, :cond_4

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$310(Lcom/htc/server/WirelessDisplayService;)I

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v66

    if-nez v66, :cond_3

    .line 672
    const-string v66, "WirelessDisplayService"

    const-string v67, "wifi scan fail!"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_3
    const/16 v66, 0x11

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .line 674
    .local v40, msgWifiScan:Landroid/os/Message;
    const-wide/16 v66, 0x1770

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 676
    .end local v40           #msgWifiScan:Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$302(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    .line 680
    :sswitch_2
    new-instance v46, Landroid/content/Intent;

    const-string v66, "com.android.internal.app.intent.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v46

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v46, notifyUserSwitch:Landroid/content/Intent;
    const-string v66, "visible"

    const/16 v67, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 683
    const-string v66, "WirelessDisplayService"

    const-string v67, "Disable INTENT_WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 686
    .end local v46           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v65

    .line 687
    .local v65, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v65, :cond_0

    .line 690
    invoke-virtual/range {v65 .. v65}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v22

    .line 691
    .local v22, ipAddress:I
    move/from16 v58, v22

    .line 692
    .local v58, temp:I
    const-string v66, "%d.%d.%d.%d"

    const/16 v67, 0x4

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v67, v68

    const/16 v68, 0x1

    shr-int/lit8 v69, v22, 0x8

    move/from16 v0, v69

    and-int/lit16 v0, v0, 0xff

    move/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v67, v68

    const/16 v68, 0x2

    shr-int/lit8 v69, v22, 0x10

    move/from16 v0, v69

    and-int/lit16 v0, v0, 0xff

    move/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v67, v68

    const/16 v68, 0x3

    shr-int/lit8 v69, v22, 0x18

    move/from16 v0, v69

    and-int/lit16 v0, v0, 0xff

    move/from16 v69, v0

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v67, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 697
    .local v23, ipStr:Ljava/lang/String;
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_GET_DEVICE_IP:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, "  "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Ljava/util/regex/Pattern;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 699
    .local v27, matcher2:Ljava/util/regex/Matcher;
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v66

    if-eqz v66, :cond_7

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v66

    const-string v67, "0.0.0.0"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v66

    if-nez v66, :cond_7

    .line 700
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Got the IP address"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-nez v66, :cond_6

    .line 702
    new-instance v66, Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    const-string v69, "3655"

    invoke-direct/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 703
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v66

    const/16 v67, -0x1

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_5

    .line 704
    const-string v66, "WirelessDisplayService"

    const-string v67, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/16 v66, 0x0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 721
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 708
    :cond_5
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_GET_DEVICE_IP: REQ_SET_MCAST_ROUTE, clearOldRoute = false"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 711
    .local v12, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0x1f

    const/16 v68, 0x191

    const/16 v69, -0x1

    invoke-virtual/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v53

    .line 712
    .local v53, setif:Landroid/os/Message;
    const-string v66, "interfaceRoute"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, v66

    move-object/from16 v1, v67

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    move-object/from16 v0, v53

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 714
    invoke-virtual/range {v53 .. v53}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 718
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v53           #setif:Landroid/os/Message;
    :cond_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    const/16 v68, 0x0

    invoke-virtual/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    .line 719
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto :goto_1

    .line 722
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    if-eqz v66, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_0

    .line 723
    const/16 v66, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 724
    .local v20, getIp:Landroid/os/Message;
    const-wide/16 v66, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 730
    .end local v20           #getIp:Landroid/os/Message;
    .end local v22           #ipAddress:I
    .end local v23           #ipStr:Ljava/lang/String;
    .end local v27           #matcher2:Ljava/util/regex/Matcher;
    .end local v58           #temp:I
    .end local v65           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :sswitch_4
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_STOP_DIS"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/16 v66, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 734
    .local v5, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_a

    .line 735
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v66

    const/16 v67, 0x1

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_8

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->setInterface(Ljava/lang/String;)V

    .line 737
    const-string v66, "WirelessDisplayService"

    const-string v67, "Wifi Connected, don\'t exit netHDencode"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :goto_2
    const/16 v66, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 751
    const/16 v66, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 752
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 753
    const/16 v66, 0x1

    const/16 v67, 0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v34

    .line 754
    .local v34, msgChangeState:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->clearDongleCache()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v66

    invoke-interface/range {v66 .. v66}, Ljava/util/List;->clear()V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x49

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 739
    .end local v34           #msgChangeState:Landroid/os/Message;
    :cond_8
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_9

    .line 740
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 742
    :cond_9
    const/16 v66, 0x0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .line 745
    :cond_a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_b

    .line 746
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 748
    :cond_b
    const/16 v66, 0x0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .line 769
    .end local v5           #activeNetwork:Landroid/net/NetworkInfo;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->saveLimitedApInfo()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 771
    new-instance v46, Landroid/content/Intent;

    const-string v66, "com.android.internal.app.intent.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v46

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .restart local v46       #notifyUserSwitch:Landroid/content/Intent;
    const-string v66, "visible"

    const/16 v67, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 774
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0xde

    const/16 v68, 0x0

    const/16 v69, 0x0

    invoke-virtual/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v16

    .line 775
    .local v16, disableSwitchMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0xde

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 776
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const-wide/16 v67, 0x1388

    move-object/from16 v0, v66

    move-object/from16 v1, v16

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 778
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0x6f

    const/16 v68, 0x1

    const/16 v69, 0x0

    invoke-virtual/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v28

    .line 779
    .local v28, mirrorMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0x6f

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 780
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const-wide/16 v67, 0x13ba

    move-object/from16 v0, v66

    move-object/from16 v1, v28

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 786
    .end local v16           #disableSwitchMsg:Landroid/os/Message;
    .end local v28           #mirrorMsg:Landroid/os/Message;
    .end local v46           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v66

    if-eqz v66, :cond_c

    .line 787
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_TIMEOUT_STOP, But Music Keep Playing, Wait 2 min later"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v67, 0x4

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v38

    .line 789
    .local v38, msgTimeOut:Landroid/os/Message;
    const-wide/32 v66, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 791
    .end local v38           #msgTimeOut:Landroid/os/Message;
    :cond_c
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_TIMEOUT_STOP"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/16 v66, 0x1f

    const/16 v67, 0x21

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v60

    .line 793
    .local v60, timeOutStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 798
    .end local v60           #timeOutStop:Landroid/os/Message;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 801
    :sswitch_8
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_STOP_TRANSMIT: transmit:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_0

    .line 803
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v9, v0, :cond_d

    .line 804
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 806
    :cond_d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 810
    :sswitch_9
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_TURN_OFF_CONCURRENT_HOTSPOT, getWifidisplayApEnabled: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, "Mirror State: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/16 v66, 0x1

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v66

    if-eqz v66, :cond_0

    .line 812
    new-instance v66, Lcom/htc/server/WirelessDisplayService$H$1;

    move-object/from16 v0, v66

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$H$1;-><init>(Lcom/htc/server/WirelessDisplayService$H;)V

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$H$1;->start()V

    goto/16 :goto_0

    .line 827
    :sswitch_a
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_WIFI_DIS"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0

    .line 832
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v66

    if-nez v66, :cond_0

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v67

    new-instance v68, Landroid/content/Intent;

    const-string v69, "com.htc.wifidisplay.IWfdService"

    invoke-direct/range {v68 .. v69}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v67 .. v70}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2302(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 835
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Bind WHDMI WfdService = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 839
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v66

    if-eqz v66, :cond_e

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2302(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$2502(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 843
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Unbind WfdService = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_e
    const/16 v66, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 846
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 849
    :sswitch_d
    const-string v66, "WirelessDisplayService"

    const-string v67, "HANDLE_RESET_WDS_USABLE_FLAG"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/16 v66, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 854
    :sswitch_e
    move v13, v9

    .line 855
    .local v13, configState:I
    const/16 v66, 0x3

    move/from16 v0, v66

    if-eq v9, v0, :cond_f

    const/16 v66, 0x4

    move/from16 v0, v66

    if-ne v9, v0, :cond_12

    .line 856
    :cond_f
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "receiver WfdServices Call back, "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v29, Landroid/content/Intent;

    const-string v66, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v29

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    .local v29, mirrorResultIntent:Landroid/content/Intent;
    const/16 v66, 0x3

    move/from16 v0, v66

    if-ne v9, v0, :cond_11

    .line 859
    const-string v66, "RESULT"

    const-string v67, "SUCCESS"

    move-object/from16 v0, v29

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_finishService()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2700(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 860
    :cond_11
    const/16 v66, 0x4

    move/from16 v0, v66

    if-ne v9, v0, :cond_10

    .line 861
    const-string v66, "RESULT"

    const-string v67, "FAIL"

    move-object/from16 v0, v29

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto :goto_3

    .line 866
    .end local v29           #mirrorResultIntent:Landroid/content/Intent;
    :cond_12
    const/16 v66, 0x5

    move/from16 v0, v66

    if-ne v9, v0, :cond_0

    .line 867
    const/16 v66, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 877
    .end local v13           #configState:I
    :sswitch_f
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_WIFI_SCAN_RESULT_AVAILABLE, dongle scan = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v9, v0, :cond_13

    const/16 v66, 0x1

    :goto_4
    move-object/from16 v0, v67

    move/from16 v1, v66

    #calls: Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 878
    :cond_13
    const/16 v66, 0x0

    goto :goto_4

    .line 885
    :sswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v66

    const-string v67, "wivu_res"

    invoke-virtual/range {v66 .. v67}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 886
    .local v56, status:Ljava/lang/String;
    const/16 v66, 0x3e

    move/from16 v0, v66

    if-ne v9, v0, :cond_16

    .line 888
    const-string v66, "WirelessDisplayService"

    move-object/from16 v0, v66

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_15

    .line 890
    const-string v66, "VALUE=1"

    move-object/from16 v0, v56

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v66

    if-eqz v66, :cond_14

    .line 891
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_0

    const/16 v66, 0x1

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x2

    const/16 v68, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 895
    const/16 v66, 0x1

    const/16 v67, 0x1

    const/16 v68, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v59

    .line 896
    .local v59, timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const-wide/32 v67, 0x15f90

    move-object/from16 v0, v66

    move-object/from16 v1, v59

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 899
    .end local v59           #timeOut2:Landroid/os/Message;
    :cond_14
    const-string v66, "VALUE=0"

    move-object/from16 v0, v56

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v66

    if-eqz v66, :cond_0

    .line 900
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 903
    :cond_15
    const/16 v66, -0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_0

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    const/16 v68, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 906
    :cond_16
    const/16 v66, 0x3f

    move/from16 v0, v66

    if-ne v9, v0, :cond_19

    .line 908
    const-string v66, "WirelessDisplayService"

    move-object/from16 v0, v66

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_18

    .line 910
    const-string v66, "VALUE=1"

    move-object/from16 v0, v56

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v66

    if-eqz v66, :cond_17

    .line 911
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 913
    :cond_17
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 914
    :cond_18
    const/16 v66, -0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_0

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    const/16 v68, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 917
    :cond_19
    const/16 v66, 0x40

    move/from16 v0, v66

    if-ne v9, v0, :cond_1a

    .line 918
    const-string v66, "WirelessDisplayService"

    move-object/from16 v0, v66

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 919
    :cond_1a
    const/16 v66, 0x41

    move/from16 v0, v66

    if-eq v9, v0, :cond_0

    .line 921
    const/16 v66, 0x42

    move/from16 v0, v66

    if-ne v9, v0, :cond_0

    .line 922
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_0

    .line 923
    move-object/from16 v61, v56

    .line 924
    .local v61, tosend:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v61

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 930
    .end local v56           #status:Ljava/lang/String;
    .end local v61           #tosend:Ljava/lang/String;
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v66

    const-string v67, "wivu_req"

    invoke-virtual/range {v66 .. v67}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 931
    .local v50, request:Ljava/lang/String;
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "WIVU_REQ:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", arg1 = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " , arg2 = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    if-eqz v50, :cond_22

    const/16 v66, 0x16

    move/from16 v0, v66

    if-ne v9, v0, :cond_22

    .line 934
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x16

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 935
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 936
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3400()Ljava/util/regex/Pattern;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 937
    .local v26, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v66

    if-eqz v66, :cond_1b

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3502(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 939
    :cond_1b
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/regex/Pattern;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 940
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v66

    if-eqz v66, :cond_1c

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3702(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 942
    :cond_1c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3800()Ljava/util/regex/Pattern;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 943
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v66

    if-eqz v66, :cond_1d

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 945
    :cond_1d
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "IP = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", audioPort = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", videoPort = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    #calls: Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_21

    const/16 v66, 0x2

    move/from16 v0, v47

    move/from16 v1, v66

    if-eq v0, v1, :cond_1e

    const/16 v66, 0x7

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_21

    .line 950
    :cond_1e
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_20

    const/16 v66, 0x7

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_20

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v67

    monitor-enter v67

    .line 952
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v66

    if-eqz v66, :cond_1f

    .line 953
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const/16 v68, 0x29

    const/16 v69, 0x2a

    const/16 v70, 0x2c

    move-object/from16 v0, v66

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v32

    .line 954
    .local v32, msg3:Landroid/os/Message;
    const/16 v66, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 956
    const-wide/16 v68, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 960
    .end local v32           #msg3:Landroid/os/Message;
    :goto_5
    monitor-exit v67

    goto/16 :goto_0

    :catchall_0
    move-exception v66

    monitor-exit v67
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v66

    .line 958
    :cond_1f
    :try_start_1
    const-string v66, "WirelessDisplayService"

    const-string v68, "Application wants to PAUSE so ignore WIVUSTART"

    move-object/from16 v0, v66

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 961
    :cond_20
    const/16 v66, 0x2

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    .line 962
    const/16 v66, 0x33

    const/16 v67, 0x34

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v30

    .line 964
    .local v30, msg1:Landroid/os/Message;
    const-wide/16 v66, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 969
    .end local v30           #msg1:Landroid/os/Message;
    :cond_21
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_0

    .line 970
    const-string v66, "WirelessDisplayService"

    const-string v67, "Dongle wrong state: take it out"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 972
    const/16 v66, 0x1f

    const/16 v67, 0x21

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v25

    .line 973
    .local v25, makeSure:Landroid/os/Message;
    const-wide/16 v66, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 976
    .end local v25           #makeSure:Landroid/os/Message;
    .end local v26           #matcher:Ljava/util/regex/Matcher;
    :cond_22
    const/16 v66, 0x17

    move/from16 v0, v66

    if-ne v9, v0, :cond_26

    .line 978
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x17

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 979
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 980
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_23

    .line 981
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_23

    const/16 v66, 0x7

    move/from16 v0, v47

    move/from16 v1, v66

    if-eq v0, v1, :cond_23

    .line 983
    const-string v66, "WirelessDisplayService"

    const-string v67, "Stop Initialized by Dongle, stop transmitting packets after timeout of 16sec"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/16 v66, 0x6

    const/16 v67, -0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v57

    .line 985
    .local v57, stopTrans:Landroid/os/Message;
    const-wide/16 v66, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 988
    .end local v57           #stopTrans:Landroid/os/Message;
    :cond_23
    const/16 v66, 0x1

    move/from16 v0, v47

    move/from16 v1, v66

    if-eq v0, v1, :cond_24

    .line 989
    const/16 v66, 0x7

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_25

    .line 998
    const-string v66, "WirelessDisplayService"

    const-string v67, "Receive WIVUSTOP in APP_PAUSE State"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_24
    :goto_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4300()Ljava/lang/Boolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v66

    if-eqz v66, :cond_0

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    if-eqz v66, :cond_0

    .line 1010
    const-string v66, "WirelessDisplayService"

    const-string v67, "Switching the dongle"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1013
    const/16 v66, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v66

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4302(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1000
    :cond_25
    const/16 v66, 0x1

    const/16 v67, 0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    .line 1001
    .local v35, msgChangeState1:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    .line 1016
    .end local v35           #msgChangeState1:Landroid/os/Message;
    :cond_26
    const/16 v66, 0x18

    move/from16 v0, v66

    if-ne v9, v0, :cond_27

    .line 1017
    const-string v66, "="

    move-object/from16 v0, v50

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1018
    .local v24, macs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v24

    #calls: Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    if-eqz v66, :cond_0

    const/16 v66, 0x8

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-interface/range {v66 .. v67}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_0

    .line 1021
    const-string v66, "WirelessDisplayService"

    const-string v67, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1027
    .end local v24           #macs:[Ljava/lang/String;
    :cond_27
    const/16 v66, 0x19

    move/from16 v0, v66

    if-ne v9, v0, :cond_28

    .line 1028
    const-string v66, "WirelessDisplayService"

    const-string v67, "SWUPGRADE and send notification"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 1105
    :cond_28
    const/16 v66, 0x1a

    move/from16 v0, v66

    if-ne v9, v0, :cond_0

    .line 1106
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "RATE_FEEDBACK, rate: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    if-eqz v10, :cond_29

    const/16 v66, 0x2

    move/from16 v0, v66

    if-ge v10, v0, :cond_29

    .line 1108
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Current Interface"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", Mirror State:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v66

    const/16 v67, 0x3

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v15

    .line 1111
    .local v15, dfDongle:Lcom/htc/service/DongleInfo;
    if-eqz v15, :cond_0

    .line 1112
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "curDongle state:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    iget v0, v15, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget v0, v15, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v66, v0

    const/16 v67, 0x3

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_0

    .line 1114
    const/16 v66, 0x72

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1118
    .end local v15           #dfDongle:Lcom/htc/service/DongleInfo;
    :cond_29
    if-eqz v10, :cond_2a

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v66

    if-eqz v66, :cond_0

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v66

    move-object/from16 v0, v66

    invoke-virtual {v0, v10}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V

    goto/16 :goto_0

    .line 1123
    :cond_2a
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Should be not here, dongle feedbake rate is "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1129
    .end local v50           #request:Ljava/lang/String;
    :sswitch_12
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_0

    .line 1131
    const/16 v66, 0x20

    move/from16 v0, v66

    if-ne v9, v0, :cond_2b

    .line 1132
    const-string v66, "WirelessDisplayService"

    const-string v67, "REQ_DISCOVERY"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestDiscover()V

    goto/16 :goto_0

    .line 1134
    :cond_2b
    const/16 v66, 0x21

    move/from16 v0, v66

    if-ne v9, v0, :cond_2d

    .line 1136
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "REQ_PLUGGED:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/16 v49, -0x1

    .line 1138
    .local v49, req:I
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_2c

    .line 1139
    const/16 v66, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1140
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v49

    goto/16 :goto_0

    .line 1144
    :cond_2c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v49

    .line 1145
    const/16 v66, 0x1

    const/16 v67, 0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    .line 1146
    .local v36, msgChangeState2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1150
    .end local v36           #msgChangeState2:Landroid/os/Message;
    .end local v49           #req:I
    :cond_2d
    const/16 v66, 0x22

    move/from16 v0, v66

    if-ne v9, v0, :cond_2e

    .line 1152
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDiscoveryStatus()I

    goto/16 :goto_0

    .line 1154
    :cond_2e
    const/16 v66, 0x23

    move/from16 v0, v66

    if-ne v9, v0, :cond_2f

    .line 1156
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getPluggedStatus()I

    goto/16 :goto_0

    .line 1158
    :cond_2f
    const/16 v66, 0x24

    move/from16 v0, v66

    if-ne v9, v0, :cond_30

    .line 1160
    const-string v66, "WirelessDisplayService"

    const-string v67, "REQ_STOP_DIS"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 1162
    const/16 v66, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1163
    const/16 v66, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1164
    const/16 v66, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1165
    const/16 v66, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1167
    const/16 v66, 0x1

    const/16 v67, 0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v37

    .line 1168
    .local v37, msgChangeState3:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1172
    const/16 v66, 0x0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v66

    invoke-interface/range {v66 .. v66}, Ljava/util/List;->clear()V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x49

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 1179
    .end local v37           #msgChangeState3:Landroid/os/Message;
    :cond_30
    const/16 v66, 0x25

    move/from16 v0, v66

    if-ne v9, v0, :cond_31

    .line 1180
    const-string v66, "WirelessDisplayService"

    const-string v67, "REQ_PEER_SELECT"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/16 v66, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1182
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v66

    const-string v67, "dongle_bssid"

    invoke-virtual/range {v66 .. v67}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1183
    .local v11, bssid2:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    move-object/from16 v0, v66

    invoke-virtual {v0, v11}, Lcom/htc/server/WirelessDisplayService$WivuThread;->selectPeer(Ljava/lang/String;)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1185
    .end local v11           #bssid2:Ljava/lang/String;
    :cond_31
    const/16 v66, 0x27

    move/from16 v0, v66

    if-ne v9, v0, :cond_33

    .line 1186
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "REQ_SET_INTERFACE:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v66

    const-string v67, "interface"

    invoke-virtual/range {v66 .. v67}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1188
    .local v21, ifname:Ljava/lang/String;
    const/16 v49, -0x1

    .line 1189
    .restart local v49       #req:I
    if-eqz v21, :cond_0

    .line 1190
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_32

    .line 1191
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, v21

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v49

    .line 1195
    :goto_7
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1193
    :cond_32
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    move-object/from16 v0, v66

    move-object/from16 v1, v21

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v49

    goto :goto_7

    .line 1198
    .end local v21           #ifname:Ljava/lang/String;
    .end local v49           #req:I
    :cond_33
    const/16 v66, 0x28

    move/from16 v0, v66

    if-ne v9, v0, :cond_35

    .line 1199
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "REQ_JOIN_GROUP:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/16 v49, -0x1

    .line 1201
    .restart local v49       #req:I
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_34

    .line 1202
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    move-result v49

    goto/16 :goto_0

    .line 1204
    :cond_34
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    goto/16 :goto_0

    .line 1207
    .end local v49           #req:I
    :cond_35
    const/16 v66, 0x191

    move/from16 v0, v66

    if-ne v9, v0, :cond_0

    .line 1208
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v66

    const-string v67, "interfaceRoute"

    invoke-virtual/range {v66 .. v67}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1210
    .restart local v21       #ifname:Ljava/lang/String;
    const/16 v49, -0x1

    .line 1211
    .restart local v49       #req:I
    if-eqz v21, :cond_0

    .line 1212
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_36

    .line 1213
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, v21

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v49

    goto/16 :goto_0

    .line 1215
    :cond_36
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    move-object/from16 v0, v66

    move-object/from16 v1, v21

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 1222
    .end local v21           #ifname:Ljava/lang/String;
    .end local v49           #req:I
    :sswitch_13
    const/16 v66, 0x34

    move/from16 v0, v66

    if-ne v9, v0, :cond_39

    .line 1224
    const-string v66, "WirelessDisplayService"

    const-string v67, "MEDIA_START"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/16 v66, 0x3

    move/from16 v0, v47

    move/from16 v1, v66

    if-eq v0, v1, :cond_0

    .line 1230
    const/16 v54, -0x1

    .line 1231
    .local v54, star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v54

    .line 1232
    if-nez v54, :cond_37

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x3

    const/16 v68, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1234
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStart()Z

    goto/16 :goto_0

    .line 1237
    :cond_37
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_38

    .line 1238
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1239
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    const/16 v68, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1241
    .end local v54           #star:I
    :cond_39
    const/16 v66, 0x35

    move/from16 v0, v66

    if-ne v9, v0, :cond_3b

    .line 1243
    const-string v66, "WirelessDisplayService"

    const-string v67, "MEDIA_STOP"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/16 v66, 0x4

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_3a

    .line 1249
    :cond_3a
    const/16 v54, -0x1

    .line 1250
    .restart local v54       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)I

    move-result v54

    .line 1252
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStop()Z

    goto/16 :goto_0

    .line 1253
    .end local v54           #star:I
    :cond_3b
    const/16 v66, 0x36

    move/from16 v0, v66

    if-ne v9, v0, :cond_0

    .line 1254
    const-string v66, "WirelessDisplayService"

    const-string v67, "MEDIA_RESTART"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/16 v54, -0x1

    .line 1256
    .restart local v54       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v67

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v54

    .line 1260
    const/16 v66, -0x1

    move/from16 v0, v54

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    .line 1261
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_3c

    .line 1262
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1263
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x1

    const/16 v68, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v66 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1269
    .end local v54           #star:I
    :sswitch_14
    move/from16 v55, v47

    .line 1270
    .local v55, state:I
    const/16 v18, 0x0

    .line 1272
    .local v18, err:I
    const/16 v66, 0x1

    move/from16 v0, v47

    move/from16 v1, v66

    if-eq v0, v1, :cond_0

    .line 1274
    const/16 v66, 0x2b

    move/from16 v0, v66

    if-ne v9, v0, :cond_40

    .line 1275
    const-string v66, "WirelessDisplayService"

    const-string v67, "MEDIA_PAUSE event"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const/16 v66, 0x2c

    move/from16 v0, v66

    if-ne v10, v0, :cond_3e

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)I

    move-result v7

    .line 1278
    .local v7, app:I
    if-nez v7, :cond_3d

    .line 1279
    const/16 v55, 0x7

    .line 1289
    .end local v7           #app:I
    :cond_3d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v55

    move/from16 v2, v18

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1280
    :cond_3e
    const/16 v66, 0x2d

    move/from16 v0, v66

    if-ne v10, v0, :cond_3f

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;)V

    .line 1282
    const/16 v55, 0x4

    goto :goto_8

    .line 1283
    :cond_3f
    const/16 v66, 0x2e

    move/from16 v0, v66

    if-ne v10, v0, :cond_3d

    .line 1284
    const-string v66, "WirelessDisplayService"

    const-string v67, "MEDIA_PAUSE: CALL_PAUSE event"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)I

    move-result v7

    .line 1286
    .restart local v7       #app:I
    if-nez v7, :cond_3d

    .line 1287
    const/16 v55, 0x9

    goto :goto_8

    .line 1290
    .end local v7           #app:I
    :cond_40
    const/16 v66, 0x2a

    move/from16 v0, v66

    if-ne v9, v0, :cond_0

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v67

    monitor-enter v67

    .line 1292
    :try_start_2
    const-string v66, "WirelessDisplayService"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "MEDIA_RESUME event, App Resutest: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v66

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v66

    if-nez v66, :cond_41

    .line 1294
    monitor-exit v67

    goto/16 :goto_0

    .line 1332
    :catchall_1
    move-exception v66

    monitor-exit v67
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v66

    .line 1296
    :cond_41
    const/16 v66, 0x2c

    move/from16 v0, v66

    if-ne v10, v0, :cond_45

    .line 1297
    const/16 v66, 0x7

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_42

    .line 1298
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v66

    move-object/from16 v1, v68

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v8

    .line 1299
    .local v8, app2:I
    if-nez v8, :cond_43

    .line 1300
    const/16 v55, 0x3

    .line 1331
    .end local v8           #app2:I
    :cond_42
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v55

    move/from16 v2, v18

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1332
    monitor-exit v67

    goto/16 :goto_0

    .line 1302
    .restart local v8       #app2:I
    :cond_43
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_44

    .line 1303
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v68, 0x0

    move-object/from16 v0, v66

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1304
    :cond_44
    const/16 v55, 0x1

    .line 1305
    const/16 v18, -0x4

    goto :goto_9

    .line 1308
    .end local v8           #app2:I
    :cond_45
    const/16 v66, 0x2d

    move/from16 v0, v66

    if-ne v10, v0, :cond_46

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5000(Lcom/htc/server/WirelessDisplayService;)V

    .line 1316
    const/16 v55, 0x3

    goto :goto_9

    .line 1317
    :cond_46
    const/16 v66, 0x2e

    move/from16 v0, v66

    if-ne v10, v0, :cond_42

    .line 1318
    const-string v66, "WirelessDisplayService"

    const-string v68, "MEDIA_RESUME: CALL_PAUSE event"

    move-object/from16 v0, v66

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const/16 v66, 0x9

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_42

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v66

    move-object/from16 v1, v68

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v8

    .line 1321
    .restart local v8       #app2:I
    if-nez v8, :cond_47

    .line 1322
    const/16 v55, 0x3

    goto :goto_9

    .line 1324
    :cond_47
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    if-eqz v66, :cond_48

    .line 1325
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v66

    const/16 v68, 0x0

    move-object/from16 v0, v66

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1326
    :cond_48
    const/16 v55, 0x1

    .line 1327
    const/16 v18, -0x4

    goto/16 :goto_9

    .line 1350
    .end local v8           #app2:I
    .end local v18           #err:I
    .end local v55           #state:I
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;)Z

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    const-string v68, "/data/misc/wifidisplay.conf"

    #calls: Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v67 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1354
    :sswitch_16
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_PROCESS_WFDSERVICE, mWfdServiceRetryCount: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;)I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", arg:"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v66

    if-nez v66, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;)I

    move-result v66

    if-lez v66, :cond_49

    .line 1356
    const/16 v66, 0x70

    const/16 v67, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v9, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v39

    .line 1357
    .local v39, msgUseWfdService:Landroid/os/Message;
    const-wide/16 v66, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1358
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "WfdService not ready, resent, type = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$5410(Lcom/htc/server/WirelessDisplayService;)I

    goto/16 :goto_0

    .line 1360
    .end local v39           #msgUseWfdService:Landroid/os/Message;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v66

    if-eqz v66, :cond_4b

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x5

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5402(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1362
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_4a

    .line 1363
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1364
    const/16 v66, 0x13

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v51

    .line 1365
    .local v51, resetWFD_Flag:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    const-wide/32 v67, 0x249f0

    move-object/from16 v0, v66

    move-object/from16 v1, v51

    move-wide/from16 v2, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1366
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Use WfdService, type = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_0

    .line 1369
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x3

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;I)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v67

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0

    .line 1382
    .end local v51           #resetWFD_Flag:Landroid/os/Message;
    :cond_4a
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Can\'t use WfdService, WfdService is processing ignore message, type = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1385
    :cond_4b
    const-string v66, "WirelessDisplayService"

    const-string v67, "Can\'t use WfdService, WfdService bind false during 2 sec"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1389
    :sswitch_17
    move v4, v9

    .line 1390
    .local v4, absoluteDirection:I
    move/from16 v48, v10

    .line 1391
    .local v48, relativeDirection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v48

    #calls: Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I
    invoke-static {v0, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;II)I

    move-result v19

    .line 1392
    .local v19, fingerIndicator:I
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "HANDLE_FINGER_GESTURE_DIRECTION, fingerIndicator = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    const/16 v67, 0x1

    invoke-virtual/range {v66 .. v67}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v19

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5902(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1396
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v66

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v67

    const/16 v68, 0x6f

    const/16 v69, 0x1

    move-object/from16 v0, v67

    move/from16 v1, v68

    move/from16 v2, v19

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v67

    const-wide/16 v68, 0x3e8

    invoke-virtual/range {v66 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1399
    .end local v4           #absoluteDirection:I
    .end local v19           #fingerIndicator:I
    .end local v48           #relativeDirection:I
    :sswitch_18
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-nez v66, :cond_4c

    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_4c

    .line 1400
    const-string v66, "WirelessDisplayService"

    const-string v67, "ignore HANDLE_FINGER_GESTURE, due to already handle, it is error handling message"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1402
    :cond_4c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1403
    const/16 v66, 0x3

    move/from16 v0, v66

    if-ne v9, v0, :cond_4e

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_4d

    .line 1405
    const-string v66, "WirelessDisplayService"

    const-string v67, "Stop mirror mode from finger gesture indicator."

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    invoke-virtual/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    .line 1408
    :cond_4d
    const-string v66, "WirelessDisplayService"

    const-string v67, "Notify DLNA Service 3-finer down, mirror state is false"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    new-instance v44, Landroid/content/Intent;

    const-string v66, "com.android.internal.app.intent.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    move-object/from16 v0, v44

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v44, notifyDLNA_MirrrorOff:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1414
    .end local v44           #notifyDLNA_MirrrorOff:Landroid/content/Intent;
    :cond_4e
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v9, v0, :cond_0

    .line 1416
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_4f

    .line 1417
    const-string v66, "WirelessDisplayService"

    const-string v67, "Pre Load DLNA Services"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    new-instance v67, Landroid/content/Intent;

    const-string v68, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v67 .. v68}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v66 .. v67}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1425
    :cond_4f
    :goto_a
    const/16 v66, 0x3

    move/from16 v0, v47

    move/from16 v1, v66

    if-eq v0, v1, :cond_50

    const/16 v66, 0x7

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_51

    .line 1426
    :cond_50
    new-instance v29, Landroid/content/Intent;

    const-string v66, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v29

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1427
    .restart local v29       #mirrorResultIntent:Landroid/content/Intent;
    const-string v66, "RESULT"

    const-string v67, "SUCCESS"

    move-object/from16 v0, v29

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1429
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "mirror mode status: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " ,ignore finger gesture, sendBroadcast Intent with SUCCESS "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/16 v66, 0x7

    move/from16 v0, v47

    move/from16 v1, v66

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-nez v66, :cond_0

    .line 1431
    const-string v66, "WirelessDisplayService"

    const-string v67, "Notify DLNA Service user want to mirror replace DLNA"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    new-instance v43, Landroid/content/Intent;

    const-string v66, "com.android.internal.app.intent.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_REPLACE"

    move-object/from16 v0, v43

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1433
    .local v43, notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1420
    .end local v29           #mirrorResultIntent:Landroid/content/Intent;
    .end local v43           #notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    :catch_0
    move-exception v52

    .line 1421
    .local v52, se:Ljava/lang/SecurityException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1436
    .end local v52           #se:Ljava/lang/SecurityException;
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->getEnvironmentDongleState()I
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;)I

    move-result v17

    .line 1437
    .local v17, environmentDongleState:I
    const-string v66, "WirelessDisplayService"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Start mirror mode from finger gesture indicator, environmentDonleState = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    new-instance v42, Landroid/content/Intent;

    const-string v66, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    move-object/from16 v0, v42

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1439
    .local v42, notifyConfigerTool:Landroid/content/Intent;
    new-instance v41, Landroid/content/Intent;

    const-string v66, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    move-object/from16 v0, v41

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v41, notifyConfigToolToConfig:Landroid/content/Intent;
    new-instance v45, Landroid/content/Intent;

    const-string v66, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    move-object/from16 v0, v45

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v45, notifyNormalConfigTool:Landroid/content/Intent;
    const/high16 v66, 0x1000

    move-object/from16 v0, v42

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1442
    const/high16 v66, 0x1000

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1443
    const/high16 v66, 0x1000

    move-object/from16 v0, v45

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1444
    new-instance v29, Landroid/content/Intent;

    const-string v66, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v29

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1445
    .restart local v29       #mirrorResultIntent:Landroid/content/Intent;
    const-string v66, "RESULT"

    const-string v67, "FAIL"

    move-object/from16 v0, v29

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v66

    if-nez v66, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$6200(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v66

    if-nez v66, :cond_53

    .line 1448
    const-string v66, "WirelessDisplayService"

    const-string v67, "FINGER GESTURE, WIFI DISABLED"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_52

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1453
    :cond_52
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1454
    :catch_1
    move-exception v6

    .line 1455
    .local v6, ae:Landroid/content/ActivityNotFoundException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "ActivityNotFoundException, intent: notifyNormalConfigTool "

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1459
    .end local v6           #ae:Landroid/content/ActivityNotFoundException;
    :cond_53
    packed-switch v17, :pswitch_data_1

    .line 1534
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_5a

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1461
    :pswitch_2
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_54

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1465
    :cond_54
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1466
    :catch_2
    move-exception v6

    .line 1467
    .restart local v6       #ae:Landroid/content/ActivityNotFoundException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1472
    .end local v6           #ae:Landroid/content/ActivityNotFoundException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$6200(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v66

    if-eqz v66, :cond_55

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v14

    .line 1474
    .local v14, defaultDongle:Lcom/htc/service/DongleInfo;
    if-eqz v14, :cond_55

    iget-boolean v0, v14, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    move/from16 v66, v0

    if-nez v66, :cond_55

    .line 1476
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1477
    :catch_3
    move-exception v6

    .line 1478
    .restart local v6       #ae:Landroid/content/ActivityNotFoundException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1484
    .end local v6           #ae:Landroid/content/ActivityNotFoundException;
    .end local v14           #defaultDongle:Lcom/htc/service/DongleInfo;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    const/16 v67, 0xa

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v66 .. v67}, Lcom/htc/server/WirelessDisplayService;->access$5402(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1488
    const/16 v66, 0xb

    const/16 v67, -0x1

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .line 1489
    .local v33, msgBindWfdService:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1490
    const/16 v66, 0x70

    const/16 v67, 0x0

    const/16 v68, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v66

    move/from16 v2, v67

    move/from16 v3, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v39

    .line 1491
    .restart local v39       #msgUseWfdService:Landroid/os/Message;
    const-wide/16 v66, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1498
    .end local v33           #msgBindWfdService:Landroid/os/Message;
    .end local v39           #msgUseWfdService:Landroid/os/Message;
    :pswitch_4
    const/16 v66, 0x1

    move/from16 v0, v66

    if-ne v10, v0, :cond_56

    .line 1499
    const-string v66, "WirelessDisplayService"

    const-string v67, "Don\'t receive Wifi Scan, it\'s Timer trigger, trigger Configuration Tool"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1502
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v64

    .line 1503
    .local v64, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface/range {v64 .. v64}, Ljava/util/List;->size()I

    move-result v66

    if-lez v66, :cond_58

    .line 1504
    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/htc/service/DongleInfo;

    if-eqz v66, :cond_57

    .line 1505
    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/htc/service/DongleInfo;

    .line 1506
    .local v63, unConfigDongle:Lcom/htc/service/DongleInfo;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1507
    .restart local v12       #bundle:Landroid/os/Bundle;
    const-string v66, "DONGLE_MAC"

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    move-object/from16 v67, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v67

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1513
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v63           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :goto_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1514
    :catch_4
    move-exception v6

    .line 1515
    .restart local v6       #ae:Landroid/content/ActivityNotFoundException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1510
    .end local v6           #ae:Landroid/content/ActivityNotFoundException;
    :cond_57
    const-string v66, "WirelessDisplayService"

    const-string v67, "unConfigDongleList.get(0) is null , should not be here"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1518
    :cond_58
    const-string v66, "WirelessDisplayService"

    const-string v67, "unConfigDongleList = 0, should not be here"

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1523
    .end local v64           #unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :pswitch_5
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v66

    if-eqz v66, :cond_59

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1527
    :cond_59
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 1528
    :catch_5
    move-exception v6

    .line 1529
    .restart local v6       #ae:Landroid/content/ActivityNotFoundException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1538
    .end local v6           #ae:Landroid/content/ActivityNotFoundException;
    :cond_5a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v66, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v66 .. v66}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 1539
    :catch_6
    move-exception v6

    .line 1540
    .restart local v6       #ae:Landroid/content/ActivityNotFoundException;
    const-string v66, "WirelessDisplayService"

    const-string v67, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 650
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_a
        0x6 -> :sswitch_8
        0x9 -> :sswitch_f
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_e
        0xf -> :sswitch_15
        0x10 -> :sswitch_9
        0x11 -> :sswitch_1
        0x13 -> :sswitch_d
        0x14 -> :sswitch_7
        0x15 -> :sswitch_11
        0x1f -> :sswitch_12
        0x29 -> :sswitch_14
        0x33 -> :sswitch_13
        0x3d -> :sswitch_10
        0x6f -> :sswitch_18
        0x70 -> :sswitch_16
        0x71 -> :sswitch_17
        0x72 -> :sswitch_5
        0xde -> :sswitch_2
    .end sparse-switch

    .line 1367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1459
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
