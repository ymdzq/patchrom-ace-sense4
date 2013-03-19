.class public Lcom/android/server/connectivity/Tethering;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$2;,
        Lcom/android/server/connectivity/Tethering$HtcTetherHistory;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;
    }
.end annotation


# static fields
.field public static final CONNECTIVITY_by_Intent:Z = false

.field private static final CUSTOMIZE_BT_TETHERING_UI:Ljava/lang/String; = "ro.bt.tetheringUI"

.field private static final CUSTOMIZE_CID:Ljava/lang/String; = "ro.cid"

.field private static final CUSTOMIZE_HOTSPOTUI:Ljava/lang/String; = "ro.wifi.hotspotUI"

.field private static final CUSTOMIZE_MULTIRAB:Ljava/lang/String; = "ro.ril.multirab.throttling"

.field private static final CUSTOMIZE_USB_TETHERING_UI:Ljava/lang/String; = "ro.usb.tetheringUI"

.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DBG_DETAIL:Z = false

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String; = null

.field public static DISABLE_MULTI_RAB_TRAFFIC_support:Z = false

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer; = null

.field private static final EVENT_CONNECTIVITY_ACTION:I = 0x0

.field private static final EVENT_HTC_NETWORK_AVALIBILITY_CHANGE_ACTION:I = 0x1

.field private static final EVENT_NETWORK_SUBTYPE_CHANGE:I = 0x2

.field private static final EVENT_PERMITTED_TETHER_CHANGE:I = 0x5

.field private static final EVENT_PERMITTED_TETHER_EXTERNAL_REQUEST:I = 0x3

.field private static final EVENT_PERMITTED_TETHER_SETUP:I = 0x4

.field private static final HIPRI_TYPE:Ljava/lang/Integer; = null

.field private static final HTC_FAKE_TETHER_UP_IF:Ljava/lang/String; = "htc_fake_tether_up_if"

#the value of this static final field might be set in the static constructor
.field private static final HTC_HISTORY_ENTRIES:I = 0x0

.field private static final HTC_HISTORY_LOG:Z = true

.field private static final HTC_HISTORY__EVENT_BATTERY_CHANGE:I = 0x8

.field private static final HTC_HISTORY__EVENT_BOOT:I = 0xc

.field private static final HTC_HISTORY__EVENT_CONNECTION_CHANGE:I = 0xa

.field private static final HTC_HISTORY__EVENT_DNS_CHANGE:I = 0xf

.field private static final HTC_HISTORY__EVENT_ENTITLE_FAILED:I = 0x16

.field private static final HTC_HISTORY__EVENT_IF_ADD:I = 0x2

.field private static final HTC_HISTORY__EVENT_IF_ADD_RESULT:I = 0x3

.field private static final HTC_HISTORY__EVENT_IF_REMOVE:I = 0x4

.field private static final HTC_HISTORY__EVENT_IF_REMOVE_RESULT:I = 0x5

.field private static final HTC_HISTORY__EVENT_IF_STATE_CHANGE:I = 0x0

.field private static final HTC_HISTORY__EVENT_IF_STATE_CHANGE_RESULT:I = 0x1

.field private static final HTC_HISTORY__EVENT_MEDIA_CHANGE:I = 0x9

.field private static final HTC_HISTORY__EVENT_NAT_REGISTER:I = 0x15

.field private static final HTC_HISTORY__EVENT_NET_AVL_CHANGE:I = 0xe

.field private static final HTC_HISTORY__EVENT_PERMITTED_TETHER_REQS:I = 0x14

.field private static final HTC_HISTORY__EVENT_PHONE_TYPE_CHANGED:I = 0x17

.field private static final HTC_HISTORY__EVENT_SET_PERMITTED_TETHER:I = 0x13

.field private static final HTC_HISTORY__EVENT_SUBTYPE_CHANGE:I = 0x10

.field private static final HTC_HISTORY__EVENT_TETHER:I = 0x6

.field private static final HTC_HISTORY__EVENT_TOTAL:I = 0x18

.field private static final HTC_HISTORY__EVENT_UNTETHER:I = 0x7

.field private static final HTC_HISTORY__EVENT_USB_STATE_CHANGE:I = 0x11

.field private static final HTC_HISTORY__EVENT_USB_STATE_CHANGE_ACT:I = 0x12

.field private static final HTC_HISTORY__EVENT_WIFI_CHANGE:I = 0xb

.field private static final HTC_HISTORY__EVENT_WIMAX_CHANGE:I = 0xd

.field static INTENT_ENTITLEMENT_RECHECK_IFACE:Ljava/lang/String; = null

.field static final INTENT_PERIODIC_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.android.internal.telephony.periodic_entitlement_check"

#the value of this static final field might be set in the static constructor
.field private static final IPV6_support:Z = false

.field private static MAX_WAIT_CONNECTION_READY_TIME:I = 0x0

.field private static final MOBILE_TYPE:Ljava/lang/Integer; = null

.field public static final NETWORK_AVALIBILITY_CHANGE_by_Intent:Z = false

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final TAG_DETAIL:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final TETHERING_GUARD_support:Z = false

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = true

.field private static final mNullRegexs:[Ljava/lang/String;


# instance fields
.field private final RESOURCE_PACKAGENAME:Ljava/lang/String;

.field private alarm_flag:Z

.field private m3GDunOnlyWhenUsbOn:Z

.field private mBooted:Z

.field private mBtIconShown:Z

.field private mBtPendingNotiIcon:I

.field private mBtTetheredNotification:Landroid/app/Notification;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field mEntitlementCheckIntent:Landroid/app/PendingIntent;

.field private mExtWifiTetheringIcon:I

.field private mHandler:Landroid/os/Handler;

.field private mHotspotIconShown:Z

.field private mHtcRes:Landroid/content/res/Resources;

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mIpv6Address:Ljava/lang/String;

.field private mIpv6Dns:Ljava/lang/String;

.field private mIpv6Gateway:Ljava/lang/String;

.field private mLogTether:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/connectivity/Tethering$HtcTetherHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mPendingNotiIcon:I

.field private mPendingTetherStateChangeIntent:Landroid/content/Intent;

.field private volatile mPermittedTetherFromApp:[Z

.field private mPermittedTetherLock:Ljava/lang/Object;

.field private volatile mPermittedTetherStatus:[I

.field private mPreferredUpstreamMobileApn:I

.field private mPrevConnecttedNetType:I

.field private mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiDisplayRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotification:Landroid/app/Notification;

.field private mThread:Landroid/os/HandlerThread;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbConnected:Z

.field private mUsbTetherRequested:Z

.field private mWifiTetheringIcon:I

.field private pDhcpRange:[Ljava/lang/String;

.field private prevCheckingPermissionMessage:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    .line 135
    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v0, :cond_6

    const-string v0, "Tether_Debug"

    :goto_0
    sput-object v0, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    .line 179
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    .line 192
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    .line 193
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    .line 235
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "192.168.42.2"

    aput-object v3, v0, v1

    const-string v3, "192.168.42.254"

    aput-object v3, v0, v2

    const-string v3, "192.168.43.2"

    aput-object v3, v0, v5

    const/4 v3, 0x3

    const-string v4, "192.168.43.254"

    aput-object v4, v0, v3

    const-string v3, "192.168.44.2"

    aput-object v3, v0, v6

    const-string v3, "192.168.44.254"

    aput-object v3, v0, v7

    const/4 v3, 0x6

    const-string v4, "192.168.45.2"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "192.168.45.254"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "192.168.46.2"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "192.168.46.254"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "192.168.47.2"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "192.168.47.254"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "192.168.48.2"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "192.168.48.254"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    .line 283
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x50

    if-eq v0, v3, :cond_2

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_7

    :cond_2
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    .line 290
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-ne v0, v3, :cond_8

    :cond_3
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/server/connectivity/Tethering;->DISABLE_MULTI_RAB_TRAFFIC_support:Z

    .line 294
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/connectivity/Tethering;->MAX_WAIT_CONNECTION_READY_TIME:I

    .line 300
    const-string v0, "interface"

    sput-object v0, Lcom/android/server/connectivity/Tethering;->INTENT_ENTITLEMENT_RECHECK_IFACE:Ljava/lang/String;

    .line 306
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x146

    if-eq v0, v3, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    sput-boolean v1, Lcom/android/server/connectivity/Tethering;->IPV6_support:Z

    .line 4953
    sget v0, Landroid/net/ConnectivityManager;->MAX_RADIO_TYPE:I

    mul-int/lit8 v0, v0, 0x18

    sput v0, Lcom/android/server/connectivity/Tethering;->HTC_HISTORY_ENTRIES:I

    return-void

    .line 135
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 283
    goto :goto_1

    :cond_8
    move v0, v1

    .line 290
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V
    .locals 9
    .parameter "context"
    .parameter "nmService"
    .parameter "statsService"
    .parameter "connService"
    .parameter "looper"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 315
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 173
    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    .line 178
    const-string v2, "com.htc"

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->RESOURCE_PACKAGENAME:Ljava/lang/String;

    .line 197
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 231
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;

    .line 251
    iput v6, p0, Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I

    .line 252
    iput v6, p0, Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I

    .line 254
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;

    .line 278
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    .line 295
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    .line 301
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    .line 309
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIpv6Address:Ljava/lang/String;

    .line 310
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIpv6Gateway:Ljava/lang/String;

    .line 311
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIpv6Dns:Ljava/lang/String;

    .line 4281
    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->alarm_flag:Z

    .line 4925
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLogTether:Ljava/util/LinkedList;

    .line 317
    const-string v2, "Tethering"

    const-string v3, "Tethering starting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 320
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 321
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 322
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    .line 323
    iput-object p5, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 325
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 327
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    .line 330
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Tethering"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    .line 331
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 332
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 336
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->htcHandlerForBroadcastIntents()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    .line 338
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v3, "TetherMaster"

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 339
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->start()V

    .line 341
    new-instance v2, Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 343
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v2, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v7, :cond_0

    .line 377
    const-string v2, "com.android.internal.telephony.periodic_entitlement_check"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    :cond_0
    sget-boolean v2, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v2, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_1

    .line 383
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 393
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 394
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 416
    .local v1, mRes:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    iput v6, p0, Lcom/android/server/connectivity/Tethering;->mExtWifiTetheringIcon:I

    .line 421
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    if-eqz v2, :cond_2

    .line 422
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_7

    .line 423
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x400c

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_6

    .line 424
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const-string v3, "stat_notify_mobile_hotspot"

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    .line 441
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 442
    const v2, 0x107001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 446
    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v8, :cond_5

    .line 447
    :cond_4
    sget-object v2, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 451
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 454
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    .line 455
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.8.8"

    aput-object v3, v2, v6

    .line 456
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.4.4"

    aput-object v3, v2, v8

    .line 457
    return-void

    .line 426
    :cond_6
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const-string v3, "stat_sys_wifi_vzw"

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    goto :goto_1

    .line 429
    :cond_7
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v2, v3, :cond_8

    .line 430
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const-string v3, "icon_status_tethering_hdpi"

    const-string v4, "drawable"

    const-string v5, "com.htc.framework"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    goto :goto_1

    .line 435
    :cond_8
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zzzz_stat_sys_wifi_router"

    const-string v4, "drawable"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    goto :goto_1

    .line 417
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->setMultiRABTrafficThrottling(I)V

    return-void
.end method

.method static synthetic access$10302(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->alarm_flag:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/android/server/connectivity/Tethering;Landroid/app/AlarmManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->internal_htcConnectivityActionHandling(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->internal_htcNetworkAvalibilityChangeHandling(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$10902(Lcom/android/server/connectivity/Tethering;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    return v0
.end method

.method static synthetic access$11000(Lcom/android/server/connectivity/Tethering;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->internal_htcRequestPermittedTether([I)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->internal_htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->internal_htcNotifyPermittedTetherChange()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mBtIconShown:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showBtTetheredNotification(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->scheduleEntitlementCheckExpiredAlarm(JI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htc_customization_PhoneTypeChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->m3GDunOnlyWhenUsbOn:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/connectivity/Tethering;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->IPV6_support:Z

    return v0
.end method

.method static synthetic access$4800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherAllow(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6Address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6Gateway:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6Dns:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;I[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->enableUsbIfaces(Z)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/connectivity/Tethering;Landroid/net/IConnectivityManager;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->getActivedTetherUpstream(Landroid/net/IConnectivityManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceNameV6(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private addToHtcTetherHistory(I[Ljava/lang/Object;)V
    .locals 3
    .parameter "event"
    .parameter "args"

    .prologue
    .line 4957
    new-instance v0, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    .line 4958
    .local v0, hist:Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->timeStamp:J

    .line 4959
    iput p1, v0, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->event:I

    .line 4960
    iput-object p2, v0, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->args:[Ljava/lang/Object;

    .line 4961
    monitor-enter p0

    .line 4962
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLogTether:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 4963
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLogTether:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v2, Lcom/android/server/connectivity/Tethering;->HTC_HISTORY_ENTRIES:I

    if-le v1, v2, :cond_0

    .line 4964
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLogTether:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 4966
    :cond_0
    monitor-exit p0

    .line 4968
    return-void

    .line 4966
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearBtTetheredNotification()V
    .locals 3

    .prologue
    .line 1345
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1347
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1349
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    .line 1351
    :cond_0
    return-void
.end method

.method private clearTetheredNotification()V
    .locals 3

    .prologue
    .line 1356
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1358
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1359
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1360
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 1362
    :cond_0
    return-void
.end method

.method private clearWaitingAlarm(Landroid/app/AlarmManager;)V
    .locals 3
    .parameter "aMgr"

    .prologue
    .line 5145
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 5146
    move-object v0, p1

    .line 5147
    .local v0, am:Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 5148
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #am:Landroid/app/AlarmManager;
    check-cast v0, Landroid/app/AlarmManager;

    .line 5150
    .restart local v0       #am:Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5151
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 5152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    .line 5154
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 12
    .parameter "enabled"

    .prologue
    const/4 v8, 0x0

    .line 1585
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configureUsbIface("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    new-array v5, v8, [Ljava/lang/String;

    .line 1590
    .local v5, ifaces:[Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1595
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v4, v1, v3

    .line 1596
    .local v4, iface:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1597
    const/4 v6, 0x0

    .line 1599
    .local v6, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    .line 1600
    if-eqz v6, :cond_0

    .line 1601
    const-string v9, "192.168.42.129"

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1602
    .local v0, addr:Ljava/net/InetAddress;
    new-instance v9, Landroid/net/LinkAddress;

    const/16 v10, 0x18

    invoke-direct {v9, v0, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v9, v6, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 1603
    if-eqz p1, :cond_1

    .line 1604
    iget-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v10, "down"

    const-string v11, "up"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1608
    :goto_1
    iget-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v10, "running"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1609
    iget-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v10, "  "

    const-string v11, " "

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1610
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4, v6}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1595
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v6           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1591
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v7           #len$:I
    :catch_0
    move-exception v2

    .line 1592
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "Tethering"

    const-string v10, "Error listing Interfaces"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1619
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    return v8

    .line 1606
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v7       #len$:I
    :cond_1
    :try_start_2
    iget-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v10, "up"

    const-string v11, "down"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1612
    .end local v0           #addr:Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 1613
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error configuring interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1619
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_2
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private dumpStringArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strArray"

    .prologue
    .line 5063
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5065
    .local v3, str:Ljava/lang/StringBuilder;
    const-string v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5066
    if-eqz p1, :cond_0

    .line 5067
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 5068
    .local v4, strIn:Ljava/lang/String;
    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5067
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5073
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #strIn:Ljava/lang/String;
    :cond_0
    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5074
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private enableUsbIfaces(Z)V
    .locals 9
    .parameter "enable"

    .prologue
    .line 1541
    sget-boolean v6, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableUsbIfaces("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_0
    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/String;

    .line 1544
    .local v4, ifaces:[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v4

    .line 1545
    sget-boolean v6, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ifaces:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v3, v0, v2

    .line 1551
    .local v3, iface:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1552
    if-eqz p1, :cond_4

    .line 1553
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->interfaceAdded(Ljava/lang/String;)V

    .line 1550
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1546
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v5           #len$:I
    :catch_0
    move-exception v1

    .line 1547
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error listing Interfaces :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    return-void

    .line 1555
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #iface:Ljava/lang/String;
    .restart local v5       #len$:I
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->interfaceRemoved(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getActivedTetherUpstream(Landroid/net/IConnectivityManager;)Landroid/net/NetworkInfo;
    .locals 9
    .parameter "iCM"

    .prologue
    const/4 v8, 0x4

    .line 4239
    move-object v1, p1

    .line 4240
    .local v1, cm:Landroid/net/IConnectivityManager;
    if-nez v1, :cond_0

    .line 4241
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4242
    .local v0, bconn:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 4246
    .end local v0           #bconn:Landroid/os/IBinder;
    :cond_0
    const/4 v4, 0x0

    .line 4248
    .local v4, info:Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 4252
    :goto_0
    if-eqz v4, :cond_1

    .line 4253
    iget v5, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    if-ne v5, v8, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 4254
    const/4 v4, 0x0

    .line 4257
    :cond_1
    if-nez v4, :cond_2

    iget v5, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    if-ne v5, v8, :cond_2

    .line 4259
    :try_start_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 4266
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_3

    .line 4267
    const/4 v4, 0x0

    .line 4270
    :cond_3
    sget-boolean v5, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v5, :cond_4

    .line 4271
    sget-object v5, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActivedTetherUpstream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    :cond_4
    return-object v4

    .line 4249
    :catch_0
    move-exception v2

    .line 4250
    .local v2, e2:Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting active network :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4260
    .end local v2           #e2:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 4261
    .local v3, e3:Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting dun active network :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAssocCount()I
    .locals 8

    .prologue
    .line 1305
    const/4 v1, 0x0

    .line 1308
    .local v1, count:I
    :try_start_0
    const-string v5, "wifi"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1309
    .local v4, wifib:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v3

    .line 1310
    .local v3, wifiService:Landroid/net/wifi/IWifiManager;
    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getAssocListStr()Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, assoclist:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->getAssocCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1319
    .end local v0           #assoclist:Ljava/lang/String;
    .end local v3           #wifiService:Landroid/net/wifi/IWifiManager;
    .end local v4           #wifib:Landroid/os/IBinder;
    :goto_0
    return v1

    .line 1314
    :catch_0
    move-exception v2

    .line 1315
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not getAssocList, :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1316
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1317
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not getAssocList, :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAssocCount(Ljava/lang/String;)I
    .locals 5
    .parameter "assoc"

    .prologue
    const/4 v1, 0x0

    .line 1327
    if-nez p1, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return v1

    .line 1330
    :cond_1
    const-string v4, "|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1331
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 1334
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, clientNumber:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, count:I
    goto :goto_0

    .line 1338
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 1339
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 6
    .parameter "netInfo"

    .prologue
    .line 4821
    const/4 v2, 0x0

    .line 4832
    .local v2, ifName:Ljava/lang/String;
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4833
    .local v0, bconn:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 4835
    .local v1, cm:Landroid/net/IConnectivityManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 4836
    .local v3, lprop:Landroid/net/LinkProperties;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4841
    .end local v3           #lprop:Landroid/net/LinkProperties;
    :goto_0
    sget-boolean v4, Lcom/android/server/connectivity/Tethering;->IPV6_support:Z

    if-eqz v4, :cond_0

    .line 4842
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isIpv4Connected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4849
    .end local v2           #ifName:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 4845
    .restart local v2       #ifName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 4837
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private htcGetInterfaceNameV6(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 16
    .parameter "info"

    .prologue
    .line 4854
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    .line 4855
    .local v12, type:I
    const/4 v8, 0x0

    .line 4856
    .local v8, interfaceName:Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIpv6Address:Ljava/lang/String;

    .line 4857
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIpv6Gateway:Ljava/lang/String;

    .line 4858
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIpv6Dns:Ljava/lang/String;

    .line 4861
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v13, v12}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v9

    .line 4862
    .local v9, props:Landroid/net/LinkProperties;
    if-eqz v9, :cond_6

    .line 4863
    sget-boolean v13, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v13, :cond_0

    .line 4864
    sget-object v13, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "props for network "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    :cond_0
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v8

    .line 4868
    const/4 v2, 0x0

    .line 4869
    .local v2, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v2

    .line 4870
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 4871
    .local v1, addr:Ljava/net/InetAddress;
    instance-of v13, v1, Ljava/net/Inet6Address;

    if-eqz v13, :cond_1

    .line 4872
    move-object v0, v1

    check-cast v0, Ljava/net/Inet6Address;

    move-object v7, v0

    .line 4874
    .local v7, i6addr:Ljava/net/Inet6Address;
    invoke-virtual {v7}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v7}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v13

    if-nez v13, :cond_1

    .line 4876
    invoke-virtual {v7}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIpv6Address:Ljava/lang/String;

    .line 4882
    .end local v1           #addr:Ljava/net/InetAddress;
    .end local v7           #i6addr:Ljava/net/Inet6Address;
    :cond_2
    const/4 v10, 0x0

    .line 4883
    .local v10, routes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v10

    .line 4884
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/RouteInfo;

    .line 4885
    .local v11, rt:Landroid/net/RouteInfo;
    invoke-virtual {v11}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    .line 4886
    .local v5, gateway:Ljava/net/InetAddress;
    instance-of v13, v5, Ljava/net/Inet6Address;

    if-eqz v13, :cond_3

    .line 4887
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v5}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v13

    if-nez v13, :cond_3

    .line 4888
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIpv6Gateway:Ljava/lang/String;

    .line 4894
    .end local v5           #gateway:Ljava/net/InetAddress;
    .end local v11           #rt:Landroid/net/RouteInfo;
    :cond_4
    const/4 v4, 0x0

    .line 4895
    .local v4, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    .line 4896
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 4897
    .local v3, d:Ljava/net/InetAddress;
    instance-of v13, v3, Ljava/net/Inet6Address;

    if-eqz v13, :cond_5

    .line 4898
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v13

    if-nez v13, :cond_5

    .line 4899
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIpv6Dns:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4906
    .end local v2           #addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v3           #d:Ljava/net/InetAddress;
    .end local v4           #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #props:Landroid/net/LinkProperties;
    .end local v10           #routes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :cond_6
    :goto_0
    sget-boolean v13, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v13, :cond_7

    .line 4907
    sget-object v13, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "htcGetInterfaceNameV6, mIpv6Address = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mIpv6Address:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4908
    sget-object v13, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "                       mIpv6Gateway = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mIpv6Gateway:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4909
    sget-object v13, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "                       mIpv6Dns = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mIpv6Dns:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4911
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIpv6Address:Ljava/lang/String;

    if-eqz v13, :cond_8

    .line 4914
    .end local v8           #interfaceName:Ljava/lang/String;
    :goto_1
    return-object v8

    .restart local v8       #interfaceName:Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    goto :goto_1

    .line 4905
    :catch_0
    move-exception v13

    goto :goto_0
.end method

.method private htcGetSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 4608
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4609
    .local v0, mPm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 4611
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4613
    :goto_0
    if-eqz v1, :cond_0

    .line 4614
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4616
    :goto_1
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 4612
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private htcHandlerForBroadcastIntents()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 4009
    new-instance v0, Lcom/android/server/connectivity/Tethering$1;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Looper;)V

    return-object v0
.end method

.method private htcHotspotIconChange(Landroid/net/NetworkInfo;II)V
    .locals 3
    .parameter "info"
    .parameter "netType"
    .parameter "subtype"

    .prologue
    .line 4060
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon Type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subtype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mPrevConnecttedNetType:I

    .line 4116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mExtWifiTetheringIcon:I

    .line 4117
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    if-eqz v0, :cond_0

    .line 4118
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    if-eqz v0, :cond_1

    .line 4119
    const-string v0, "Tethering"

    const-string v1, "original tethering icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 4125
    :cond_0
    :goto_0
    return-void

    .line 4122
    :cond_1
    const v0, 0x1080534

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_0
.end method

.method private htcPermittedTetherAllow(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .parameter "internalIface"
    .parameter "externalIface"
    .parameter "forceCheck"

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    .line 4340
    const/4 v3, 0x1

    .line 4341
    .local v3, value:Z
    sget-boolean v5, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v5, :cond_0

    .line 4342
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherMonitorWanIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4343
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I

    move-result v2

    .line 4344
    .local v2, lanIf:I
    if-ltz v2, :cond_0

    if-ge v2, v6, :cond_0

    .line 4346
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x94

    if-ne v5, v6, :cond_3

    .line 4347
    move v0, p3

    .line 4348
    .local v0, checkTetheringGuard:Z
    if-nez v0, :cond_1

    .line 4349
    const/4 v1, -0x1

    .line 4350
    .local v1, ifstatus:I
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4351
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v1, v6, v2

    .line 4352
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4353
    packed-switch v1, :pswitch_data_0

    .line 4361
    const/4 v0, 0x1

    .line 4370
    .end local v1           #ifstatus:I
    :goto_0
    if-eqz v0, :cond_0

    .line 4371
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    add-int/lit8 v7, v2, 0x10

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/server/connectivity/Tethering;->htcRequestPermittedTether(Ljava/lang/Boolean;ZLjava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 4388
    .end local v0           #checkTetheringGuard:Z
    .end local v2           #lanIf:I
    :cond_0
    :goto_1
    return v3

    .line 4352
    .restart local v0       #checkTetheringGuard:Z
    .restart local v1       #ifstatus:I
    .restart local v2       #lanIf:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 4355
    :pswitch_0
    const/4 v3, 0x1

    .line 4356
    goto :goto_0

    .line 4358
    :pswitch_1
    const/4 v3, 0x0

    .line 4359
    goto :goto_0

    .line 4366
    .end local v1           #ifstatus:I
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4367
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v7, 0x3

    aput v7, v6, v2

    .line 4368
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 4371
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 4377
    .end local v0           #checkTetheringGuard:Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4378
    :try_start_3
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v4, v4, v2

    if-eqz v4, :cond_4

    .line 4379
    const/4 v3, 0x0

    .line 4381
    :cond_4
    monitor-exit v5

    goto :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .line 4353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private htcPermittedTetherInit()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 4284
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    .line 4285
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    .line 4286
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 4287
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    .line 4288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4289
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aput v2, v1, v0

    .line 4288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4292
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private htcPermittedTetherLanIf(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 4295
    const/4 v0, -0x1

    .line 4296
    .local v0, lanIf:I
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 4297
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4298
    const/4 v0, 0x1

    .line 4305
    :cond_0
    :goto_0
    return v0

    .line 4299
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4300
    const/4 v0, 0x0

    goto :goto_0

    .line 4301
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4302
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private htcPermittedTetherMonitorWanIf(Ljava/lang/String;)Z
    .locals 8
    .parameter "iface"

    .prologue
    .line 4309
    const/4 v1, 0x0

    .line 4310
    .local v1, isWanIf:Z
    sget-boolean v6, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v6, :cond_1

    .line 4311
    if-eqz p1, :cond_1

    .line 4312
    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4313
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    .line 4314
    .local v3, service:Landroid/net/IConnectivityManager;
    const/4 v4, -0x1

    .line 4315
    .local v4, wanIf:I
    iget v6, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 4316
    const/4 v4, 0x4

    .line 4321
    :goto_0
    if-ltz v4, :cond_1

    .line 4322
    const/4 v2, 0x0

    .line 4324
    .local v2, nInfo:Landroid/net/NetworkInfo;
    :try_start_0
    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4326
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_1

    .line 4328
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    .line 4329
    .local v5, wanIface:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 4330
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4336
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #nInfo:Landroid/net/NetworkInfo;
    .end local v3           #service:Landroid/net/IConnectivityManager;
    .end local v4           #wanIf:I
    .end local v5           #wanIface:Ljava/lang/String;
    :cond_1
    return v1

    .line 4319
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v3       #service:Landroid/net/IConnectivityManager;
    .restart local v4       #wanIf:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 4325
    .restart local v2       #nInfo:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private htc_customization_PhoneTypeChange(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x3

    .line 4789
    sget-boolean v8, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v8, :cond_4

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x94

    if-ne v8, v9, :cond_4

    .line 4792
    new-array v6, v10, [Ljava/lang/Object;

    .line 4793
    .local v6, mParams:[Ljava/lang/Object;
    const/4 v8, 0x0

    const-string v9, "phoneName"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v8

    .line 4794
    const/16 v8, 0x17

    invoke-direct {p0, v8, v6}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4796
    new-array v7, v11, [Z

    .line 4797
    .local v7, statusChanged:[Z
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4798
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v11, :cond_1

    .line 4799
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v8, v8, v1

    if-eq v8, v11, :cond_0

    .line 4800
    const/4 v8, 0x1

    aput-boolean v8, v7, v1

    .line 4801
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v10, 0x3

    aput v10, v8, v1

    .line 4798
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4804
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4805
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v9

    .line 4806
    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 4807
    .local v5, ifaces:Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4808
    .local v4, ifaceObj:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I

    move-result v3

    .line 4809
    .local v3, ifNum:I
    if-ltz v3, :cond_2

    if-ge v3, v11, :cond_2

    .line 4810
    aget-boolean v8, v7, v3

    if-eqz v8, :cond_2

    .line 4811
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->internal_htcPermittedTetherConnectionReCalculation(Ljava/lang/Object;)V

    goto :goto_1

    .line 4815
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ifNum:I
    .end local v4           #ifaceObj:Ljava/lang/Object;
    .end local v5           #ifaces:Ljava/util/Set;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 4804
    :catchall_1
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 4815
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #ifaces:Ljava/util/Set;
    :cond_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4817
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #ifaces:Ljava/util/Set;
    .end local v6           #mParams:[Ljava/lang/Object;
    .end local v7           #statusChanged:[Z
    :cond_4
    return-void
.end method

.method private internal_htcConnectivityActionHandling(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    .line 4135
    :try_start_0
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 4137
    .local v1, info:Landroid/net/NetworkInfo;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tethering got CONNECTIVITY_ACTION type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", subtype: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 4140
    .local v3, netType:I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 4141
    .local v4, subtype:I
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isHtcDunNetworkType(I)Z

    move-result v5

    .line 4143
    .local v5, upstreamChanged:Z
    const/4 v6, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    .line 4144
    .local v2, mParams:[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v2, v6

    .line 4145
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v2, v6

    .line 4146
    const/4 v6, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 4147
    const/4 v6, 0x3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    aput-object v7, v2, v6

    .line 4148
    const/4 v6, 0x4

    iget-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    .line 4149
    const/16 v6, 0xa

    invoke-direct {p0, v6, v2}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4151
    if-eqz v5, :cond_1

    .line 4152
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x9b

    if-eq v6, v7, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v6, v9, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x88

    if-eq v6, v7, :cond_0

    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x4010

    cmpl-double v6, v6, v8

    if-gez v6, :cond_0

    .line 4156
    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/connectivity/Tethering;->htcHotspotIconChange(Landroid/net/NetworkInfo;II)V

    .line 4158
    :cond_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4163
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #mParams:[Ljava/lang/Object;
    .end local v3           #netType:I
    .end local v4           #subtype:I
    .end local v5           #upstreamChanged:Z
    :cond_1
    :goto_0
    return-void

    .line 4160
    :catch_0
    move-exception v0

    .line 4161
    .local v0, iex:Ljava/lang/Exception;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internal_htcConnectivityActionHandling : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private internal_htcNetworkAvalibilityChangeHandling(Landroid/net/NetworkInfo;)V
    .locals 9
    .parameter "netInfo"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 4172
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 4173
    .local v2, netType:I
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->isHtcDunNetworkType(I)Z

    move-result v3

    .line 4175
    .local v3, upstreamChanged:Z
    new-array v1, v8, [Ljava/lang/Object;

    .line 4176
    .local v1, mParams:[Ljava/lang/Object;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v1, v4

    .line 4177
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v1, v7

    .line 4178
    const/4 v4, 0x2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 4179
    const/16 v4, 0xe

    invoke-direct {p0, v4, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4181
    if-eqz v3, :cond_0

    .line 4182
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tethering got avalibility change:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v4, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 4187
    :cond_0
    sget-boolean v4, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 4188
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-ne v4, v7, :cond_2

    .line 4189
    const-string v4, "Tethering"

    const-string v5, "Tethering got mobile connection is available => resend tether request"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    iget v5, v5, Landroid/os/Message;->what:I

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4193
    .local v0, copyMessage:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    iget v5, v5, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4195
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4201
    .end local v0           #copyMessage:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 4197
    :cond_2
    const-string v4, "Tethering"

    const-string v5, "Tethering got mobile connection is not available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private internal_htcNetworkSubtypeChange(Landroid/net/NetworkInfo;I)V
    .locals 9
    .parameter "netInfo"
    .parameter "prev_netSubtype"

    .prologue
    const/4 v8, 0x2

    .line 4208
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 4209
    .local v2, netType:I
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->isHtcDunNetworkType(I)Z

    move-result v4

    .line 4211
    .local v4, upstreamChanged:Z
    const/4 v5, 0x4

    new-array v1, v5, [Ljava/lang/Object;

    .line 4212
    .local v1, mParams:[Ljava/lang/Object;
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v1, v5

    .line 4213
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v1, v5

    .line 4214
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcGetInterfaceName(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 4215
    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v1, v5

    .line 4216
    const/16 v5, 0x10

    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4218
    if-eqz v4, :cond_1

    .line 4219
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tethering subtype change: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x9b

    if-eq v5, v6, :cond_1

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v5, v8, :cond_1

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x88

    if-eq v5, v6, :cond_1

    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x4010

    cmpl-double v5, v5, v7

    if-gez v5, :cond_1

    .line 4224
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/Tethering;->getActivedTetherUpstream(Landroid/net/IConnectivityManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4225
    .local v0, info:Landroid/net/NetworkInfo;
    const/4 v3, -0x1

    .line 4226
    .local v3, type:I
    if-eqz v0, :cond_0

    .line 4227
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 4229
    :cond_0
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifi_subtype netType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPrevNetType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/connectivity/Tethering;->mPrevConnecttedNetType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    iget v5, p0, Lcom/android/server/connectivity/Tethering;->mPrevConnecttedNetType:I

    if-ne v3, v5, :cond_1

    .line 4232
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/connectivity/Tethering;->htcHotspotIconChange(Landroid/net/NetworkInfo;II)V

    .line 4236
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v3           #type:I
    :cond_1
    return-void
.end method

.method private internal_htcNotifyPermittedTetherChange()V
    .locals 3

    .prologue
    .line 4770
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_1

    .line 4771
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4772
    .local v0, broadcast:Landroid/content/Intent;
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 4773
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    const-string v2, "Broadcast permitted Tether update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4777
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private internal_htcPermittedTetherConnectionReCalculation(Ljava/lang/Object;)V
    .locals 4
    .parameter "ifaceObj"

    .prologue
    .line 4780
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 4781
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v1, :cond_0

    .line 4782
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "htc_fake_tether_up_if"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 4783
    .local v0, interfaces:[Ljava/lang/String;
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    .line 4786
    .end local v0           #interfaces:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private internal_htcRequestPermittedTether([I)V
    .locals 16
    .parameter "statusArray"

    .prologue
    .line 4621
    sget-boolean v13, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v13, :cond_6

    .line 4622
    const-string v13, "com.android.phone"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->htcGetSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v8

    .line 4623
    .local v8, phoneSig:[Landroid/content/pm/Signature;
    const-string v13, "com.htc.tetheringguard"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->htcGetSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v12

    .line 4625
    .local v12, tetherGuardSig:[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .line 4626
    .local v2, hasSignature:Z
    if-eqz v8, :cond_1

    const/4 v13, 0x0

    aget-object v13, v8, v13

    if-eqz v13, :cond_1

    if-eqz v12, :cond_1

    .line 4627
    move-object v1, v12

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v11, v1, v3

    .line 4628
    .local v11, sig:Landroid/content/pm/Signature;
    if-eqz v11, :cond_0

    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13, v11}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 4629
    const/4 v2, 0x1

    .line 4627
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4634
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v11           #sig:Landroid/content/pm/Signature;
    :cond_1
    const/4 v10, 0x0

    .line 4635
    .local v10, sendToTetherGuard:Z
    if-eqz v2, :cond_4

    .line 4636
    const-string v13, "Tethering"

    const-string v14, "Tethering call TetherGuard"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 4638
    .local v9, requestIntent:Landroid/content/Intent;
    const-string v13, "com.htc.tetheringguard"

    const-string v14, "com.htc.tetheringguard.mService"

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4639
    const-string v13, "status"

    move-object/from16 v0, p1

    invoke-virtual {v9, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4640
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    .line 4641
    .local v6, name:Landroid/content/ComponentName;
    if-eqz v6, :cond_3

    .line 4642
    const/4 v10, 0x1

    .line 4652
    .end local v6           #name:Landroid/content/ComponentName;
    .end local v9           #requestIntent:Landroid/content/Intent;
    :goto_1
    if-nez v10, :cond_6

    .line 4653
    const/4 v7, 0x0

    .line 4654
    .local v7, notifyRequired:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v14

    .line 4655
    const/4 v4, 0x0

    .local v4, lanIf:I
    :goto_2
    const/4 v13, 0x3

    if-ge v4, v13, :cond_5

    .line 4656
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v13, v13, v4

    const/4 v15, 0x1

    if-eq v13, v15, :cond_2

    .line 4657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v15, 0x1

    aput v15, v13, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4658
    const/4 v7, 0x1

    .line 4655
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4645
    .end local v4           #lanIf:I
    .end local v7           #notifyRequired:Z
    .restart local v6       #name:Landroid/content/ComponentName;
    .restart local v9       #requestIntent:Landroid/content/Intent;
    :cond_3
    const-string v13, "Tethering"

    const-string v14, "tether package missing"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4649
    .end local v6           #name:Landroid/content/ComponentName;
    .end local v9           #requestIntent:Landroid/content/Intent;
    :cond_4
    const-string v13, "Tethering"

    const-string v14, "fake tether package existed in system"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4661
    .restart local v4       #lanIf:I
    .restart local v7       #notifyRequired:Z
    :cond_5
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4662
    if-eqz v7, :cond_6

    .line 4663
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->internal_htcNotifyPermittedTetherChange()V

    .line 4667
    .end local v2           #hasSignature:Z
    .end local v4           #lanIf:I
    .end local v7           #notifyRequired:Z
    .end local v8           #phoneSig:[Landroid/content/pm/Signature;
    .end local v10           #sendToTetherGuard:Z
    .end local v12           #tetherGuardSig:[Landroid/content/pm/Signature;
    :cond_6
    return-void

    .line 4661
    .restart local v2       #hasSignature:Z
    .restart local v4       #lanIf:I
    .restart local v7       #notifyRequired:Z
    .restart local v8       #phoneSig:[Landroid/content/pm/Signature;
    .restart local v10       #sendToTetherGuard:Z
    .restart local v12       #tetherGuardSig:[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v13

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13
.end method

.method private internal_htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "iface"
    .parameter "permission"

    .prologue
    .line 4700
    sget-boolean v9, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v9, :cond_7

    .line 4701
    const/4 v2, -0x1

    .line 4703
    .local v2, ifNum:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4705
    :goto_0
    const/4 v8, -0x1

    .line 4707
    .local v8, status:I
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 4710
    :goto_1
    sget-boolean v9, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v9, :cond_0

    .line 4711
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permitted Tether update - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4713
    :cond_0
    if-ltz v2, :cond_7

    const/4 v9, 0x3

    if-ge v2, v9, :cond_7

    if-ltz v8, :cond_7

    .line 4714
    const/4 v6, 0x0

    .line 4715
    .local v6, sendEventForTetherChange:Z
    const/4 v7, 0x0

    .line 4716
    .local v7, sendIntentForTetherChange:Z
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4717
    :try_start_2
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v9, v9, v2

    if-eq v8, v9, :cond_1

    .line 4719
    const/4 v9, 0x5

    new-array v5, v9, [Ljava/lang/Object;

    .line 4720
    .local v5, mParams:[Ljava/lang/Object;
    const/4 v9, 0x0

    aput-object p1, v5, v9

    .line 4721
    const/4 v9, 0x1

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v5, v9

    .line 4722
    const/4 v9, 0x2

    aput-object p2, v5, v9

    .line 4723
    const/4 v9, 0x3

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v5, v9

    .line 4724
    const/4 v9, 0x4

    new-instance v11, Ljava/lang/Integer;

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v12, v12, v2

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v5, v9

    .line 4725
    const/16 v9, 0x13

    invoke-direct {p0, v9, v5}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4727
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v9, v9, v2

    const/4 v11, 0x3

    if-ne v9, v11, :cond_3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 4729
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aput v8, v9, v2

    .line 4751
    .end local v5           #mParams:[Ljava/lang/Object;
    :cond_1
    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4752
    if-eqz v6, :cond_6

    .line 4753
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v10

    .line 4754
    :try_start_3
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 4755
    .local v4, ifaces:Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4756
    .local v3, ifaceObj:Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-direct {p0, v9}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I

    move-result v9

    if-ne v2, v9, :cond_2

    .line 4757
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->internal_htcPermittedTetherConnectionReCalculation(Ljava/lang/Object;)V

    goto :goto_3

    .line 4760
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #ifaceObj:Ljava/lang/Object;
    .end local v4           #ifaces:Ljava/util/Set;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 4732
    .restart local v5       #mParams:[Ljava/lang/Object;
    :cond_3
    :try_start_4
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aput v8, v9, v2

    .line 4733
    const/4 v6, 0x1

    .line 4734
    if-eqz v8, :cond_4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 4736
    :cond_4
    const/4 v7, 0x1

    .line 4738
    sget-boolean v9, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v9, :cond_1

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    .line 4739
    if-nez v8, :cond_1

    iget-boolean v9, p0, Lcom/android/server/connectivity/Tethering;->alarm_flag:Z

    const/4 v11, 0x1

    if-eq v9, v11, :cond_1

    .line 4740
    const-string v9, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start recheck alarm ifNum = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/connectivity/Tethering;->alarm_flag:Z

    .line 4742
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/connectivity/Tethering;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    .line 4744
    const-wide/32 v11, 0x5265c00

    invoke-direct {p0, v11, v12, v2}, Lcom/android/server/connectivity/Tethering;->scheduleEntitlementCheckExpiredAlarm(JI)V

    goto :goto_2

    .line 4751
    .end local v5           #mParams:[Ljava/lang/Object;
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 4760
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #ifaces:Ljava/util/Set;
    :cond_5
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4762
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #ifaces:Ljava/util/Set;
    :cond_6
    if-eqz v7, :cond_7

    .line 4763
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4767
    .end local v2           #ifNum:I
    .end local v6           #sendEventForTetherChange:Z
    .end local v7           #sendIntentForTetherChange:Z
    .end local v8           #status:I
    :cond_7
    return-void

    .line 4704
    .restart local v2       #ifNum:I
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 4708
    .restart local v8       #status:I
    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method

.method private isHtcDunNetworkType(I)Z
    .locals 5
    .parameter "netType"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4047
    const/4 v0, 0x1

    .line 4048
    .local v0, upstreamChanged:Z
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4049
    iget v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    if-ne v3, v4, :cond_2

    .line 4050
    if-ne p1, v4, :cond_1

    move v0, v1

    .line 4056
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 4050
    goto :goto_0

    .line 4053
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 7
    .parameter "iface"

    .prologue
    const/4 v4, 0x0

    .line 630
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 632
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 634
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    monitor-exit v5

    .line 640
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #regex:Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 633
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .end local v3           #regex:Ljava/lang/String;
    :cond_2
    monitor-exit v5

    goto :goto_1

    .line 637
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private scheduleEntitlementCheckExpiredAlarm(JI)V
    .locals 6
    .parameter "timeToTrigger"
    .parameter "iface"

    .prologue
    .line 5157
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5158
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 5159
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.periodic_entitlement_check"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5160
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/server/connectivity/Tethering;->INTENT_ENTITLEMENT_RECHECK_IFACE:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5161
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    .line 5165
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set alarm to wake up entitlement check again after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5167
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5168
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 18

    .prologue
    .line 992
    const-string v15, "wifi"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    .line 993
    .local v14, wifib:Landroid/os/IBinder;
    invoke-static {v14}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v12

    .line 996
    .local v12, wifiService:Landroid/net/wifi/IWifiManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v15}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-interface {v12}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-nez v15, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 997
    :catch_0
    move-exception v5

    .line 998
    .local v5, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 1001
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v2, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v1, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v6, erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 1006
    .local v13, wifiTethered:Z
    const/4 v11, 0x0

    .line 1007
    .local v11, usbTethered:Z
    const/4 v3, 0x0

    .line 1009
    .local v3, bluetoothTethered:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1010
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 1011
    .local v9, ifaces:Ljava/util/Set;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1012
    .local v8, iface:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1013
    .local v10, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v10, :cond_1

    .line 1014
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1015
    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1030
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #ifaces:Ljava/util/Set;
    .end local v10           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 1016
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #iface:Ljava/lang/Object;
    .restart local v9       #ifaces:Ljava/util/Set;
    .restart local v10       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    :try_start_2
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1017
    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1018
    .restart local v8       #iface:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1019
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1020
    const/4 v11, 0x1

    .line 1026
    :cond_4
    :goto_2
    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1021
    .restart local v8       #iface:Ljava/lang/Object;
    :cond_5
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1022
    const/4 v13, 0x1

    goto :goto_2

    .line 1023
    :cond_6
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1024
    const/4 v3, 0x1

    goto :goto_2

    .line 1030
    .end local v8           #iface:Ljava/lang/Object;
    .end local v10           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1031
    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v4, broadcast:Landroid/content/Intent;
    const/high16 v15, 0x3000

    invoke-virtual {v4, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1034
    const-string v15, "availableArray"

    invoke-virtual {v4, v15, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1036
    const-string v15, "activeArray"

    invoke-virtual {v4, v15, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1037
    const-string v15, "erroredArray"

    invoke-virtual {v4, v15, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1040
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    if-eqz v15, :cond_8

    .line 1041
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;

    .line 1043
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1045
    const-string v15, "Tethering"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sendTetherStateChangedBroadcast "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_3
    if-eqz v13, :cond_b

    .line 1072
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    .line 1073
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/connectivity/Tethering;->mExtWifiTetheringIcon:I

    if-eqz v15, :cond_9

    .line 1074
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/connectivity/Tethering;->mExtWifiTetheringIcon:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 1089
    :goto_4
    if-eqz v3, :cond_c

    .line 1090
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->mBtIconShown:Z

    .line 1091
    const v15, 0x1080531

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showBtTetheredNotification(I)V

    goto/16 :goto_0

    .line 1050
    :cond_8
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/connectivity/Tethering;->mPendingTetherStateChangeIntent:Landroid/content/Intent;

    goto :goto_3

    .line 1075
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    if-eqz v15, :cond_a

    .line 1076
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    .line 1078
    :cond_a
    const v15, 0x1080534

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    .line 1082
    :cond_b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    .line 1084
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I

    .line 1086
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto :goto_4

    .line 1093
    :cond_c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/connectivity/Tethering;->mBtIconShown:Z

    .line 1094
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearBtTetheredNotification()V

    goto/16 :goto_0
.end method

.method private setMultiRABTrafficThrottling(I)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 5080
    sget-boolean v2, Lcom/android/server/connectivity/Tethering;->DISABLE_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v2, :cond_0

    .line 5081
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMultiRAB enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "htctelephony"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    .line 5085
    .local v1, ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    if-eqz v1, :cond_1

    .line 5087
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v1, v2, p1}, Lcom/htc/service/HtcTelephonyManager;->requestSetMultiRABTrafficThrottling(II)V

    .line 5088
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/htc/service/HtcTelephonyManager;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5096
    .end local v1           #ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 5089
    .restart local v1       #ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    :catch_0
    move-exception v0

    .line 5090
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Tethering"

    const-string v3, "exception on ihtcPhoneInterface.requestSetMultiRABTrafficThrottling"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5093
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v2, "Tethering"

    const-string v3, "Could not get htcPhoneInterface!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showBtTetheredNotification(I)V
    .locals 9
    .parameter "icon"

    .prologue
    const/4 v8, 0x0

    .line 1101
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    if-nez v6, :cond_2

    .line 1102
    sget-boolean v6, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBooted:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_0
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I

    .line 1147
    :cond_1
    :goto_0
    return-void

    .line 1106
    :cond_2
    iput v8, p0, Lcom/android/server/connectivity/Tethering;->mBtPendingNotiIcon:I

    .line 1110
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1112
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_1

    .line 1116
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    if-eqz v6, :cond_3

    .line 1117
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eq v6, p1, :cond_1

    .line 1120
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1123
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1124
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1127
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1129
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1130
    .local v4, r:Landroid/content/res/Resources;
    const v6, 0x1040462

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1131
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x1040463

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1135
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    if-nez v6, :cond_4

    .line 1136
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    .line 1137
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 1139
    :cond_4
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iput p1, v6, Landroid/app/Notification;->icon:I

    .line 1140
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 1141
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 1142
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1143
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1145
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mBtTetheredNotification:Landroid/app/Notification;

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private showTetheredNotification(I)V
    .locals 17
    .parameter "icon"

    .prologue
    .line 1151
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    if-nez v12, :cond_2

    .line 1152
    sget-boolean v12, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v12, :cond_0

    sget-object v12, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mBooted:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I

    .line 1301
    :cond_1
    :goto_0
    return-void

    .line 1156
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/connectivity/Tethering;->mPendingNotiIcon:I

    .line 1162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 1163
    .local v11, wifimanager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1165
    const-string v12, "Tethering"

    const-string v13, "WiFiDisplay, not showTetheredNotification"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1171
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1173
    .local v5, notificationManager:Landroid/app/NotificationManager;
    if-eqz v5, :cond_1

    .line 1177
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "showTetheredNotification: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 1185
    .local v7, r:Landroid/content/res/Resources;
    const/16 v12, 0xb

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator0"

    aput-object v13, v10, v12

    const/4 v12, 0x1

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator1"

    aput-object v13, v10, v12

    const/4 v12, 0x2

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator2"

    aput-object v13, v10, v12

    const/4 v12, 0x3

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator3"

    aput-object v13, v10, v12

    const/4 v12, 0x4

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator4"

    aput-object v13, v10, v12

    const/4 v12, 0x5

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator5"

    aput-object v13, v10, v12

    const/4 v12, 0x6

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator6"

    aput-object v13, v10, v12

    const/4 v12, 0x7

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator7"

    aput-object v13, v10, v12

    const/16 v12, 0x8

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator8"

    aput-object v13, v10, v12

    const/16 v12, 0x9

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator9"

    aput-object v13, v10, v12

    const/16 v12, 0xa

    const-string v13, "zzzz_stat_notify_mobile_hotspot_indicator10"

    aput-object v13, v10, v12

    .line 1199
    .local v10, vzwIcons:[Ljava/lang/String;
    const/4 v12, 0x6

    new-array v9, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "icon_status_wifisharing_hdpi_0"

    aput-object v13, v9, v12

    const/4 v12, 0x1

    const-string v13, "icon_status_wifisharing_hdpi_1"

    aput-object v13, v9, v12

    const/4 v12, 0x2

    const-string v13, "icon_status_wifisharing_hdpi_2"

    aput-object v13, v9, v12

    const/4 v12, 0x3

    const-string v13, "icon_status_wifisharing_hdpi_3"

    aput-object v13, v9, v12

    const/4 v12, 0x4

    const-string v13, "icon_status_wifisharing_hdpi_4"

    aput-object v13, v9, v12

    const/4 v12, 0x5

    const-string v13, "icon_status_wifisharing_hdpi_5"

    aput-object v13, v9, v12

    .line 1206
    .local v9, tmoIcons:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    if-eqz v12, :cond_d

    .line 1207
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getAssocCount()I

    move-result v2

    .line 1208
    .local v2, count:I
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_5

    .line 1209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x2040246

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1238
    .local v8, title:Ljava/lang/CharSequence;
    :cond_4
    :goto_1
    const/4 v12, 0x1

    if-le v2, v12, :cond_c

    .line 1239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x20400b2

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1250
    .end local v2           #count:I
    .local v4, message:Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v12, :cond_f

    .line 1252
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "icon change: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v14, v14, Landroid/app/Notification;->icon:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v12, v12, Landroid/app/Notification;->icon:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_e

    .line 1256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v4, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v14, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13, v8, v4, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v12, v12, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    invoke-virtual {v5, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1210
    .end local v4           #message:Ljava/lang/CharSequence;
    .end local v8           #title:Ljava/lang/CharSequence;
    .restart local v2       #count:I
    :cond_5
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa8

    if-ne v12, v13, :cond_7

    .line 1211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x2040245

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1214
    .restart local v8       #title:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1215
    if-ltz v2, :cond_6

    const/16 v12, 0xa

    if-gt v2, v12, :cond_6

    .line 1217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget-object v13, v10, v2

    const-string v14, "drawable"

    const-string v15, "android"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_1

    .line 1218
    :cond_6
    const-string v12, "Tethering"

    const-string v13, "Hotspot Icon Warning: Client number over limit"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1221
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_7
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x51

    if-ne v12, v13, :cond_8

    .line 1222
    const v12, 0x1040506

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .restart local v8       #title:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1223
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_8
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x38

    if-ne v12, v13, :cond_9

    .line 1224
    const v12, 0x104054f

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .restart local v8       #title:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1226
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_9
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x9b

    if-ne v12, v13, :cond_b

    .line 1227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x2040245

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1228
    .restart local v8       #title:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1229
    if-ltz v2, :cond_a

    const/4 v12, 0x5

    if-gt v2, v12, :cond_a

    .line 1230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget-object v13, v9, v2

    const-string v14, "drawable"

    const-string v15, "com.htc.framework"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_1

    .line 1231
    :cond_a
    const-string v12, "Tethering"

    const-string v13, "Hotspot Icon Warning: Client number over limit"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1235
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x20400ab

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #title:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1241
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHtcRes:Landroid/content/res/Resources;

    const v13, 0x20400b1

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #message:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1244
    .end local v2           #count:I
    .end local v4           #message:Ljava/lang/CharSequence;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_d
    const v12, 0x1040462

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1245
    .restart local v8       #title:Ljava/lang/CharSequence;
    const v12, 0x1040463

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #message:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1262
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v12, v12, Landroid/app/Notification;->icon:I

    invoke-virtual {v5, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1265
    :cond_f
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1270
    .local v3, intent:Landroid/content/Intent;
    const-string v12, "com.htc.WifiRouter"

    const-string v13, "com.htc.WifiRouter.Intro"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    const/high16 v12, 0x4000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1274
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1285
    .local v6, pi:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-nez v12, :cond_10

    .line 1286
    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 1287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Landroid/app/Notification;->when:J

    .line 1289
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move/from16 v0, p1

    iput v0, v12, Landroid/app/Notification;->icon:I

    .line 1290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v13, v12, Landroid/app/Notification;->defaults:I

    and-int/lit8 v13, v13, -0x2

    iput v13, v12, Landroid/app/Notification;->defaults:I

    .line 1291
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v13, 0x2

    iput v13, v12, Landroid/app/Notification;->flags:I

    .line 1293
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa8

    if-ne v12, v13, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getAssocCount()I

    move-result v12

    const/4 v13, 0x1

    if-lt v12, v13, :cond_11

    .line 1295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v4, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1298
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13, v8, v4, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v12, v12, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    invoke-virtual {v5, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1296
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v8, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_3
.end method

.method private tetherUsb(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    .line 1563
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tetherUsb "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/String;

    .line 1567
    .local v4, ifaces:[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1572
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v0, v2

    .line 1573
    .local v3, iface:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1574
    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v6

    .line 1575
    .local v6, result:I
    :goto_1
    if-nez v6, :cond_1

    .line 1581
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #result:I
    :goto_2
    return-void

    .line 1568
    :catch_0
    move-exception v1

    .line 1569
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "Tethering"

    const-string v8, "Error listing Interfaces"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1574
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #iface:Ljava/lang/String;
    .restart local v5       #len$:I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 1572
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1580
    .end local v3           #iface:Ljava/lang/String;
    :cond_2
    const-string v7, "Tethering"

    const-string v8, "unable start or stop USB tethering"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public IsSupportFastDormancy()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_dormancy"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public checkDunRequired()V
    .locals 2

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 1791
    :goto_0
    return-void

    .line 1788
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 4973
    if-nez p2, :cond_0

    .line 5059
    :goto_0
    return-void

    .line 4977
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "android.permission.DUMP"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    .line 4979
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4985
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 4986
    :try_start_0
    const-string v20, "mUpstreamIfaceTypes: "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 4988
    .local v13, netType:Ljava/lang/Integer;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4996
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #netType:Ljava/lang/Integer;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 4991
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4992
    const-string v20, "Tether state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 4994
    .local v14, o:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 4996
    .end local v14           #o:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_3
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4997
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 5000
    const-string v20, "Usb Configuration:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5001
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v11, :cond_4

    aget-object v18, v3, v10

    .line 5002
    .local v18, usbReg:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5001
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 5004
    .end local v18           #usbReg:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5006
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 5007
    const-string v20, "WiFi Configuration:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_4
    if-ge v10, v11, :cond_6

    aget-object v19, v3, v10

    .line 5009
    .local v19, wifiReg:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5008
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 5011
    .end local v19           #wifiReg:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5013
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Tethering type: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    move/from16 v20, v0

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const-string v20, "true"

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->m3GDunOnlyWhenUsbOn:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5014
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5017
    const/4 v12, 0x0

    .line 5018
    .local v12, mHistArray:[Ljava/lang/Object;
    monitor-enter p0

    .line 5020
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mLogTether:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    .line 5024
    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5025
    if-eqz v12, :cond_b

    .line 5026
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 5028
    .local v4, dataTimeStamp:Ljava/util/Date;
    const-wide/16 v16, -0x1

    .line 5030
    .local v16, timeStamp:J
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v16

    .line 5033
    :goto_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Change History: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v12

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/connectivity/Tethering;->HTC_HISTORY_ENTRIES:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " entries (current 0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    move-object v3, v12

    .local v3, arr$:[Ljava/lang/Object;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_8
    if-ge v10, v11, :cond_c

    aget-object v15, v3, v10

    .local v15, oHist:Ljava/lang/Object;
    move-object v8, v15

    .line 5038
    check-cast v8, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;

    .line 5039
    .local v8, hist:Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
    const-string v2, ""

    .line 5040
    .local v2, argStr:Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v20, v20, v16

    iget-wide v0, v8, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->timeStamp:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 5041
    .local v5, date:Ljava/util/Date;
    if-eqz v8, :cond_a

    .line 5042
    iget-object v0, v8, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->args:[Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    iget-object v0, v8, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->args:[Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v7, v0

    .line 5043
    .local v7, hisargs:I
    :goto_9
    if-lez v7, :cond_a

    .line 5044
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v8, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->args:[Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5045
    const/4 v9, 0x1

    .local v9, i:I
    :goto_a
    if-ge v9, v7, :cond_a

    .line 5046
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v8, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->args:[Ljava/lang/Object;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5045
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 5013
    .end local v2           #argStr:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/Object;
    .end local v4           #dataTimeStamp:Ljava/util/Date;
    .end local v5           #date:Ljava/util/Date;
    .end local v7           #hisargs:I
    .end local v8           #hist:Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
    .end local v9           #i:I
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #mHistArray:[Ljava/lang/Object;
    .end local v15           #oHist:Ljava/lang/Object;
    .end local v16           #timeStamp:J
    :cond_8
    const-string v20, "false"

    goto/16 :goto_5

    .line 5021
    .restart local v12       #mHistArray:[Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 5022
    .local v6, ex6:Ljava/lang/Exception;
    :try_start_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Log Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 5024
    .end local v6           #ex6:Ljava/lang/Exception;
    :catchall_1
    move-exception v20

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v20

    .line 5042
    .restart local v2       #argStr:Ljava/lang/String;
    .restart local v3       #arr$:[Ljava/lang/Object;
    .restart local v4       #dataTimeStamp:Ljava/util/Date;
    .restart local v5       #date:Ljava/util/Date;
    .restart local v8       #hist:Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v15       #oHist:Ljava/lang/Object;
    .restart local v16       #timeStamp:J
    :cond_9
    const/4 v7, 0x0

    goto :goto_9

    .line 5050
    :cond_a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  [0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v8, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->timeStamp:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v8, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->event:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 5054
    .end local v2           #argStr:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/Object;
    .end local v4           #dataTimeStamp:Ljava/util/Date;
    .end local v5           #date:Ljava/util/Date;
    .end local v8           #hist:Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v15           #oHist:Ljava/lang/Object;
    .end local v16           #timeStamp:J
    :cond_b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Change History: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/connectivity/Tethering;->HTC_HISTORY_ENTRIES:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " entries"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5056
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    .line 5031
    .restart local v4       #dataTimeStamp:Ljava/util/Date;
    .restart local v16       #timeStamp:J
    :catch_1
    move-exception v20

    goto/16 :goto_7
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1844
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1845
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1846
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1847
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1848
    .local v2, key:Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1849
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1850
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1853
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1854
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1855
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1856
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1855
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1858
    :cond_2
    return-object v5
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 7
    .parameter "iface"

    .prologue
    const/4 v3, 0x1

    .line 968
    if-nez p1, :cond_0

    move v2, v3

    .line 985
    :goto_0
    return v2

    .line 972
    :cond_0
    const/4 v1, 0x0

    .line 973
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 974
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 975
    if-nez v1, :cond_2

    .line 981
    sget-boolean v2, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_1
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 985
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v2

    monitor-exit v4

    goto :goto_0

    .line 986
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1683
    const-string v2, ""

    .line 1684
    .local v2, btcid:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1685
    .local v0, blbtCid:Z
    const/4 v1, 0x1

    .line 1687
    .local v1, blbtNonCid:Z
    :try_start_0
    const-string v6, "ro.cid"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1688
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.bt.tetheringUI."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v0, v4

    .line 1689
    :goto_0
    const-string v6, "ro.bt.tetheringUI"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 1694
    :goto_1
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1695
    :cond_0
    sget-object v4, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 1699
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    if-nez v4, :cond_5

    .line 1700
    sget-boolean v4, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    const-string v5, "mTetherableBluetoothRegexs is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_2
    sget-object v4, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    .line 1705
    :goto_2
    return-object v4

    :cond_3
    move v0, v5

    .line 1688
    goto :goto_0

    :cond_4
    move v1, v5

    .line 1689
    goto :goto_1

    .line 1690
    :catch_0
    move-exception v3

    .line 1691
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "Tethering"

    const-string v5, "Exception happened when get SystemProperties(BT)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1703
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    sget-boolean v4, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTetherableBluetoothRegexs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_6
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    goto :goto_2
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1826
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1827
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1828
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1829
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1830
    .local v2, key:Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1831
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1832
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1835
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1836
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1837
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1838
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1837
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1840
    :cond_2
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1624
    const-string v3, ""

    .line 1625
    .local v3, usbcid:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1626
    .local v0, blusbCid:Z
    const/4 v1, 0x1

    .line 1628
    .local v1, blusbNonCid:Z
    :try_start_0
    const-string v6, "ro.cid"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1629
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.usb.tetheringUI."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v0, v4

    .line 1630
    :goto_0
    const-string v6, "ro.usb.tetheringUI"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 1635
    :goto_1
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1636
    :cond_0
    sget-object v4, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 1640
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    if-nez v4, :cond_5

    .line 1641
    sget-boolean v4, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    const-string v5, "mTetherableUsbRegexs is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_2
    sget-object v4, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    .line 1646
    :goto_2
    return-object v4

    :cond_3
    move v0, v5

    .line 1629
    goto :goto_0

    :cond_4
    move v1, v5

    .line 1630
    goto :goto_1

    .line 1631
    :catch_0
    move-exception v2

    .line 1632
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Tethering"

    const-string v5, "Exception happened when get SystemProperties(USB)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1644
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    sget-boolean v4, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTetherableUsbRegexs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_6
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    goto :goto_2
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 1652
    const-string v5, "wifi"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1653
    .local v4, wifib:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v3

    .line 1655
    .local v3, wifiService:Landroid/net/wifi/IWifiManager;
    sget-boolean v5, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caller PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", myPid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1658
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiDisplayRegexs:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    :goto_0
    return-object v5

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getTetherableWifiRegexs] error to getTetherableWifiRegexs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    .line 1666
    .local v2, isNEL:Ljava/lang/String;
    :try_start_1
    const-string v5, "ro.wifi.hotspotUI"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1670
    :goto_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1673
    :cond_2
    sget-boolean v5, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    const-string v6, "mTetherableWifiRegexs is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_3
    sget-object v5, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    goto :goto_0

    .line 1667
    :catch_1
    move-exception v1

    .line 1668
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "Tethering"

    const-string v6, "Exception : SystemProperties.get(CUSTOMIZE_HOTSPOTUI)"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1676
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    sget-boolean v5, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTetherableWifiRegexs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_5
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfacePairs()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1813
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1814
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1815
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1816
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1817
    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1821
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1822
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1795
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1796
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1797
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1798
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1799
    .local v2, key:Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1800
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1801
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1804
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1805
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1806
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1807
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1806
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1809
    :cond_2
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    .prologue
    .line 1733
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1734
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 1735
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1736
    .local v2, values:[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1737
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1738
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 1737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1740
    :cond_0
    monitor-exit v4

    .line 1741
    return-object v2

    .line 1740
    .end local v0           #i:I
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #values:[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleTetherIfaceChange()V
    .locals 2

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1867
    return-void
.end method

.method public htcConnectivityActionHandling(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 4129
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4131
    return-void
.end method

.method public htcNetworkAvalibilityChangeHandling(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "netInfo"

    .prologue
    .line 4167
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4169
    return-void
.end method

.method public htcNetworkSubtypeChange(Landroid/net/NetworkInfo;I)V
    .locals 4
    .parameter "netInfo"
    .parameter "prev_netSubtype"

    .prologue
    .line 4204
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4205
    return-void
.end method

.method public htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "register"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "internalIface"
    .parameter "externalIface"

    .prologue
    const/4 v4, 0x0

    .line 4670
    const/4 v1, 0x0

    .line 4671
    .local v1, value:I
    sget-boolean v2, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v2, :cond_0

    .line 4673
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/Object;

    .line 4674
    .local v0, mParams:[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v4

    .line 4675
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    .line 4676
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    .line 4677
    const/4 v2, 0x3

    aput-object p4, v0, v2

    .line 4678
    const/4 v2, 0x4

    aput-object p5, v0, v2

    .line 4679
    const/16 v2, 0x15

    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4681
    if-eqz p1, :cond_0

    .line 4682
    invoke-direct {p0, p4, p5, v4}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherAllow(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4683
    const/4 v1, 0x1

    .line 4687
    .end local v0           #mParams:[Ljava/lang/Object;
    :cond_0
    return v1
.end method

.method public htcRequestPermittedTether(Ljava/lang/Boolean;ZLjava/lang/Object;)I
    .locals 24
    .parameter "originCallFrom"
    .parameter "isThroughSystem"
    .parameter "requestType"

    .prologue
    .line 4393
    const/4 v13, 0x0

    .line 4394
    .local v13, requestAcceptable:Z
    const/4 v6, -0x1

    .line 4395
    .local v6, commandType:I
    const/4 v11, -0x1

    .line 4396
    .local v11, lanIf:I
    if-eqz p3, :cond_1

    .line 4397
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v19, p3

    .line 4398
    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-ltz v19, :cond_0

    move-object/from16 v19, p3

    .line 4399
    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v6, v0, 0xf0

    .line 4400
    sparse-switch v6, :sswitch_data_0

    .line 4406
    const/4 v6, -0x1

    .line 4409
    :sswitch_0
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    and-int/lit8 v11, v19, 0xf

    .line 4410
    const/16 v19, 0x3

    move/from16 v0, v19

    if-le v11, v0, :cond_4

    .line 4411
    const/4 v11, -0x1

    .line 4423
    :cond_0
    :goto_0
    if-ltz v6, :cond_1

    if-ltz v11, :cond_1

    .line 4424
    const/4 v13, 0x1

    .line 4427
    :cond_1
    if-nez v13, :cond_6

    .line 4428
    sget-boolean v19, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v19, :cond_2

    .line 4429
    sget-object v19, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Permitted Tether request failed - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") from="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    :cond_2
    const/16 v17, 0x1

    .line 4603
    :cond_3
    :goto_1
    return v17

    .line 4413
    :cond_4
    const/16 v19, 0x20

    move/from16 v0, v19

    if-eq v6, v0, :cond_0

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_0

    .line 4415
    const/4 v11, -0x1

    goto :goto_0

    .line 4419
    .restart local p3
    :cond_5
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 4420
    const/16 v6, 0x10

    .line 4421
    check-cast p3, Ljava/lang/String;

    .end local p3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I

    move-result v11

    goto :goto_0

    .line 4434
    :cond_6
    const/16 v17, 0x0

    .line 4442
    .local v17, value:I
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v14, v0, [I

    .line 4443
    .local v14, requestList:[I
    const/4 v15, 0x0

    .line 4445
    .local v15, requestPermissionCheck:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4446
    const/4 v8, 0x1

    .line 4447
    .local v8, currIfRequstedByAp:Z
    const/4 v7, -0x1

    .line 4448
    .local v7, currIfCheckingStatus:I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v11, v0, :cond_7

    .line 4449
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    aget-boolean v8, v19, v11

    .line 4450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    aget v7, v19, v11

    .line 4452
    :cond_7
    const-string v19, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Permitted Tether request - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ") from="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v12, v0, [Ljava/lang/Object;

    .line 4457
    .local v12, mParams:[Ljava/lang/Object;
    const/16 v19, 0x0

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v12, v19

    .line 4458
    const/16 v19, 0x1

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v12, v19

    .line 4459
    const/16 v19, 0x2

    aput-object p1, v12, v19

    .line 4460
    const/16 v19, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v12, v19

    .line 4461
    const/16 v19, 0x4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v12, v19

    .line 4462
    const/16 v19, 0x5

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v21, v12, v19

    .line 4463
    const/16 v19, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 4466
    if-nez p2, :cond_e

    .line 4467
    sget-boolean v19, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v19, :cond_d

    .line 4468
    sparse-switch v6, :sswitch_data_1

    .line 4562
    :cond_8
    :goto_2
    sget-boolean v19, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v19, :cond_9

    if-eqz v15, :cond_9

    .line 4563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    array-length v0, v14

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4565
    :cond_9
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4567
    sget-boolean v19, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v19, :cond_3

    if-eqz v15, :cond_3

    .line 4570
    const/4 v5, 0x1

    .line 4571
    .local v5, bIsConnectionAvailable:Z
    sget v18, Lcom/android/server/connectivity/Tethering;->MAX_WAIT_CONNECTION_READY_TIME:I

    .line 4573
    .local v18, wait_time:I
    const-string v19, "connectivity"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 4574
    .local v4, b:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v16

    .line 4577
    .local v16, service:Landroid/net/IConnectivityManager;
    if-eqz v16, :cond_11

    .line 4578
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 4579
    .local v10, info:Landroid/net/NetworkInfo;
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v19

    if-nez v19, :cond_b

    .line 4580
    sget-boolean v19, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v19, :cond_a

    .line 4581
    sget-object v19, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    const-string v20, "postpone tether permission check request due to connection is not ready"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4583
    :cond_a
    const/4 v5, 0x0

    .line 4594
    .end local v10           #info:Landroid/net/NetworkInfo;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    .line 4596
    if-eqz v5, :cond_12

    .line 4597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 4470
    .end local v4           #b:Landroid/os/IBinder;
    .end local v5           #bIsConnectionAvailable:Z
    .end local v16           #service:Landroid/net/IConnectivityManager;
    .end local v18           #wait_time:I
    :sswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x1

    aput-boolean v21, v19, v11

    .line 4471
    if-eqz v7, :cond_8

    .line 4472
    const/16 v17, 0x2

    .line 4473
    move/from16 v0, v17

    if-eq v7, v0, :cond_8

    .line 4474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    aput v17, v19, v11

    .line 4475
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 4480
    :sswitch_2
    if-nez v8, :cond_c

    .line 4481
    const/16 v17, 0x3

    .line 4486
    :goto_4
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_8

    .line 4487
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 4484
    :cond_c
    move/from16 v17, v7

    goto :goto_4

    .line 4491
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-boolean v21, v19, v11

    .line 4492
    const/16 v17, 0x3

    .line 4493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    aput v17, v19, v11

    goto/16 :goto_2

    .line 4565
    .end local v12           #mParams:[Ljava/lang/Object;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 4498
    .restart local v12       #mParams:[Ljava/lang/Object;
    :cond_d
    sparse-switch v6, :sswitch_data_2

    goto/16 :goto_2

    .line 4500
    :sswitch_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x1

    aput-boolean v21, v19, v11

    goto/16 :goto_2

    .line 4503
    :sswitch_5
    if-nez v8, :cond_8

    .line 4504
    const/16 v17, 0x3

    goto/16 :goto_2

    .line 4508
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-boolean v21, v19, v11

    .line 4509
    const/16 v17, 0x3

    goto/16 :goto_2

    .line 4515
    :cond_e
    sget-boolean v19, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v19, :cond_10

    .line 4516
    sparse-switch v6, :sswitch_data_3

    goto/16 :goto_2

    .line 4518
    :sswitch_7
    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 4520
    if-eqz v7, :cond_8

    .line 4521
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 4525
    :cond_f
    const/16 v17, 0x2

    .line 4526
    move/from16 v0, v17

    if-eq v7, v0, :cond_8

    .line 4527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    aput v17, v19, v11

    .line 4528
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 4533
    :sswitch_8
    move/from16 v17, v7

    .line 4534
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_8

    .line 4535
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 4539
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-boolean v21, v19, v11

    .line 4540
    const/16 v17, 0x3

    .line 4541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    move-object/from16 v19, v0

    aput v17, v19, v11

    goto/16 :goto_2

    .line 4546
    :cond_10
    sparse-switch v6, :sswitch_data_4

    goto/16 :goto_2

    .line 4548
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x1

    aput-boolean v21, v19, v11

    goto/16 :goto_2

    .line 4551
    :sswitch_b
    if-nez v8, :cond_8

    .line 4552
    const/16 v17, 0x3

    goto/16 :goto_2

    .line 4556
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherFromApp:[Z

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-boolean v21, v19, v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4557
    const/16 v17, 0x3

    goto/16 :goto_2

    .line 4586
    .restart local v4       #b:Landroid/os/IBinder;
    .restart local v5       #bIsConnectionAvailable:Z
    .restart local v16       #service:Landroid/net/IConnectivityManager;
    .restart local v18       #wait_time:I
    :cond_11
    :try_start_4
    sget-object v19, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    const-string v20, "service is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 4588
    :catch_0
    move-exception v9

    .line 4589
    .local v9, e:Ljava/lang/Exception;
    sget-object v19, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    const-string v20, "Exception to get connectivity service"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4599
    .end local v9           #e:Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    move-object/from16 v20, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 4400
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch

    .line 4468
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
    .end sparse-switch

    .line 4498
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch

    .line 4516
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x20 -> :sswitch_8
        0x40 -> :sswitch_9
    .end sparse-switch

    .line 4546
    :sswitch_data_4
    .sparse-switch
        0x10 -> :sswitch_a
        0x20 -> :sswitch_b
        0x40 -> :sswitch_c
    .end sparse-switch
.end method

.method public htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "iface"
    .parameter "permission"

    .prologue
    .line 4691
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 4692
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 4693
    .local v0, parms:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4694
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 4695
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4697
    .end local v0           #parms:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 9
    .parameter "iface"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 722
    new-array v1, v4, [Ljava/lang/Object;

    .line 723
    .local v1, mParams:[Ljava/lang/Object;
    aput-object p1, v1, v5

    .line 724
    invoke-direct {p0, v6, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 726
    if-nez p1, :cond_0

    .line 775
    :goto_0
    return-void

    .line 730
    :cond_0
    const/4 v0, 0x0

    .line 731
    .local v0, found:Z
    const/4 v3, 0x0

    .line 732
    .local v3, usb:Z
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    .line 733
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 734
    const/4 v0, 0x1

    .line 736
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 737
    const/4 v0, 0x1

    .line 738
    const/4 v3, 0x1

    .line 740
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 741
    const/4 v0, 0x1

    .line 743
    :cond_3
    if-nez v0, :cond_4

    .line 744
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not a tetherable iface, ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    monitor-exit v6

    goto :goto_0

    .line 771
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 748
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 751
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/4 v7, 0x4

    new-array v1, v7, [Ljava/lang/Object;

    .line 752
    const/4 v7, 0x0

    aput-object p1, v1, v7

    .line 753
    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v7

    .line 754
    const/4 v7, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v7

    .line 755
    const/4 v7, 0x3

    if-eqz v2, :cond_6

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v7

    .line 756
    const/4 v4, 0x3

    invoke-direct {p0, v4, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 759
    if-eqz v2, :cond_7

    .line 764
    sget-boolean v4, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "active iface ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") reported as added, ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_5
    monitor-exit v6

    goto/16 :goto_0

    :cond_6
    move v4, v5

    .line 755
    goto :goto_1

    .line 768
    :cond_7
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v2           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, p1, v4, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 769
    .restart local v2       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 771
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interfaceAdded :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 625
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 626
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 7
    .parameter "iface"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 780
    if-nez p1, :cond_1

    .line 782
    const/4 v2, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 784
    sget-boolean v2, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    const-string v3, "remove null iface"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    sget-boolean v4, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove iface:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_2
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interfaceRemoving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 796
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 799
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    .line 800
    .local v0, mParams:[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object p1, v0, v5

    .line 801
    const/4 v5, 0x1

    if-eqz v1, :cond_3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v5

    .line 802
    const/4 v2, 0x5

    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 805
    if-nez v1, :cond_4

    .line 811
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attempting to remove unknown iface ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "), ignoring"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    monitor-exit v4

    goto :goto_0

    .line 822
    .end local v0           #mParams:[Ljava/lang/Object;
    .end local v1           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #mParams:[Ljava/lang/Object;
    .restart local v1       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_3
    move v2, v3

    .line 801
    goto :goto_1

    .line 816
    :cond_4
    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 817
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceRemoved "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 10
    .parameter "iface"
    .parameter "up"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 562
    new-array v1, v6, [Ljava/lang/Object;

    .line 563
    .local v1, mParams:[Ljava/lang/Object;
    aput-object p1, v1, v5

    .line 564
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    .line 565
    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 567
    if-nez p1, :cond_0

    .line 617
    :goto_0
    return-void

    .line 571
    :cond_0
    const/4 v0, 0x0

    .line 572
    .local v0, found:Z
    const/4 v3, 0x0

    .line 573
    .local v3, usb:Z
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    .line 574
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 575
    const/4 v0, 0x1

    .line 582
    :cond_1
    :goto_1
    if-nez v0, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 576
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 577
    const/4 v0, 0x1

    .line 578
    const/4 v3, 0x1

    goto :goto_1

    .line 579
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 580
    const/4 v0, 0x1

    goto :goto_1

    .line 585
    :cond_4
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interfaceStatusChanged "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 591
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/4 v7, 0x5

    new-array v1, v7, [Ljava/lang/Object;

    .line 592
    const/4 v7, 0x0

    aput-object p1, v1, v7

    .line 593
    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v7

    .line 594
    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v7

    .line 595
    const/4 v7, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v1, v7

    .line 596
    const/4 v7, 0x4

    if-eqz v2, :cond_6

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v7

    .line 597
    const/4 v4, 0x1

    invoke-direct {p0, v4, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 600
    if-eqz p2, :cond_7

    .line 601
    if-nez v2, :cond_5

    .line 602
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v2           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, p1, v4, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 603
    .restart local v2       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 616
    :cond_5
    :goto_3
    monitor-exit v6

    goto/16 :goto_0

    :cond_6
    move v4, v5

    .line 596
    goto :goto_2

    .line 607
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 610
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore interface down for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 611
    :cond_8
    if-eqz v2, :cond_5

    .line 612
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 613
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .locals 7
    .parameter "iface"

    .prologue
    const/4 v4, 0x0

    .line 699
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 701
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 703
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    monitor-exit v5

    .line 709
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #regex:Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 702
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    .end local v3           #regex:Ljava/lang/String;
    :cond_2
    monitor-exit v5

    goto :goto_1

    .line 706
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isWifi(Ljava/lang/String;)Z
    .locals 12
    .parameter "iface"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 646
    const-string v9, "wifi"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 647
    .local v6, wifib:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 650
    .local v5, wifiService:Landroid/net/wifi/IWifiManager;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 651
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] getHotspotEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v11}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 653
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] getWifidisplayApEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    if-eqz p1, :cond_0

    const-string v9, "wifi.softapconcurrent.interface"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 655
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] iface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " && wifi.softapconcurrent.interface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wifi.softapconcurrent.interface"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_0
    return v7

    .line 658
    :cond_0
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] iface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " && wifi.softapconcurrent.interface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wifi.softapconcurrent.interface"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 659
    goto :goto_0

    .line 662
    :cond_1
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] getWifidisplayApEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    if-eqz p1, :cond_2

    const-string v9, "wifi.softap.interface"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 664
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] iface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " && wifi.softap.interface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wifi.softap.interface"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 675
    :catch_0
    move-exception v1

    .line 676
    .local v1, e:Landroid/os/RemoteException;
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] error to getHotspotEnabled:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-eqz p1, :cond_6

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 685
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v9

    .line 686
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 687
    .local v4, regex:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    monitor-exit v9

    goto/16 :goto_0

    .line 690
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #regex:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 667
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_2
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] iface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " && wifi.softap.interface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wifi.softap.interface"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 668
    goto/16 :goto_0

    .line 672
    :cond_3
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isWifi] getHotspotEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v11}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v7, v8

    .line 673
    goto/16 :goto_0

    .line 686
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #e:Landroid/os/RemoteException;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 689
    .end local v4           #regex:Ljava/lang/String;
    :cond_5
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v7, v8

    goto/16 :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_6
    move v7, v8

    .line 693
    goto/16 :goto_0
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "limitName"
    .parameter "iface"

    .prologue
    .line 825
    return-void
.end method

.method public setFastDormancy(I)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 5173
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->IsSupportFastDormancy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5174
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFastDormancy enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5176
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "htctelephony"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    .line 5178
    .local v1, ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    if-eqz v1, :cond_1

    .line 5180
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2, p1}, Lcom/htc/service/HtcTelephonyManager;->requestSetFastDormancy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5188
    .end local v1           #ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 5181
    .restart local v1       #ihtcPhoneInterface:Lcom/htc/service/HtcTelephonyManager;
    :catch_0
    move-exception v0

    .line 5182
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Tethering"

    const-string v3, "exception on ihtcPhoneInterface.requestSetFastDormancy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5185
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v2, "Tethering"

    const-string v3, "Could not get htcPhoneInterface!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUsbTethering(Z)I
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    .line 1709
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUsbTethering("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1712
    .local v0, usbManager:Landroid/hardware/usb/UsbManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1713
    if-eqz p1, :cond_1

    .line 1714
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v1, :cond_0

    .line 1715
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 1727
    :goto_0
    monitor-exit v2

    .line 1728
    return v4

    .line 1717
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    .line 1718
    const-string v1, "rndis"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1727
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1721
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 1722
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v1, :cond_2

    .line 1723
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1725
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 11
    .parameter "iface"

    .prologue
    const/4 v7, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 828
    const-string v4, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tethering "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    if-nez p1, :cond_0

    move v5, v6

    .line 921
    :goto_0
    return v5

    .line 836
    :cond_0
    const/4 v1, 0x0

    .line 837
    .local v1, found:Z
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 838
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 839
    const/4 v1, 0x1

    .line 841
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 842
    const/4 v1, 0x1

    .line 844
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 845
    const/4 v1, 0x1

    .line 847
    :cond_3
    if-nez v1, :cond_4

    .line 848
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not allowed to be tethered"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    monitor-exit v8

    move v5, v6

    goto :goto_0

    .line 851
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    const/4 v3, 0x0

    .line 855
    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 856
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v3, v0

    .line 857
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 860
    new-array v2, v7, [Ljava/lang/Object;

    .line 861
    .local v2, mParams:[Ljava/lang/Object;
    aput-object p1, v2, v5

    .line 862
    if-nez v3, :cond_5

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v6

    .line 863
    if-nez v3, :cond_6

    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v10

    .line 864
    const/4 v8, 0x3

    new-instance v9, Ljava/lang/Integer;

    if-nez v3, :cond_7

    const/4 v4, -0x1

    :goto_3
    invoke-direct {v9, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v2, v8

    .line 865
    const/4 v4, 0x6

    invoke-direct {p0, v4, v2}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 868
    if-nez v3, :cond_8

    .line 873
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to Tether an unknown iface :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 875
    goto/16 :goto_0

    .line 851
    .end local v2           #mParams:[Ljava/lang/Object;
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 857
    .restart local v3       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 862
    .restart local v2       #mParams:[Ljava/lang/Object;
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v4

    goto :goto_1

    .line 863
    :cond_6
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v4

    goto :goto_2

    .line 864
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v4

    goto :goto_3

    .line 877
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v4

    if-nez v4, :cond_9

    .line 882
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to Tether an unavailable iface :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 884
    goto/16 :goto_0

    .line 920
    :cond_9
    invoke-virtual {v3, v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 9
    .parameter "iface"

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 925
    const-string v3, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Untethering "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    if-nez p1, :cond_0

    move v4, v5

    .line 963
    :goto_0
    return v4

    .line 931
    :cond_0
    const/4 v2, 0x0

    .line 932
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    .line 933
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v2, v0

    .line 934
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    new-array v1, v8, [Ljava/lang/Object;

    .line 938
    .local v1, mParams:[Ljava/lang/Object;
    aput-object p1, v1, v4

    .line 939
    if-nez v2, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v5

    .line 940
    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    if-nez v2, :cond_3

    const/4 v3, -0x1

    :goto_2
    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v1, v6

    .line 941
    const/4 v3, 0x7

    invoke-direct {p0, v3, v1}, Lcom/android/server/connectivity/Tethering;->addToHtcTetherHistory(I[Ljava/lang/Object;)V

    .line 944
    if-nez v2, :cond_4

    .line 949
    sget-boolean v3, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to Untether an unknown iface :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ignoring"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v5

    .line 951
    goto :goto_0

    .line 934
    .end local v1           #mParams:[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 939
    .restart local v1       #mParams:[Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v3

    goto :goto_1

    .line 940
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v3

    goto :goto_2

    .line 953
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 958
    sget-boolean v3, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to Untethered an errored iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    .line 962
    :cond_6
    invoke-virtual {v2, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method updateConfiguration()V
    .locals 20

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1070038

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 474
    .local v13, tetherableUsbRegexs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1070039

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 476
    .local v14, tetherableWifiRegexs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x107003a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 478
    .local v12, tetherableBluetoothRegexs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x107003d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    .line 481
    .local v10, ifaceTypes:[I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v15, upstreamIfaceTypes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object v2, v10

    .local v2, arr$:[I
    array-length v11, v2

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_0

    aget v8, v2, v9

    .line 483
    .local v8, i:I
    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v15 .. v16}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 486
    .end local v8           #i:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 487
    :try_start_0
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 488
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 489
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiDisplayRegexs:[Ljava/lang/String;

    .line 490
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 491
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    .line 492
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    const-string v6, ""

    .line 498
    .local v6, cid:Ljava/lang/String;
    const/4 v4, 0x1

    .line 499
    .local v4, blHotspotCid:Z
    const/4 v5, 0x1

    .line 502
    .local v5, blHotspotNonCid:Z
    :try_start_1
    const-string v16, "ro.cid"

    const-string v17, ""

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 504
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ro.wifi.hotspotUI."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/4 v4, 0x1

    .line 505
    :goto_1
    const-string v16, "Tethering"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "blHotspotCid:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v16, "ro.wifi.hotspotUI"

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    const/4 v5, 0x1

    .line 515
    :goto_2
    const-string v16, "Tethering"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "blHotSpotNonCid:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    .line 517
    :cond_1
    sget-object v16, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 520
    :cond_2
    const-string v16, "ro.ril.multirab.throttling"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    const/4 v3, 0x1

    .line 521
    .local v3, bSetPropertyMultiRAB:Z
    :goto_3
    const-string v16, "Tethering"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "bSetPropertyMultiRAB:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    sget-boolean v16, Lcom/android/server/connectivity/Tethering;->DISABLE_MULTI_RAB_TRAFFIC_support:Z

    if-nez v16, :cond_3

    .line 523
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_3

    .line 524
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/server/connectivity/Tethering;->DISABLE_MULTI_RAB_TRAFFIC_support:Z

    .line 528
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 529
    sget-object v16, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 536
    :cond_4
    if-eqz v6, :cond_5

    const-string v16, "UTSI_040"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 537
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->m3GDunOnlyWhenUsbOn:Z

    .line 539
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherInit()V

    .line 540
    sget-boolean v16, Lcom/android/server/connectivity/Tethering;->DBG_DETAIL:Z

    if-eqz v16, :cond_6

    .line 541
    sget-object v17, Lcom/android/server/connectivity/Tethering;->TAG_DETAIL:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DHCP "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ", DUN="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    move/from16 v16, v0

    const/16 v19, 0x4

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const-string v16, "true"

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->m3GDunOnlyWhenUsbOn:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ", upif="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->dumpStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 551
    return-void

    .line 492
    .end local v3           #bSetPropertyMultiRAB:Z
    .end local v4           #blHotspotCid:Z
    .end local v5           #blHotspotNonCid:Z
    .end local v6           #cid:Ljava/lang/String;
    :catchall_0
    move-exception v16

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v16

    .line 504
    .restart local v4       #blHotspotCid:Z
    .restart local v5       #blHotspotNonCid:Z
    .restart local v6       #cid:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 507
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 509
    :catch_0
    move-exception v7

    .line 510
    .local v7, e:Ljava/lang/Exception;
    const-string v16, "Tethering"

    const-string v17, "Exception happened when get SystemProperties"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 520
    .end local v7           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 541
    .restart local v3       #bSetPropertyMultiRAB:Z
    :cond_a
    const-string v16, "false"

    goto/16 :goto_4
.end method
