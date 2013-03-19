.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$1;,
        Lcom/android/server/TelephonyRegistry$RegistryInfo;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCallForwarding:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallState:I

.field private mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

.field private mCellLocation:Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionInterfaceName:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

.field private mMessageWaiting:I

.field private mOtaspMode:I

.field private mPreciseCallState:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mServiceStateData:[Landroid/telephony/ServiceState;

.field private mServiceStateVoice:[Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 141
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 144
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    .line 147
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 149
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 151
    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    .line 152
    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    .line 155
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 162
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    .line 164
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 166
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 168
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 170
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 172
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 174
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 182
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 188
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 205
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 209
    .local v0, location:Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 212
    :cond_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    .line 216
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    :cond_1
    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    invoke-direct {v1, p0, v3}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .line 220
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    .line 228
    :cond_3
    :goto_0
    return-void

    .line 222
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    new-instance v1, Lcom/android/server/TelephonyRegistry$RegistryInfo;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;-><init>(Lcom/android/server/TelephonyRegistry;I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    goto :goto_0
.end method

.method private HtcBroadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"
    .parameter "errorCause"
    .parameter "apnCarrier"

    .prologue
    const/4 v4, 0x1

    .line 969
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 970
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    if-nez p2, :cond_0

    .line 972
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 974
    :cond_0
    if-eqz p3, :cond_1

    .line 975
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    :cond_1
    if-eqz p6, :cond_2

    .line 978
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 979
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 981
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    .end local v0           #iface:Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 985
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 987
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 989
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const-string v2, "entitleError"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 993
    if-eqz p10, :cond_5

    .line 994
    const-string v2, "apnCarrier"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    :cond_5
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 998
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1833
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    .line 1835
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneType"

    .prologue
    .line 1839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1841
    .local v0, ident:J
    if-nez p1, :cond_3

    .line 1842
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1849
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1854
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1855
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1857
    :cond_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1858
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1864
    :goto_1
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1865
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1866
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1867
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1870
    :cond_1
    const-string v3, "phone_type"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1879
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1880
    return-void

    .line 1844
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1846
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1849
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1860
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_4
    const-string v3, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1873
    :cond_5
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1874
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1875
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1876
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 1944
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1946
    return-void
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "reason"
    .parameter "apnType"
    .parameter "phoneType"

    .prologue
    .line 1950
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1952
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1955
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1956
    :cond_0
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1957
    const-string v1, "phone_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1960
    :cond_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1961
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .locals 11
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"

    .prologue
    .line 1895
    const/4 v9, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;I)V

    .line 1899
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;I)V
    .locals 5
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"
    .parameter "apnCarrier"
    .parameter "phoneType"

    .prologue
    const/4 v4, 0x1

    .line 1908
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1909
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    if-nez p2, :cond_0

    .line 1911
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1913
    :cond_0
    if-eqz p3, :cond_1

    .line 1914
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1916
    :cond_1
    if-eqz p6, :cond_2

    .line 1917
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1918
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1919
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1920
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1923
    .end local v0           #iface:Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 1924
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1926
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1928
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1929
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1931
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1932
    :cond_5
    const-string v2, "phone_type"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1935
    :cond_6
    if-eqz p9, :cond_7

    .line 1936
    const-string v2, "apnCarrier"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1939
    :cond_7
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1940
    return-void
.end method

.method private broadcastDataConnectionStateChangedLTE(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 4
    .parameter "anyDataConnectionState"
    .parameter "apnType"
    .parameter "ipVersion"
    .parameter "state"
    .parameter "apn"
    .parameter "interfaceName"
    .parameter "ipAddress"
    .parameter "gwAddress"
    .parameter "isDataConnectivityPossible"
    .parameter "realipstate"
    .parameter "reason"

    .prologue
    .line 2040
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM]broadcastDataConnectionStateChangedLTE() ++  anyDataConnectionState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interfaceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDataConnectivityPossible= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gwAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2044
    .local v0, intent:Landroid/content/Intent;
    if-nez p9, :cond_0

    .line 2045
    const-string v1, "networkUnvailable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2047
    :cond_0
    if-eqz p11, :cond_1

    .line 2048
    const-string v1, "reason"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2051
    :cond_1
    const-string v1, "state"

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2052
    const-string v1, "apn"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2054
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2

    const-string v1, "verizon"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2057
    const-string v1, "TelephonyRegistry"

    const-string v2, "[QCTMM][BCST]Special OpenMobile design for dun type"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const-string v1, "apnType"

    const-string v2, "dun"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2059
    const-string p2, "dun"

    .line 2067
    :goto_0
    const-string v1, "ipVersion"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2068
    const-string v1, "apnTypeState"

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2069
    const-string v1, "iface"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2070
    const-string v1, "ipAddress"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2071
    const-string v1, "igwaddress"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2073
    const-string v1, "TelephonyRegistry"

    const-string v2, "[QCTMM][BCST]---------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM][BCST] STATE_CHANGE_REASON_KEY(reason)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM][BCST] DATA_APN_KEY(apn)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",DATA_APN_TYPES_KEY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM][BCST] STATE_KEY(state) we made v4/v6 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM][BCST] DATA_APN_TYPE_STATE(state) we made v4/v6 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM][BCST] DATA_IPVERSION_REAL_STATE_KEY(realipstate)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p10}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ipVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const-string v1, "TelephonyRegistry"

    const-string v2, "[QCTMM][BCST] ---------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    const-string v1, "realipstate"

    invoke-static {p10}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2088
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM]broadcastDataConnectionStateChangedLTE()  -- anyDataConnectionState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interfaceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apn[]= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gwAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2090
    return-void

    .line 2061
    :cond_2
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1746
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    .line 1747
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 1751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1753
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1762
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1763
    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1764
    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1765
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    :goto_1
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1771
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1772
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1773
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1775
    const-string v4, "phone_type"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1783
    :goto_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1784
    return-void

    .line 1757
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1767
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_1
    const-string v4, "android.intent.action.SERVICE_STATE_EXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1778
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1779
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1780
    .restart local v0       #data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1781
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    .line 1754
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 1788
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    .line 1790
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 6
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    const/high16 v5, 0x2000

    .line 1794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1796
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1805
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1806
    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1807
    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1808
    const-string v4, "android.intent.action.SIG_STR"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1814
    :goto_1
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1815
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1816
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1817
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1819
    const-string v4, "phone_type"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1828
    :goto_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1829
    return-void

    .line 1800
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1810
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_1
    const-string v4, "android.intent.action.SIG_STR_EXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1822
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1823
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1824
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1825
    .restart local v0       #data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1826
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    .line 1797
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .parameter "events"

    .prologue
    const/4 v2, 0x0

    .line 1975
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    :cond_0
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_1

    .line 1982
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    :cond_1
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1966
    const/4 v1, 0x1

    .line 1971
    :goto_0
    return v1

    .line 1968
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, msg:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateServiceStateList([Landroid/telephony/ServiceState;)[Landroid/telephony/ServiceState;
    .locals 4
    .parameter "serviceStateList"

    .prologue
    .line 1195
    if-nez p1, :cond_1

    .line 1196
    const/4 v0, 0x0

    .line 1202
    :cond_0
    return-object v0

    .line 1198
    :cond_1
    array-length v2, p1

    new-array v0, v2, [Landroid/telephony/ServiceState;

    .line 1199
    .local v0, generatedList:[Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1200
    new-instance v2, Landroid/telephony/ServiceState;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    aput-object v2, v0, v1

    .line 1199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    .line 1988
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1989
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1990
    .local v0, b:Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1992
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1994
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 713
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 714
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 715
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 716
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 717
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 718
    monitor-exit v3

    .line 722
    :goto_1
    return-void

    .line 715
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V
    .locals 3
    .parameter "r"
    .parameter "cellLocation"
    .parameter "phoneType"

    .prologue
    .line 1685
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1686
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    .line 1688
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1692
    :goto_0
    return-void

    .line 1689
    :catch_0
    move-exception v0

    .line 1690
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V
    .locals 3
    .parameter "r"
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    .line 1696
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1697
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 1699
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    :goto_0
    return-void

    .line 1700
    :catch_0
    move-exception v0

    .line 1701
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public HtcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZILjava/lang/String;)V
    .locals 17
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"
    .parameter "errorCause"
    .parameter "apnCarrier"

    .prologue
    .line 1006
    const-string v2, "notifyDataConnection()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1010
    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDataConnection: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDataConnectivityPossible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1016
    const/4 v15, 0x0

    .line 1017
    .local v15, modified:Z
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 1018
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    .line 1021
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1022
    const/4 v15, 0x1

    .line 1036
    :cond_1
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 1037
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 1038
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 1039
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 1040
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_2

    .line 1041
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 1043
    const/4 v15, 0x1

    .line 1045
    :cond_2
    if-eqz v15, :cond_6

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 1051
    .local v16, r:Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 1053
    :try_start_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1055
    :catch_0
    move-exception v13

    .line 1056
    .local v13, ex:Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1062
    .end local v13           #ex:Landroid/os/RemoteException;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1026
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1028
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1029
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1060
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1062
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    .line 1063
    invoke-direct/range {v2 .. v12}, Lcom/android/server/TelephonyRegistry;->HtcBroadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1710
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    :goto_0
    return-void

    .line 1716
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1717
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1718
    .local v2, recordCount:I
    const-string v3, "last known state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallIncomingNumber="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mServiceState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSignalStrength="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMessageWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallForwarding="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionPossible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionReason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionApn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkProperties="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellLocation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registrations: count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1735
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1737
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v2           #recordCount:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #recordCount:I
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public htcNotifyCallDisconnected(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 1089
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 1092
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1094
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 1095
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1096
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 1098
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnected(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1094
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1104
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public htcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnTypes"
    .parameter "interfaceName"
    .parameter "networkType"
    .parameter "gateway"
    .parameter "ipAddress"
    .parameter "stateTimeStamp"

    .prologue
    .line 1084
    return-void
.end method

.method public htcNotifyPreciseCallStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 1111
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1115
    :cond_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    .line 1117
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1119
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 1120
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1121
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    .line 1123
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:I

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1119
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1129
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public htcNotifySeparateServiceState([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "voiceState"
    .parameter "dataState"

    .prologue
    .line 781
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    const-string v2, "notifySeparateServiceState()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 788
    if-eqz p1, :cond_2

    .line 789
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    .line 791
    :cond_2
    if-eqz p2, :cond_3

    .line 792
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    .line 794
    :cond_3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_5

    .line 795
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 796
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_4

    .line 797
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    .line 794
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 800
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    monitor-exit v3

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 14
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"

    .prologue
    .line 234
    if-eqz p3, :cond_46

    .line 236
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 238
    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 240
    const/4 v6, 0x0

    .line 242
    .local v6, r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 243
    .local v2, b:Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 244
    .local v1, N:I
    const/4 v5, 0x0

    .local v5, i:I
    move-object v7, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .local v7, r:Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v5, v1, :cond_1e

    .line 245
    :try_start_1
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v9, :cond_1d

    .line 256
    :goto_1
    iget v9, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v9, v9, p3

    and-int v8, p3, v9

    .line 257
    .local v8, send:I
    move/from16 v0, p3

    iput v0, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 258
    if-eqz p4, :cond_1c

    .line 259
    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_2

    .line 263
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_22

    .line 266
    :cond_0
    :try_start_3
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 267
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 279
    :cond_1
    :goto_2
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V

    .line 283
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 284
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 311
    :cond_2
    :goto_3
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_3

    .line 312
    :try_start_4
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateVoice:[Landroid/telephony/ServiceState;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mServiceStateData:[Landroid/telephony/ServiceState;

    invoke-virtual {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    :cond_3
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_6

    .line 318
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 319
    :cond_4
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 320
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .line 322
    .local v4, gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_5

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_5
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 349
    :cond_6
    :goto_4
    and-int/lit8 v9, p3, 0x4

    if-eqz v9, :cond_9

    .line 353
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 355
    :cond_7
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 356
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 368
    :cond_8
    :goto_5
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V

    .line 372
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 373
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 404
    :cond_9
    :goto_6
    and-int/lit8 v9, p3, 0x8

    if-eqz v9, :cond_c

    .line 409
    :try_start_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_31

    .line 419
    :cond_a
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 420
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 431
    :cond_b
    :goto_7
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    .line 435
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_30

    .line 436
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 457
    :cond_c
    :goto_8
    and-int/lit8 v9, p3, 0x10

    if-eqz v9, :cond_f

    .line 461
    :try_start_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v9

    if-eqz v9, :cond_35

    .line 464
    :cond_d
    :try_start_9
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 465
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    .line 477
    :cond_e
    :goto_9
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V

    .line 481
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_34

    .line 482
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    .line 509
    :cond_f
    :goto_a
    and-int/lit8 v9, p3, 0x20

    if-eqz v9, :cond_12

    .line 514
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_39

    .line 516
    :cond_10
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 517
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 529
    :cond_11
    :goto_b
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    .line 532
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_38

    .line 533
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    .line 554
    :cond_12
    :goto_c
    and-int/lit8 v9, p3, 0x40

    if-eqz v9, :cond_15

    .line 560
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 562
    :cond_13
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 563
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 578
    :cond_14
    :goto_d
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 583
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 584
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    .line 610
    :cond_15
    :goto_e
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_18

    .line 615
    :try_start_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_16

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 617
    :cond_16
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 618
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 627
    :cond_17
    :goto_f
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V

    .line 630
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 631
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9

    .line 651
    :cond_18
    :goto_10
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_1b

    .line 656
    :try_start_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-nez v9, :cond_19

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_45

    .line 658
    :cond_19
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 659
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 671
    :cond_1a
    :goto_11
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    .line 675
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_44

    .line 676
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a

    .line 698
    :cond_1b
    :goto_12
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_1c

    .line 700
    :try_start_e
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b

    .line 706
    :cond_1c
    :goto_13
    :try_start_f
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 710
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v8           #send:I
    :goto_14
    return-void

    .line 244
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    .line 250
    :cond_1e
    :try_start_10
    new-instance v6, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 251
    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_11
    iput-object v2, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 252
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 253
    iput-object p1, v6, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 254
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 706
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    :catchall_0
    move-exception v9

    :goto_15
    monitor-exit v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v9

    .line 270
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v8       #send:I
    :cond_1f
    :try_start_12
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 271
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_2

    .line 295
    :catch_0
    move-exception v3

    .line 296
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_13
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_3

    .line 274
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_20
    :try_start_14
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 275
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_2

    .line 287
    :cond_21
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 289
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_3

    .line 302
    :cond_22
    :try_start_15
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_1

    goto/16 :goto_3

    .line 303
    :catch_1
    move-exception v3

    .line 304
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_16
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_3

    .line 325
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_23
    :try_start_17
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_25

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 326
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .line 328
    .restart local v4       #gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_24

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_24
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_2

    goto/16 :goto_4

    .line 345
    :catch_2
    move-exception v3

    .line 346
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_18
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_4

    .line 330
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_25
    :try_start_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 331
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .line 333
    .restart local v4       #gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_26

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_26
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V

    goto/16 :goto_4

    .line 339
    :cond_27
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .line 340
    .restart local v4       #gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_28

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_28
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_2

    goto/16 :goto_4

    .line 359
    :cond_29
    :try_start_1a
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2a

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 360
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_3

    goto/16 :goto_5

    .line 400
    :catch_3
    move-exception v3

    .line 401
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_1b
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_6

    .line 363
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_2a
    :try_start_1c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 364
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    goto/16 :goto_5

    .line 376
    :cond_2b
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 378
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V

    goto/16 :goto_6

    .line 387
    :cond_2c
    iget v9, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    if-nez v9, :cond_2d

    .line 388
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 393
    :goto_16
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V

    goto/16 :goto_6

    .line 390
    :cond_2d
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v11, 0x1

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_3

    goto :goto_16

    .line 423
    :cond_2e
    :try_start_1d
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_2f

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 424
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_4

    goto/16 :goto_7

    .line 453
    :catch_4
    move-exception v3

    .line 454
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_1e
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_8

    .line 427
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_2f
    :try_start_1f
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 428
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto/16 :goto_7

    .line 439
    :cond_30
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 441
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-boolean v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V

    goto/16 :goto_8

    .line 448
    :cond_31
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_4

    goto/16 :goto_8

    .line 468
    :cond_32
    :try_start_20
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_33

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 469
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_5

    goto/16 :goto_9

    .line 493
    :catch_5
    move-exception v3

    .line 494
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_21
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_a

    .line 472
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_33
    :try_start_22
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 473
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 485
    :cond_34
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 487
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChangedExt(Landroid/os/Bundle;I)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_5

    goto/16 :goto_a

    .line 500
    :cond_35
    :try_start_23
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_6

    goto/16 :goto_a

    .line 501
    :catch_6
    move-exception v3

    .line 502
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_24
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto/16 :goto_a

    .line 520
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_36
    :try_start_25
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_37

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 521
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_7

    goto/16 :goto_b

    .line 550
    :catch_7
    move-exception v3

    .line 551
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_26
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto/16 :goto_c

    .line 524
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_37
    :try_start_27
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 525
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 535
    :cond_38
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 537
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    goto/16 :goto_c

    .line 545
    :cond_39
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_7

    goto/16 :goto_c

    .line 567
    :cond_3a
    :try_start_28
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_3b

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 568
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_8

    goto/16 :goto_d

    .line 606
    :catch_8
    move-exception v3

    .line 607
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_29
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto/16 :goto_e

    .line 572
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_3b
    :try_start_2a
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 573
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    goto/16 :goto_d

    .line 588
    :cond_3c
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 590
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v13, v13, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    goto/16 :goto_e

    .line 600
    :cond_3d
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_8

    goto/16 :goto_e

    .line 620
    :cond_3e
    :try_start_2b
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_3f

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 621
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_9

    goto/16 :goto_f

    .line 647
    :catch_9
    move-exception v3

    .line 648
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_2c
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    goto/16 :goto_10

    .line 623
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_3f
    :try_start_2d
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 624
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    goto/16 :goto_f

    .line 633
    :cond_40
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 635
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V

    goto/16 :goto_10

    .line 642
    :cond_41
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_9

    goto/16 :goto_10

    .line 662
    :cond_42
    :try_start_2e
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_43

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 663
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_a

    goto/16 :goto_11

    .line 694
    :catch_a
    move-exception v3

    .line 695
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_2f
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    goto/16 :goto_12

    .line 666
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_43
    :try_start_30
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v9, v9, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 667
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_11

    .line 679
    :cond_44
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 681
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget-object v11, v11, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v12, v12, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mPhoneType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V

    goto/16 :goto_12

    .line 689
    :cond_45
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_a

    goto/16 :goto_12

    .line 701
    :catch_b
    move-exception v3

    .line 702
    .restart local v3       #ex:Landroid/os/RemoteException;
    :try_start_31
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    goto/16 :goto_13

    .line 708
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v3           #ex:Landroid/os/RemoteException;
    .end local v5           #i:I
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v8           #send:I
    :cond_46
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_14

    .line 706
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_15
.end method

.method public notifyCWDataConnection(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1070
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1074
    const-string v1, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1077
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 6
    .parameter "cfi"

    .prologue
    .line 861
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 877
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 865
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 866
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 867
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 869
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 876
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 875
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 876
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallForwardingChangedExt(ZI)V
    .locals 6
    .parameter "cfi"
    .parameter "phoneType"

    .prologue
    .line 1368
    const-string v3, "notifyCallForwardingChangedExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1399
    :goto_0
    return-void

    .line 1371
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallForwardingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1373
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1374
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 1376
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 1377
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    .line 1385
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    .line 1386
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1387
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 1389
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1390
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 1392
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChangedExt(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1385
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1379
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1380
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    goto :goto_1

    .line 1398
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1382
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1383
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallForwarding:Z

    goto :goto_1

    .line 1393
    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1394
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1398
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 725
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 743
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 729
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 730
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 731
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 732
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 734
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 741
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 740
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 741
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 742
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public notifyCallStateExt(ILjava/lang/String;I)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneType"

    .prologue
    .line 1218
    const-string v3, "notifyCallStateExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1221
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallStateExt: state= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1224
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1226
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 1227
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 1231
    :cond_1
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    .line 1232
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1233
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    .line 1243
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    .line 1244
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1245
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    .line 1248
    :try_start_1
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1250
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1254
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChangedExt(ILjava/lang/String;I)V

    .line 1255
    const-string v3, "TelephonyRegistry"

    const-string v5, "notifyCallStateExt: do callback function. "

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1243
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1235
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p3, v3, :cond_6

    .line 1236
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1237
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    goto :goto_1

    .line 1261
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1239
    :cond_6
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 1240
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallState:I

    .line 1241
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCallIncomingNumber:Ljava/lang/String;

    goto :goto_1

    .line 1256
    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1257
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1261
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1262
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 6
    .parameter "cellLocation"

    .prologue
    .line 1155
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1172
    :goto_0
    return-void

    .line 1158
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1159
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 1160
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1161
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    .line 1163
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1171
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1170
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1171
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCellLocationExt(Landroid/os/Bundle;I)V
    .locals 4
    .parameter "cellLocation"
    .parameter "phoneType"

    .prologue
    .line 1646
    const-string v2, "notifyCellLocationExt()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1667
    :goto_0
    return-void

    .line 1649
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1650
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 1651
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 1652
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    .line 1660
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_5

    .line 1661
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1662
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 1663
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendCellLocationExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    .line 1660
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1654
    .end local v0           #i:I
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    const/4 v2, 0x5

    if-ne p2, v2, :cond_4

    .line 1655
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .line 1666
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1657
    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 1658
    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .line 1666
    .restart local v0       #i:I
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivity(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 880
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 896
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 884
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 885
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 886
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 888
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 895
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 894
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 895
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivityExt(II)V
    .locals 5
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 1402
    const-string v3, "notifyDataActivityExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1432
    :goto_0
    return-void

    .line 1405
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1406
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1407
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 1409
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 1410
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    .line 1418
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    .line 1419
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1420
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    .line 1422
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1423
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 1425
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivityExt(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1418
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1412
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1413
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    goto :goto_1

    .line 1431
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1415
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1416
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataActivity:I

    goto :goto_1

    .line 1426
    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1427
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1431
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 14
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    .line 901
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 959
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 910
    const/4 v12, 0x0

    .line 911
    .local v12, modified:Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 912
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 913
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    if-eq v1, p1, :cond_1

    .line 915
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 916
    const/4 v12, 0x1

    .line 930
    :cond_1
    :goto_1
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 931
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 932
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 933
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 934
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_2

    .line 935
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 937
    const/4 v12, 0x1

    .line 939
    :cond_2
    if-eqz v12, :cond_6

    .line 944
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    .line 945
    .local v13, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    .line 947
    :try_start_1
    iget-object v1, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 949
    :catch_0
    move-exception v10

    .line 950
    .local v10, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 956
    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 920
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 923
    const/4 v12, 0x1

    goto :goto_1

    .line 954
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 956
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 957
    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionExt(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZLjava/lang/String;I)V
    .locals 17
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"
    .parameter "apnCarrier"
    .parameter "phoneType"

    .prologue
    .line 1439
    const-string v2, "notifyDataConnectionExt()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1622
    :goto_0
    return-void

    .line 1443
    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDataConnectionExt: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDataConnectivityPossible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1449
    const/4 v15, 0x0

    .line 1450
    .local v15, modified:Z
    :try_start_0
    invoke-static/range {p11 .. p11}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1451
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    .line 1455
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1456
    const/4 v15, 0x1

    .line 1470
    :cond_1
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 1471
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 1472
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 1473
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 1474
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_2

    .line 1475
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 1477
    const/4 v15, 0x1

    .line 1481
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p11

    if-ne v0, v2, :cond_9

    .line 1482
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_3

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1487
    const/4 v15, 0x1

    .line 1501
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$202(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$302(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 1508
    const/4 v15, 0x1

    .line 1580
    :cond_4
    :goto_3
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt, modified="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    if-eqz v15, :cond_12

    .line 1587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 1588
    .local v16, r:Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    .line 1590
    :try_start_1
    invoke-static/range {p11 .. p11}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1591
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 1593
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChanged(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, p11

    if-ne v0, v2, :cond_f

    .line 1597
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 1599
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExt-GSM(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1612
    :catch_0
    move-exception v13

    .line 1613
    .local v13, ex:Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1619
    .end local v13           #ex:Landroid/os/RemoteException;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1460
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1462
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1463
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1491
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1494
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 1511
    :cond_9
    const/4 v2, 0x5

    move/from16 v0, p11

    if-ne v0, v2, :cond_c

    .line 1513
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt,mSubGsmRegistryInfo.mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt,apnType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 1516
    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExt,state =DATA_CONNECTED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_a

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1521
    const/4 v15, 0x1

    .line 1537
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$202(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$302(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 1541
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDataConnectionExt,mSubGsmRegistryInfo.mDataConnectionNetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 1545
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 1525
    :cond_b
    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExt,state !=DATA_CONNECTED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1528
    const-string v2, "TelephonyRegistry"

    const-string v4, "notifyDataConnectionExt, APN list is empty"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1530
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 1549
    :cond_c
    const/4 v2, 0x2

    move/from16 v0, p11

    if-ne v0, v2, :cond_4

    .line 1550
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_d

    .line 1554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    .line 1555
    const/4 v15, 0x1

    .line 1569
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p2

    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionPossible:Z

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionReason:Ljava/lang/String;

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p6

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$202(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move-object/from16 v0, p7

    #setter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$302(Lcom/android/server/TelephonyRegistry$RegistryInfo;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v2, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v2, v0, :cond_4

    .line 1574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p8

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    .line 1576
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 1559
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    #getter for: Lcom/android/server/TelephonyRegistry$RegistryInfo;->mConnectedApns:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry$RegistryInfo;->access$100(Lcom/android/server/TelephonyRegistry$RegistryInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1562
    const/4 v15, 0x1

    goto :goto_6

    .line 1601
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_f
    const/4 v2, 0x5

    move/from16 v0, p11

    if-ne v0, v2, :cond_10

    .line 1602
    :try_start_4
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 1604
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExt-Sub GSM(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1606
    :cond_10
    const/4 v2, 0x2

    move/from16 v0, p11

    if-ne v0, v2, :cond_5

    .line 1607
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v4, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    move/from16 v0, p11

    invoke-interface {v2, v4, v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChangedExt(III)V

    .line 1609
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback:onDataConnectionStateChangedExt-CDMA(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iget v5, v5, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 1617
    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_11
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1619
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_12
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 1620
    invoke-direct/range {v2 .. v12}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZLjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 1134
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1152
    :goto_0
    return-void

    .line 1151
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataConnectionFailedExt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"
    .parameter "phoneType"

    .prologue
    .line 1625
    const-string v0, "notifyDataConnectionFailedExt()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1643
    :goto_0
    return-void

    .line 1642
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDataConnectionLTE(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    .locals 17
    .parameter "anyDataConnectionState"
    .parameter "apnType"
    .parameter "ipVersion"
    .parameter "state"
    .parameter "apn"
    .parameter "interfaceName"
    .parameter "ipAddress"
    .parameter "gwAddress"
    .parameter "isDataConnectivityPossible"
    .parameter "networkType"
    .parameter "realipstate"
    .parameter "reason"

    .prologue
    .line 2001
    const-string v2, "TelephonyRegistry"

    const-string v3, "[QCTMM] notifyDataConnectionLTE"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    const-string v2, "notifyDataConnection()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2030
    :goto_0
    return-void

    .line 2006
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2007
    :try_start_0
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 2008
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 2009
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 2010
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 2011
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 2012
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 2014
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QCTMM] to phonelistener anyDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",tech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, i:I
    :goto_1
    if-ltz v15, :cond_2

    .line 2016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 2017
    .local v16, r:Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    .line 2019
    :try_start_1
    const-string v2, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QCTMM] r.callback.onDataConnectionStateChanged anyDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move/from16 v0, p1

    move/from16 v1, p10

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2015
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 2021
    :catch_0
    move-exception v14

    .line 2022
    .local v14, ex:Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 2026
    .end local v14           #ex:Landroid/os/RemoteException;
    .end local v15           #i:I
    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v15       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 2027
    invoke-direct/range {v2 .. v13}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChangedLTE(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyMessageWaitingChanged(I)V
    .locals 6
    .parameter "count"

    .prologue
    .line 836
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 858
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 842
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    .line 844
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 845
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 849
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:I

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 857
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 856
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 857
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyMessageWaitingChangedExt(ZI)V
    .locals 6
    .parameter "mwi"
    .parameter "phoneType"

    .prologue
    .line 1333
    const-string v3, "notifyMessageWaitingChangedExt()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1365
    :goto_0
    return-void

    .line 1336
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessageWaitingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1339
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1342
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 1343
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    .line 1351
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_7

    .line 1352
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1353
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 1355
    :try_start_1
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1356
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 1358
    :cond_3
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChangedExt(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1351
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1345
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    const/4 v3, 0x5

    if-ne p2, v3, :cond_6

    .line 1346
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    goto :goto_1

    .line 1364
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1348
    :cond_6
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1349
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-boolean p1, v3, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mMessageWaiting:Z

    goto :goto_1

    .line 1359
    .restart local v1       #i:I
    .restart local v2       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1360
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1364
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .parameter "otaspMode"

    .prologue
    .line 1175
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1191
    :goto_0
    return-void

    .line 1178
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1179
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1180
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1181
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    .line 1183
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1190
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1189
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1190
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 746
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    if-eqz p1, :cond_0

    .line 754
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 755
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 757
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 758
    monitor-exit v4

    goto :goto_0

    .line 776
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 761
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 763
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    if-nez v2, :cond_4

    .line 764
    monitor-exit v4

    goto :goto_0

    .line 767
    :cond_4
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 769
    :try_start_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_3
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 775
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 776
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method

.method public notifyServiceStateExt(Landroid/telephony/ServiceState;I)V
    .locals 5
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 1266
    const-string v2, "notifyServiceStateExt()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1269
    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyServiceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1271
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1272
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 1274
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 1275
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    .line 1283
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_6

    .line 1284
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1285
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v2, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1286
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    .line 1283
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1277
    .end local v0           #i:I
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    const/4 v2, 0x5

    if-ne p2, v2, :cond_5

    .line 1278
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 1289
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1280
    :cond_5
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 1281
    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 1289
    .restart local v0       #i:I
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 7
    .parameter "signalStrength"

    .prologue
    .line 804
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 830
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 808
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 809
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 810
    .local v3, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2

    .line 812
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 817
    :cond_2
    :goto_2
    :try_start_2
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 819
    :try_start_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 820
    .local v1, gsmSignalStrength:I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_3

    const/4 v1, -0x1

    .end local v1           #gsmSignalStrength:I
    :cond_3
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 828
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 813
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_1
    move-exception v0

    .line 814
    .restart local v0       #ex:Landroid/os/RemoteException;
    :try_start_5
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 827
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 828
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 829
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_0
.end method

.method public notifySignalStrengthExt(Landroid/telephony/SignalStrength;I)V
    .locals 7
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    .line 1294
    const-string v4, "notifySignalStrengthExt()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1330
    :goto_0
    return-void

    .line 1297
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1298
    :try_start_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1299
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1301
    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_6

    .line 1302
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1310
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_8

    .line 1311
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1312
    .local v3, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3

    .line 1313
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendSignalStrengthExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V

    .line 1315
    :cond_3
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 1316
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 1319
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 1320
    .local v1, gsmSignalStrength:I
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_4

    const/4 v1, -0x1

    .end local v1           #gsmSignalStrength:I
    :cond_4
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1310
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1304
    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_6
    const/4 v4, 0x5

    if-ne p2, v4, :cond_7

    .line 1305
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSubGsmRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1

    .line 1328
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1307
    :cond_7
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 1308
    :try_start_3
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCdmaRegistryInfo:Lcom/android/server/TelephonyRegistry$RegistryInfo;

    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$RegistryInfo;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_1

    .line 1322
    .restart local v2       #i:I
    .restart local v3       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v0

    .line 1323
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 1328
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1329
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_0
.end method

.method public sendServiceState(Lcom/android/server/TelephonyRegistry$Record;[Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "r"
    .parameter "voiceState"
    .parameter "dataState"

    .prologue
    .line 1205
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-direct {p0, p2}, Lcom/android/server/TelephonyRegistry;->generateServiceStateList([Landroid/telephony/ServiceState;)[Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/server/TelephonyRegistry;->generateServiceStateList([Landroid/telephony/ServiceState;)[Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public sendServiceStateExt(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V
    .locals 3
    .parameter "r"
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 1674
    :try_start_0
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1675
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1677
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    :goto_0
    return-void

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method
